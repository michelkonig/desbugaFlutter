import 'package:flutter/material.dart';
import 'onbording.dart';

class OnbordingStart extends StatelessWidget {
  const OnbordingStart({super.key});

  // _body(context),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/pic0.png"),
                  fit: BoxFit.cover,),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _text1(),
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _text2(),
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buttons(context),
                      ]
                  ),
                ],
              ),
            )
            // ),
          ],
        ),
    );
  }
}

  _text1(){
    return Container(
      padding: const EdgeInsets.only(top:250),
      child: const Column(
          children: <Widget>[
            Text('Desbuga',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 46,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ]
      ),
    );
  }
  _text2(){
    return Container(
      padding: const EdgeInsets.only(top:32, bottom:300),
      child: const Column(
          children: <Widget>[
            Text('Solução para controle financeiro e investimentos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            )
          ]
      ),
    );
  }
  _buttons(BuildContext context){
    return Column(
      children: <Widget>[
            _button(context, "Começar", Onbording())
      ],
    );
  }

  _button(context, String text, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(241, 81, 120, 1),
          fixedSize: const Size(150, 44),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  _textButton(context, String text, Widget page){
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page));
      },
      style: TextButton.styleFrom(
        fixedSize: const Size(150, 44),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.pink,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
