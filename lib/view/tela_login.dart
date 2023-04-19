import 'package:flutter/material.dart';
import '../model/login.dart';
import 'package:quickalert/quickalert.dart';

//import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
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
          child: logar(),
        )
      ]),
    );
  }

  logar() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          width: 472,
          height: 35,
          child: //CAMPO DE TEXTO
              TextField(
            controller: txtEmail,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular((10))),
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 472,
          height: 35,
          child: TextField(
            controller: txtSenha,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular((10))),
              suffixIcon: GestureDetector(
                child: Icon(mostrar_senha == false
                    ? Icons.visibility_off
                    : Icons.visibility),
                onTap: () {
                  setState(() {
                    mostrar_senha = !mostrar_senha;
                  });
                },
              ),
            ),
            obscureText: mostrar_senha == false ? true : false,
          ),
        ),
        SizedBox(height: 5),
        Container(
            width: 472,
            alignment: Alignment.topRight,
            child: Text('Esqueceu a senha?',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 1)))),
        SizedBox(height: 10),
        Column(children: <Widget>[
          SizedBox(
            width: 640.0,
            height: 62.0,
            child: FloatingActionButton.extended(
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.info,
                  text: 'Login realizado!',
                );
              },
              label: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
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
        Column(children: [
          Text('Ao entrar no app, você concorda com os nossos',
              style: TextStyle(
                  color: Color.fromRGBO(156, 156, 156, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal)),
          Text('Termos de Uso e Política de Privacidade',
              style: TextStyle(
                  color: Color.fromRGBO(97, 97, 97, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
        ]),
      ]),
    );
  }
}
