import 'package:QuizApp/views/signup.dart';
import 'package:QuizApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val){ return val.isEmpty ? "Enter correct Email!" : null; },
                decoration: InputDecoration(
                  hintText: "Email"
                ),
                onChanged: (val){
                  email = val;
                },
              ),
              SizedBox(height: 6,),
              TextFormField(
                validator: (val){ return val.isEmpty ? "Enter correct Password!" : null; },
                decoration: InputDecoration(
                    hintText: "Password"
                ),
                onChanged: (val){
                  email = val;
                },
              ),
              SizedBox(height: 24,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 48,
                child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account ? ", style: TextStyle(fontSize: 16),),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => SignUp()
                        ));
                      },
                      child: Text("Sign Up", style: TextStyle(fontSize: 16, decoration: TextDecoration.underline),))
                ],
              ),

              SizedBox(height: 80,),
          ],),
        ),
      ),
    );
  }
}
