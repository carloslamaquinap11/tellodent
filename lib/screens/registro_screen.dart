import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tellodent/widgets/custom_input_field.dart';

class RegistroScreen extends StatelessWidget{
  
  const RegistroScreen({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
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
              child: Column(
                children: [
                  CustomInputField(labelText: 'Documento de identidad',icon: Icon(Icons.verified_user_sharp)),
                  CustomInputField(labelText: 'Correo',icon: Icon(Icons.email_sharp)),
                  CustomInputField(labelText: 'Celular',icon: Icon(Icons.phone_android_sharp)),
                  CustomInputField(labelText: 'Contraseña',isPassword: true,icon: Icon(Icons.lock_clock_sharp)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}