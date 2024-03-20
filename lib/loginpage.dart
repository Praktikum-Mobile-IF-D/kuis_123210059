import 'package:flutter/material.dart';
import 'package:dtbuku059/homepage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  
  final userController = TextEditingController();
  final passController = TextEditingController();

  Widget _usernameField(){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
        child: TextFormField(
            enabled: true,
            controller: userController,
            decoration: const InputDecoration(
                hintText:  'Email',
                contentPadding: EdgeInsets.all(8.0), 
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.blue),
                )
            )
        )
    );
  }  

  Widget _passwordField(){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
        child: TextFormField(
            enabled: true,
            obscureText: true,
            controller: passController,
            decoration: const InputDecoration(
                hintText:  'Password',
                contentPadding: EdgeInsets.all(8.0), 
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.blue),
                )
            )
        )
    );
  }  

  Widget _loginButton(BuildContext context){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: () {
                if(userController.text == "restiana@gmail.com" && passController.text == "restiana" ){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const HomePage();
                   }));
                }
            },
            child: const Text('Login'),
        ),
    );
  }  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: const Text("Login Page"),
            ),
            body: Column(
                children: [
                    _usernameField(),
                    _passwordField(),
                    _loginButton(context),
                ],
            ),
        ),
    );

  }
    
}
