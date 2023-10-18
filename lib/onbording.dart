import 'package:aula02/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onbording extends StatefulWidget {
  @override
  _Onbording createState() => _Onbording();
}

class _Onbording extends State<Onbording> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        3,
        (index) {
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 245, 249, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _pageView('assets/images/pic1.png'),
                      _text('Está pronto para Desbugar a sua vida financeira?')
                    ]
                ),
              ),
            );
          }
          else if (index == 1){
            return Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 245, 249, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _pageView('assets/images/pic2.png'),
                      _text('Organize as suas finanças em um único aplicativo')
                    ]
                ),
              ),
            );
          }
          else {
            return Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 245, 249, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _pageView('assets/images/pic3.png'),
                      _text('Aprenda a poupar de forma simples e divertida')
                    ]
                ),
              ),
            );
          }
        });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
        elevation: 0,
        centerTitle: true,
        title: const Text('Desbuga'),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
        ),
        ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              SizedBox(
                height: 500,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16)
                  // child: Text(
                  //   'Arraste para contínuar',
                  //   style: TextStyle(color: Colors.black54),
                  // ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const WormEffect(
                  activeDotColor: Color.fromRGBO(241, 81, 120, 1),
                  dotColor: Color.fromRGBO(243, 181, 198, 1),
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(16)
              ),
              _buttons(context)
            ],
          ),
        ),
      ),
    );
  }

  _pageView(String asset){
    return Container(
      decoration: const BoxDecoration(
        //color: Colors.pink,
        //shape: BoxShape.circle,
      ),
      //margin: const EdgeInsets.only(top:24, bottom:24),
      height: 300,
      //padding: const EdgeInsets.only(right:16),
      child: PageView(
        children: <Widget> [
          _img(asset),
        ],
      ),
    );
  }

  _img(String asset) {
    return Image.asset(asset,
      width: 266,
      height: 250,
    );
  }

  _text(String text){
    return Container(
      padding: const EdgeInsets.all(16) ,
      child: Column(
          children: <Widget>[
            Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "Entrar", const HomePage())
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
          backgroundColor: Color.fromRGBO(241, 81, 120, 1),
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
}