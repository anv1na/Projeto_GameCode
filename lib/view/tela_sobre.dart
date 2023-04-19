import 'package:flutter/material.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  _TelaSobreState createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre"),
        backgroundColor: const Color.fromRGBO(207, 147, 217, 1),
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/images/logo.png', height: 200),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Informações sobre o projeto',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            sobre(),
          ],
        ),
      ),
    );
  }
}

Widget sobre() {
  return Column(children: [
    SizedBox(height: 5),
    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Tema Escolhido: ',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(width: 2),
      Text(
        'Educação',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontWeight: FontWeight.normal,
        ),
      ),
    ]),
    SizedBox(height: 5),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(children: [
        Text(
          'Objetivo do Aplicativo:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color.fromRGBO(0, 0, 0, 0.8),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 2),
        Text(
          'A proposta do aplicativo GameCode é abordar aspectos pedagógicos e tecnológicos, bem como sua adequação às necessidades dos usuários, alunos do ensino fundamental, pais e professores, visando avaliar sua efetividade no processo de ensino e aprendizagem.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color.fromRGBO(0, 0, 0, 0.8),
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Desenvolvido por',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color.fromRGBO(0, 0, 0, 0.8),
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
          ),
          child: ClipOval(
            child: Image.asset(
              'lib/images/eu.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'Ana Beatriz Viana Ferraz',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color.fromRGBO(0, 0, 0, 0.8),
            fontWeight: FontWeight.normal,
          ),
        ),
      ]),
    ),
  ]);
}
