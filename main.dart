import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().whenComplete(() {
    print('Completou');
  });
  var db = FirebaseFirestore.instance;

/*
    db.collection('usuarios') // Essa estrutura cria a collection e o document, se o document passado existir faz update
      .doc('001')
      .set({"Nome":"John Keven","Idade":26});
*/
/*
    DocumentReference ref = await db.collection('noticias') // Pegando informações do document inserido na collection
    .add({"Titulo":"Viagem para lua","Conteúdo":"Conteudo teste"}); //com o ADD automaticamente gera o identificador único (DOC)
    print('Ref:' + ref.id);
*/

  //db.collection('usuarios').doc('002').delete(); // Delete Simples passando doc
  //DocumentSnapshot snap = await db.collection('usuarios').doc('001').get(); // Select simples passando doc
  //QuerySnapshot querySnap = await db.collection('usuarios').get();  // Buscando todos registros da collection (tipo um select * )

  /*
  db.collection('usuarios') //Busca todos os registros, e sempre que há alteração no banco o "listen" recebe notificação do firebase e atualiza, evitando a necessidade de ter constantes requisições pro backend
      .snapshots()
      .listen((event) {
    for(DocumentSnapshot item in event.docs){
      print(item.data().toString());
    }
  });
  */

  /* //Incluindo where nas buscas dentro de uma collection
  QuerySnapshot querySnapshot = await db.collection('usuarios')
  //.where('Nome', isEqualTo: 'Akira') sempre que colocar mais de um where ou orderby provavelmente vai precisar de um indice
  .where('Idade', isGreaterThanOrEqualTo: 2)
  .where('Nome', isGreaterThanoOrEqualTo: 'J')
  .where('Nome', isLessThanOrEqualTo: 'J' + '\uf8ff') //Similiar ao % no SQL em buscas varchar
  .orderBy('Idade', descending: false)
  .limit(2)
  .get();

  for(DocumentSnapshot item in querySnapshot.docs){
    var dados = item.data();
    print("Dados: " + dados.toString());
  }
   */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

