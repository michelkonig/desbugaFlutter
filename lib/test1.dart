import 'package:flutter/material.dart';
import 'onbording_start.dart';
import 'pages/HomePage.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
        elevation: 0,
        actions: [
          _textButton(context, 'Pular', OnbordingStart())
        ],
      ),
      body: _body(context),
    );
  }
}
  _body(context){
    return Container(
      color: const Color.fromRGBO(241, 245, 249, 1),
        padding: const EdgeInsets.all(16) ,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _pageView(),
              _text(),
              _buttons(context)
            ]
        ),
    );
}
   _pageView(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink.shade300,
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.only(top:24, bottom:24),
      height: 275,
      padding: const EdgeInsets.only(right:16),
      child: PageView(
        children: <Widget> [
            _img(),
        ],
      ),
    );
  }

  _buttons(BuildContext context){
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button(context, "<  Anterior", const OnbordingStart()),
          _button(context, "Próxima  >", const HomePage())
        ],
        )
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
            backgroundColor: Colors.pink,
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
  _img() {
    return Image.asset("assets/images/pic1.png",
      width: 266,
      height: 250,
    );
  }
  _text(){
    return Container(
      padding: const EdgeInsets.all(16) ,
          child: const Column(
              children: <Widget>[
                Text('Está pronto para Desbugar a sua vida financeira?',
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