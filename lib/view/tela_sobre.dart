import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:gamecode/view/tela_menu.dart';
import 'package:gamecode/view/tela_perfil.dart';

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
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Voltar',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(207, 147, 217, 1),
              ),
              child: Column(children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/vetores-premium/avatar-de-garota-feliz-foto-de-perfil-de-crianca-engracada-isolada-no-fundo-branco_176411-3188.jpg?w=300'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Luiza Helena',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPerfil()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book_sharp),
              title: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaMenu()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sair',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                FlutterExitApp.exitApp(iosForceExit: true);
              },
            ),
          ],
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
