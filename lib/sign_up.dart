import 'package:authentication5_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication5_flutter_app/home.dart';
import 'package:authentication5_flutter_app/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          appBar: AppBar(
            backgroundColor: Color(0xff1f1a30),
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => Welcome()),),
            ),
          ),
          resizeToAvoidBottomPadding: false,
          body: FadeAnimation(1.6,Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff1f1a30)),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text('Please fill the input below here',style: TextStyle(color: Colors.grey,fontSize: 14),),
                ),



                SizedBox(height: 40,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "User Name",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.person,color: Colors.grey,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Phone number",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.phone,color: Colors.grey,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Email Address",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.email,color: Colors.grey,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.email,color: Colors.grey,)
                        ),
                      ),
                    ),
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
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff15f3e3)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                        },
                        child: Center(
                          child: Text("Sign Up", style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold),),
                        ),

                      )
                  ),
                ),

                SizedBox(height: 15,),


                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text.rich(
                      TextSpan(
                          text: "Already have an account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,

                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(fontSize: 16,color: Color(0xff15f3e3),fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                                // single tapped
                              },
                            ),


                          ]
                      )
                  ),
                ),












              ],
            ),

          ),)

      ),
    );
  }
}
