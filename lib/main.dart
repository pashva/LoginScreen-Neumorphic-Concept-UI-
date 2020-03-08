import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool tapped=false;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Color(0xFF2d2d2d),
      body: Stack(
        children: <Widget>[

          Positioned(
            bottom: 65,
            left: 80,
            child: Row(

              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(MdiIcons.gmail,color: Colors.red[300],),

                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                          colors: [
                            Color(0xFF2d2d2d),
                            Color(0xFF2d2d2d),
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF202020),
                            offset: Offset(-5, -5),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Color(0xFF3b3b3b),
                            offset: Offset(10, 10),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(MdiIcons.facebook,color: Colors.lightBlue[200],),

                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                          colors: [
                            Color(0xFF2d2d2d),
                            Color(0xFF2d2d2d),
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF202020),
                            offset: Offset(-5, -5),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Color(0xFF3b3b3b),
                            offset: Offset(10, 10),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(MdiIcons.google,color: Colors.white,),

                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                          colors: [
                            Color(0xFF2d2d2d),
                            Color(0xFF2d2d2d),
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF202020),
                            offset: Offset(-5, -5),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Color(0xFF3b3b3b),
                            offset: Offset(10, 10),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                ),

              ],
            ),
          ),
          Positioned(
            top: 270,
            left: 60,
            child: AvatarGlow(
              startDelay: Duration(milliseconds: 1000),
              glowColor: Colors.grey,
              endRadius: 110.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor:Colors.grey ,
                  child: Container(
                    color: Colors.grey,
                    child:Text("",style: TextStyle(
                        color: Colors.black,
                        fontFamily: "BlackOpsOne",
                        fontSize: 20,
                        shadows: [
                          Shadow(
                              color: Colors.grey,
                              blurRadius: 20,
                              offset: Offset(5,5)

                          )
                        ]
                    ),),
                  ),
                  radius: 60.0,

                ),
              ),
              shape: BoxShape.circle,
              animate: true,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF202020),
                          offset: Offset(-5, -5),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Color(0xFF3b3b3b),
                          offset: Offset(10, 10),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),]
                ),
                child: TextField(
                  onChanged: (value){

                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.black,),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Email"
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    boxShadow: [
                    BoxShadow(
                    color: Color(0xFF202020),
                      offset: Offset(-5, -5),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                     BoxShadow(
                      color: Color(0xFF3b3b3b),
                      offset: Offset(10, 10),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),]
                ),
                child: TextField(
                  onChanged: (value){

                  },
                  obscureText: true,
                  decoration: InputDecoration(

                      prefixIcon: Icon(Icons.lock,color: Colors.black,),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Email"
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: width*0.75,
                  child: Center(
                    child: Text(
                      "Login",style: GoogleFonts.autourOne(
                      fontSize: 20,
                      color: Colors.grey

                    )
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                          colors: [
                            Color(0xFF2d2d2d),
                            Color(0xFF2d2d2d),
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF202020),
                            offset: Offset(-5, -5),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Color(0xFF3b3b3b),
                            offset: Offset(10, 10),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: width*0.75,
                child: Center(
                  child: Text(
                      "Signup",style: GoogleFonts.autourOne(
                      fontSize: 20,
                      color: Colors.grey

                  )
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-1.0, -4.0),
                        end: Alignment(1.0, 4.0),
                        colors: [
                          Color(0xFF2d2d2d),
                          Color(0xFF2d2d2d),
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF202020),
                          offset: Offset(-5, -5),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Color(0xFF3b3b3b),
                          offset: Offset(10, 10),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                    ]),
              ),
              SizedBox(
                height: 100,
              ),

              
            ],
          ),
            
        ),
          Positioned(
              left: 50,
              top: 530,
              child: Text("Forgot Password?",style: GoogleFonts.biryani(
                color: Colors.grey
              ),)),
        ]
      ),
    );
  }
}
