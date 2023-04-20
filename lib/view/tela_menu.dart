import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:gamecode/view/tela_aulas.dart';
import 'package:gamecode/view/tela_licaoCasa.dart';
import 'package:gamecode/view/tela_perfil.dart';
import 'package:gamecode/view/tela_sobre.dart';
import 'package:quickalert/quickalert.dart';

class TelaMenu extends StatefulWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
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
            icon: const Icon(Icons.exit_to_app_rounded),
            tooltip: 'Sair',
            onPressed: () {
              FlutterExitApp.exitApp(iosForceExit: true);
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
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TelaPerfil()),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/vetores-premium/avatar-de-garota-feliz-foto-de-perfil-de-crianca-engracada-isolada-no-fundo-branco_176411-3188.jpg?w=300'),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Luiza Helena',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '7ª Série',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    primary: false,
                    crossAxisCount: 2,
                    children: <Widget>[
                      //Card Acessar Aulas
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAulas()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://static.vecteezy.com/system/resources/thumbnails/001/925/924/small_2x/study-literature-concept-free-vector.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Acessar Aulas',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card acessar matérias
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              title: 'Oops...',
                              text: 'Funcionalidade ainda não disponível.',
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://st2.depositphotos.com/7128044/9938/v/450/depositphotos_99381360-stock-illustration-science-icons-flat-style.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Acessar Matérias',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Lição de Casa
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaLicaoCasa()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://static.vecteezy.com/system/resources/thumbnails/004/938/802/small_2x/illustration-of-an-open-book-a-lamp-pencils-with-pens-and-a-cup-of-tea-learning-and-reading-concept-vector.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Lição de Casa',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Sobre
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelaSobre(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/images/logo.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Sobre',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
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
