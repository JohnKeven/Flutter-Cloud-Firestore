# Cloud Firestore
Instalação do Firebase e comandos básicos de CRUD no Firestore

Primeiro para configurar o Firebase no Flutter (após baixar o google-services.json que é disponibilizado na criação do projeto), basta colocar o arquivo dentro da pasta <projeto>/android/app. Após isso configurar o build.gradle da pasta APP e o da pasta android.
- Na pasta APP incluir o plugin e o multiDexEnabled true
- Na pasta raiz do android colocar o classpath com o endereço, ex: classpath "com.google.gms:google-services:4.3.15" </br>
</br>
Importações no pubspec.yaml para que tenha acesso aos diversos recursos disponibilizados pelo Firebase: </br>
</br>
- firebase_core </br>
- cloud_firestore </br>
- firebase_storage </br>
- firebase_auth </br>
</br>
Por fim, basta chamar WidgetsFlutterBinding.ensureInitialized() e Firebase.initializeApp().
