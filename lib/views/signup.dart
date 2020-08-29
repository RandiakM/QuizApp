import 'package:QuizApp/views/signin.dart';
import 'package:QuizApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  String name, email, password;

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
                validator: (val){ return val.isEmpty ? "Enter Name!" : null; },
                decoration: InputDecoration(
                    hintText: "Name"
                ),
                onChanged: (val){
                  name = val;
                },
              ),
              SizedBox(height: 6,),
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
              GestureDetector(
                onTap: (){
                  
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account ? ", style: TextStyle(fontSize: 16),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => SignIn()
                      ));
                    },
                      child: Text("Sign In", style: TextStyle(fontSize: 16, decoration: TextDecoration.underline),))
                ],
              ),

              SizedBox(height: 80,),
            ],),
        ),
      ),
    );
  }
}
