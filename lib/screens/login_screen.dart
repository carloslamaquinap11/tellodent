
import 'package:tellodent/router/app_routes.dart';
import 'package:tellodent/screens/screens.dart';
import 'package:tellodent/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);
  
  final String email = "";
  final String password = "";
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    
    // final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    
    final Map<String,String> formValues = {
      'correo':'micorreo@gmail.com',
      'password':'123123123'
    };


    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 71, 255, 0.78),
            Color.fromRGBO(55, 255, 207, 1)
          ]
        )
      ),
      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Center(
          
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height*0.45,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              
              decoration: const BoxDecoration(
                color: Color.fromRGBO(210, 234, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                // key: myFormKey,
                child: Column(
                  children: [
                    Text(' '),
                    Divider(),
                    Image(image: AssetImage('assets/logo_tellodent.png')),
                    Divider(),
                    Divider(),
                    CustomInputField(labelText: 'Correo',keyboardType: TextInputType.emailAddress),
                    Divider(),
                    CustomInputField(labelText: 'Contraseña',isPassword: true),
                    Divider(),
                    Text('¿Olvidé mi contraseña?',style: TextStyle(color: Colors.blueAccent)),
                    Divider(),
                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        fixedSize: MaterialStateProperty.all(Size(200, 30))
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      child: Text('Ingresar')
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿No tienes una cuenta?  ',style: TextStyle(color: Colors.black38)),
                        Text('Regístrate',style: TextStyle(color: Colors.blueAccent))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    //   body: Container(
    //     height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     decoration: const BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [
    //             Color.fromRGBO(0, 71, 255, 0.78),
    //             Color.fromRGBO(55, 255, 207, 1)
    //           ]
    //         ),
          
    //     ),
    //     child: SingleChildScrollView(
    //       // child: Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               const Text('Correo'),
    //               const Text('Correo'),
    //               const Text('Correo'),
    //               const Text('Correo'),
    //               const Text('Correo'),
    //               // TextFormField()
    //             ]
    //         ),
    //     ),
    //   ),
    );
  }
}

