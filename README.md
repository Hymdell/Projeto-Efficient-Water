# Projeto Efficient Water

## Inicio
<p>Esse é um projeto que desenvolvi como freelance para algumas alunas da escola rural de osório.</p>
<p>O projeto consiste em um app que se comunica com um banco de dados (Firebase) e envia o estado de um botão, Ligado e Desligado, e lê a úmidade do solo que vem do banco de dados.</p>
<p>A umidade é fornecida por um esp32 conectado a um sensor e a um relay que controla uma válvula solenoide.</p>
<p>O intuito do aplicativo é poder controlar a irrigação de uma plantação de qualquer lugar desde que tenha conexão com internet.</p>
<p><b>NOTA:</b> Os dados referente ao banco de dados devem ser alterados caso for usar, o banco de dados que está configurado nos arquivos não existe mais portanto o código não funcionara sem um, o mesmo se aplica para a rede Wifi no ESP32 que deve ser configurada com a rede do local onde o mesmo ficará</p>
<br>

## Partes necesárias
<ul>
  <li>Placa ESP32</li>
  <li>Módulo Relé 4 Canais 5v Arduino</li>
  <li>Sensor De Umidade De Solo Resistente A Corrosão, Arduino</li>
  <li>Valvula Solenoide Arduino</li>
</ul>
<p>Código que deve ser injetado no ESP32</p>

 ```
 #include<WiFi.h>
#include<Firebase_ESP_Client.h>
#include "addons/TokenHelper.h"
#include "addons/RTDBHelper.h"

#define WIFI_SSID "Water32"
#define WIFI_PASSWORD "12345678"
#define API_KEY "AIzaSyAnQnS8Q5DNnTzcieNWQWqVY-WhgHAzRaQ"
#define DATABASE_URL "https://projetoirrigacao-33d69-default-rtdb.firebaseio.com/"

#define pino_sinal_analogico A0
int valor_analogico;
int leitura_db;
const int pino_rele = 23;
unsigned long sendDataPrevMillis = 0;
bool signupOK = false;

FirebaseData fbdo;
FirebaseAuth auth;
FirebaseConfig config;

void setup(){
  
  pinMode (pino_rele, OUTPUT);
  pinMode (pino_sinal_analogico, INPUT);
  digitalWrite (pino_rele, HIGH);
  delay(250);
  
  Serial.begin(115200);
  WiFi.begin(WIFI_SSID,WIFI_PASSWORD);
  Serial.print("Conectando ao Wifi");
  while(WiFi.status() != WL_CONNECTED){
    Serial.print("."); delay(300);
  }
  Serial.println();
  Serial.print("Conectado com o IP: ");
  Serial.println(WiFi.localIP());
  Serial.println();

  config.api_key = API_KEY;
  config.database_url = DATABASE_URL;
  if(Firebase.signUp(&config, &auth, "", "")){
    Serial.println("Login OK");
    signupOK = true;
  }else{
    Serial.printf("%s\n", config.signer.signupError.message.c_str());
  }

  config.token_status_callback = tokenStatusCallback;
  Firebase.begin(&config, &auth);
  Firebase.reconnectWiFi(true);
}

void loop(){
  if(Firebase.ready() && signupOK && (millis() - sendDataPrevMillis > 5000 || sendDataPrevMillis == 0)){
    sendDataPrevMillis = millis();
    valor_analogico = analogRead(pino_sinal_analogico);

    if(Firebase.RTDB.getInt(&fbdo, "Estado")){
        leitura_db = fbdo.intData();
        Serial.println(); Serial.print(valor_analogico);
        Serial.print(" - Lido com sucesso de: " + fbdo.dataPath());
        Serial.println(" (" + fbdo.dataType() + ")");
        
      }else{
        Serial.println("FALHA: " + fbdo.errorReason());
      }

    if (leitura_db == 1){
      
      digitalWrite (pino_rele, LOW); //ativa por 10sec, mandando 1 pra variável "leitura_db"
      delay(10000);
      digitalWrite (pino_rele, HIGH);
      delay(250);
    }

    if (leitura_db == 0){
       
      digitalWrite (pino_rele, HIGH); //desativa mandando 0 pra variável "leitura_db"
      delay(1000);
        
    }
    
    if(valor_analogico > 2047 && valor_analogico < 4096){  
      
      if(Firebase.RTDB.setString(&fbdo, "Umidade", "Solo Seco")){
        Serial.println(); Serial.print(valor_analogico);
        Serial.print(" - Salvo com sucesso em: " + fbdo.dataPath());
        Serial.println(" (" + fbdo.dataType() + ")");
        digitalWrite(pino_rele, LOW);
        delay(10000);
        
      }else{
        Serial.println("FALHA: " + fbdo.errorReason());
      }
    }

    if(valor_analogico > 1023 && valor_analogico < 2047){

      if(Firebase.RTDB.setString(&fbdo, "Umidade", "Solo Moderadamente Úmido")){
        Serial.println(); Serial.print(valor_analogico);
        Serial.print(" - Salvo com sucesso em: " + fbdo.dataPath());
        Serial.println(" (" + fbdo.dataType() + ")");
        digitalWrite(pino_rele, HIGH);
        delay(1000);
      }else{
        Serial.println("FALHA: " + fbdo.errorReason());
      }
    }

    if(valor_analogico > 0 && valor_analogico < 1023){
      if(Firebase.RTDB.setString(&fbdo, "Umidade", "Solo Úmido")){
        Serial.println(); Serial.print(valor_analogico);
        Serial.print(" - Salvo com sucesso em: " + fbdo.dataPath());
        Serial.println(" (" + fbdo.dataType() + ")");
        digitalWrite(pino_rele, HIGH);
        delay(1000);
      }else{
        Serial.println("FALHA: " + fbdo.errorReason());
      }
    }
  }
}
 ```
