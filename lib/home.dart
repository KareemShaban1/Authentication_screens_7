import 'package:authentication5_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication5_flutter_app/Animation/app_clipper.dart';
import 'package:authentication5_flutter_app/sign_in.dart';
import 'package:authentication5_flutter_app/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: FadeAnimation(1.6,Container(

            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff1f1a30)),



            child:Column(


              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Container(
                  height: 250,
                  width: 420,

                  decoration: BoxDecoration(

                    image: DecorationImage(
                      image: ExactAssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover,
                    ),


                  ),


                ),



                SizedBox(height: 150,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Container(
                      height: 45,
                      width: 250,
                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff15f3e3)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                        },
                        child: Center(
                          child: Text("Sign In", style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold),),
                        ),

                      )
                  ),
                ),

                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Container(
                      height: 45,
                      width: 250,
                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff15f3e3)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                        },
                        child: Center(
                          child: Text("Sign Up", style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold),),
                        ),

                      )
                  ),
                ),








                // SizedBox(height: 50),


              ],
            ),

          ),)

      ),
    );
  }
}
