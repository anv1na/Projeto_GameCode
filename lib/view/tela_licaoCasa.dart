import 'package:flutter/material.dart';
import 'package:gamecode/view/tela_menu.dart';
import 'package:gamecode/view/tela_sobre.dart';
import 'package:quickalert/quickalert.dart';

class TelaLicaoCasa extends StatefulWidget {
  const TelaLicaoCasa({Key? key}) : super(key: key);

  @override
  _TelaLicaoCasaState createState() => _TelaLicaoCasaState();
}

class _TelaLicaoCasaState extends State<TelaLicaoCasa> {
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
              MaterialPageRoute(builder: (context) => TelaMenu()),
            );
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      'Lição de Casa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Matéria: Português',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(207, 147, 217, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 70,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 70,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 70,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.error,
                            title: 'Oops...',
                            text: 'Funcionalidade ainda não disponível.',
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.book, color: Colors.blue),
                            SizedBox(width: 5),
                            Text(
                              'Relembre o conteúdo',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color(0xffcfdcf4),
                                  title: Text("Dica",
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.bold)),
                                  icon: Icon(Icons.lightbulb,
                                      color: Color(0xfffda809)),
                                  content: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Text(
                                      "No trecho não encontramos as próprias palavras da personagem.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lightbulb, color: Color(0xfffda809)),
                            SizedBox(width: 5),
                            Text(
                              'Dica',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(height: 20),
                    Text(
                      'O trecho abaixo refere-se a um discurso de tipo:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                        width: 2, color: Color.fromRGBO(207, 147, 217, 1)),
                  ),
                  child: Text.rich(
                    textAlign: TextAlign.justify,
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '"Capitu segredou-me que a escrava desconfiara, e ia talvez contar às outras. Novamente me intimou que ficasse, e retirou-se; eu deixei-me estar parado, pregado, agarrado ao chão."',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        WidgetSpan(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Dom Casmurro, Machado de Assis.',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0.7,
                          ),
                        ),
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                      ),
                      SizedBox(height: 15),
                      //Card Acessar Aulas
                      Container(
                        child: Card(
                          color: Color(0xffdf83f0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              //Cadastrar rota
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Direto',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          color: Color(0xffdf83f0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () {
                              //Cadastrar rota
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Indireto',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          color: Color(0xffdf83f0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () {
                              //Cadastrar rota
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Indireto Livre',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          color: Color(0xffdf83f0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () {
                              //Cadastrar rota
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Nenhuma das alternativas',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
