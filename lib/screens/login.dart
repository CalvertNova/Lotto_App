import 'package:flutter/material.dart';
import 'package:lotto_app/components/elongated_button.dart';
import 'package:lotto_app/components/textfield.dart';

class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();

   final TextEditingController password = TextEditingController();
   
   bool _keepMeLoggedIn =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          //back iconButton and "login title"
          SizedBox(height: 15,),
        SafeArea(
          child: Row(
            children: [
              IconButton(
                onPressed:() {Navigator.pop(context);},
                 icon: Icon(Icons.arrow_back)),
                 SizedBox(width: 135),
                 Text("login",
                 style:
                  TextStyle(
                    fontFamily: "cerapro",
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 40,
          endIndent: 40,
        ),
          //login icon image
          Image.asset("assets/login.png",width: 250,height: 250,),
          //text "Please login to continue"
          Text("Please Login To continue",
          style: TextStyle(
            fontFamily: "cerapro",
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),
          ),
          //email text field
          MyTextfield
          (controller:emailController,
           hintText:"Email or Phone",
           obscureText:false),
           SizedBox(height: 5),
          //password text field
           MyTextfield
          (controller:emailController,
           hintText:"Password",
           obscureText:false),  
          //session management
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Keep Me Logged In",
              style: TextStyle(
                fontFamily: "cerapro"
              ),),
              SizedBox(width: 170,),
              SizedBox(width: 5,),
              Checkbox(value: _keepMeLoggedIn,
               onChanged: (value) {
                setState(() {
                   _keepMeLoggedIn = value!;
                });
               })
            ],
          ),
          //login button
          ElongatedButton(onTap: () {},
           text: "Log In"),
           SizedBox(height: 9,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(child: Text("Forgot Password?"),
              onTap: (){},
              ),
              SizedBox(width: 110,),
               GestureDetector(child: Text("Create New Account"),
               onTap: (){},
               ),
            ],
           ),
           SizedBox(height: 20,),
             Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 40,
          endIndent: 40,
        ),
        Center(child: Text("Or",
        style: TextStyle(
          fontFamily: "cerapro",
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        ),
        SizedBox(height: 20,),
        GestureDetector(
          child: Center(child: Text("Delete Account",
          style: TextStyle(
            fontFamily: "cerapro",
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.red
          ),)),
          onTap: (){},
        )
          //
        ],
      ),

    );
  }
}