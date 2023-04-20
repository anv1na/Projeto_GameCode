import 'package:flutter/material.dart';
import 'package:gamecode/view/tela_cadastro.dart';
import 'package:gamecode/view/tela_login.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(207, 147, 217, 1)),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => TelaLogin()),
            );
          },
        ),
      ),
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
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.error,
                  title: 'Oops...',
                  text: 'Funcionalidade ainda não disponível.',
                );
              },
              label: Text('Enviar',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Colors.white)),
              backgroundColor: Color.fromRGBO(41, 182, 246, 1),
            ),
          ),
          SizedBox(height: 10),
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
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaCadastro()),
                  );
                },
                child: Text('Cadastre-se',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color.fromRGBO(156, 156, 156, 1),
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )),
        ]),
      ]),
    );
  }
}
