


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/HomeScreen/HomeScreen.dart';
import 'package:loanapp/NavigationBar/NavBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
Map<int, Color> colors =
{
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  double currentIndex=0;
  final pageController=PageController(
    initialPage: 0,
  );
  MaterialColor blueColor = MaterialColor(0xff3862ff,colors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return Stack(
      children: [
      PageView(

        controller: pageController,
        children: [
         getPage1(),
          getPage2(),
          getPage3(),
        ],
      ),
      Align(
        alignment: Alignment(0,.7),
        child: SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: WormEffect(),

        ),
      )
      ],
    );
  }

  getPage1() {
    return  Stack(children: [
      Image.asset("assets/IntroScreen/1.png"),
      Align(
        alignment: Alignment(0,0.25),
        child: Text("Loans for everyone",style: TextStyle(fontSize: 25,color: blueColor,fontWeight: FontWeight.bold),),
      ),
      Align(
        alignment: Alignment(0,.35),
        child: Text("Multiple loan options to meet your \n everyday financial needs",textAlign: TextAlign.center,),
      )
    ], );
  }

  getPage2() {
    return  Stack(children: [
      Image.asset("assets/IntroScreen/2.png"),
      Align(
        alignment: Alignment(0,0.25),
        child: Text("Easy EMI Payment Options",style: TextStyle(fontSize: 25,color: blueColor,fontWeight: FontWeight.bold),),
      ),
      Align(
        alignment: Alignment(0,.35),
        child: Text("Multiple online playment options \n available",textAlign: TextAlign.center,),
      )
    ], );
  }

  getPage3() {
    return  Stack(children: [
      Image.asset("assets/IntroScreen/3.png",),
      Align(
        alignment: Alignment(0,0.25),
        child: Text("Quick and Convinient Application",style: TextStyle(fontSize: 25,color: blueColor,fontWeight: FontWeight.bold),),
      ),
      Align(
        alignment: Alignment(0,.35),
        child: Text("100% paperless",textAlign: TextAlign.center,),
      ),
      Align(
        alignment: Alignment(0,.50),
        child: Container(
          width: 300,
          child: RaisedButton(
            color: blueColor,
            child: Text("Register",style: TextStyle(color: Colors.white),),
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => NavBar()), (route) => false);
            },
          ),
        ),
      )
    ], );
  }
}
