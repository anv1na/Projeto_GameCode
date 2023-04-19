import 'package:flutter/material.dart';
import '../model/login.dart';

class TelaSenha extends StatefulWidget {
  const TelaSenha({super.key});

  @override
  State<TelaSenha> createState() => _TelaSenhaState();
}

class _TelaSenhaState extends State<TelaSenha> {
  bool mostrar_senha = false;
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Image.asset('lib/images/logo.png', height: 1),
        ),
        Column(children: [
          Text(
            'GameCode',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold,
                height: 0.3),
          ),
          Text('Aprenda brincando',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                  fontWeight: FontWeight.normal)),
        ]),
        Expanded(
          child: redefinirSenha(),
        )
      ]),
    );
  }

  redefinirSenha() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Container(
            width: 472,
            alignment: Alignment.center,
            child: Text('Esqueceu a senha?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Color.fromRGBO(0, 0, 0, 1)))),
        SizedBox(height: 10),
        SizedBox(
          width: 472,
          height: 55,
          child: //CAMPO DE TEXTO
              TextField(
            controller: txtEmail,
            decoration: InputDecoration(
              labelText: 'Digite seu Email',
              labelStyle: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular((10))),
            ),
          ),
        ),
        SizedBox(height: 10),
        Column(children: <Widget>[
          SizedBox(
            width: 640.0,
            height: 62.0,
            child: FloatingActionButton.extended(
              onPressed: () {
                // Respond to button press
              },
              label: Text('Enviar',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Colors.white)),
              backgroundColor: Color.fromRGBO(41, 182, 246, 1),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Não tem conta?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color.fromRGBO(97, 97, 97, 1),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 5,
              ),
              Text('Cadastre-se',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color.fromRGBO(156, 156, 156, 1),
                      fontWeight: FontWeight.bold)),
            ],
          )),
        ]),
        SizedBox(height: 10),
      ]),
    );
  }
}
