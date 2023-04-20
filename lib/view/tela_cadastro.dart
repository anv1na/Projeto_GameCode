import 'package:flutter/material.dart';
import 'package:gamecode/model/escolha_ocupacao.dart';
import 'package:gamecode/view/tela_login.dart';
import 'package:gamecode/view/tela_menu.dart';
import '../model/cadastro.dart';
import 'package:quickalert/quickalert.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/logo.png', height: 200),
            SizedBox(height: 16),
            Text(
              'GameCode',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold,
                height: 0.3,
              ),
            ),
            Text(
              'Aprenda brincando',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Color.fromRGBO(0, 0, 0, 0.8),
                fontWeight: FontWeight.normal,
              ),
            ),
            cadastrar(),
          ],
        ),
      ),
    );
  }

  Widget cadastrar() {
    final escolhaOcupacao = ['Estudo', 'Ensino', 'Outro'];
    return Column(
      children: [
        SizedBox(height: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Olá, é um prazer te receber aqui! ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Cadastro',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'O que você faz?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 180,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey[400]!,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButton<String>(
                      value: escolhaOcupacao[0],
                      onChanged: (String? escolhaOcupacao) {
                        // Implementar ação ao selecionar uma opção
                      },
                      items: escolhaOcupacao
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Qual a sua idade?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 170,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      labelStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Qual o seu e-mail?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 350,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      labelStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Confirme o seu e-mail:',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 350,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      labelStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Digite sua senha:',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 350,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      labelStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Confirme sua senha:',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 350,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      labelStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  width: 640.0,
                  height: 62.0,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        text: 'Cadastro realizado!',
                      );
                      Future.delayed(Duration(milliseconds: 2000), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaMenu()),
                        );
                      });
                    },
                    label: Text(
                      'Confirmar cadastro',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Color.fromRGBO(41, 182, 246, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
