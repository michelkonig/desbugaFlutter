import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        leadingWidth: 100,
        title: const Text('Olá, Rafael Souza 2'),
        actions: const [
          Icon(Icons.help),
          Icon(Icons.notifications),
        ],
        backgroundColor: Colors.pink,
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          )
        ),
      ),
    );
  }
}

  // _text (){
  // return Column(
  //   children: <Widget>[
  //     Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         _iconHelp(),
  //       text: Text("Olá, Rafael Souza"),
  //     )
  //   ]
  // )
  // }
  //
  // _iconHelp() {
  //   return Image.asset("assets/images/pic1.png",
  //     width: 16,
  //     height: 16,
  //   );
  // }