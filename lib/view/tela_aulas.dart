import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:gamecode/view/tela_menu.dart';
import 'package:gamecode/view/tela_perfil.dart';
import 'package:gamecode/view/tela_sobre.dart';

class TelaAulas extends StatefulWidget {
  const TelaAulas({Key? key}) : super(key: key);

  @override
  _TelaAulasState createState() => _TelaAulasState();
}

class _TelaAulasState extends State<TelaAulas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aulas de Matemática"),
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
              leading: Icon(Icons.star_border),
              title: Text(
                'Sobre',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSobre()),
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
                  margin: EdgeInsets.only(bottom: 20),
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/vetores-premium/avatar-de-garota-feliz-foto-de-perfil-de-crianca-engracada-isolada-no-fundo-branco_176411-3188.jpg?w=300'),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Luiza Helena | 7ª Série',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'Matéria: Matemática',
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
                    ],
                  ),
                ),
                Text(
                  'Conteúdos',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Selecione um conteúdo para aprender mais',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
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
                      //Card Razão e Proporção
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {
                            //Cadastrar rota
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://u7.uidownload.com/vector/894/72/vector-golden-ratio-colored-template-vector-svg-ai.jpg'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Razão e Proporção',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Número Inteiros
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://us.123rf.com/450wm/peterhermesfurian/peterhermesfurian1701/peterhermesfurian170100008/68419297-n%C3%BAmeros-de-colores-flotantes-y-superpuestos-como-s%C3%ADmbolo-de-numerolog%C3%ADa-o-inundaci%C3%B3n-de-datos-diez.jpg?ver=6'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Números Inteiros e Plano Cartesiano',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Operações
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://lh5.googleusercontent.com/qdalvfrHXTbOxmvHPvNVtct22W3LLj-C9WP4TeBJ_kCUKB8vlwOSoB9AIakIkq8ozzhlJfoY43mNpm1qtO6Fknq3S3n8EAIbCV3p0pf9OAFymeYw2UZfdkb_Oc4ugz9Q49QCTBKjjxle'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Operações com números racionais',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Ângulos
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://static.vecteezy.com/system/resources/previews/000/139/901/non_2x/geometry-and-mathematics-tool-set-vector.jpg'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Ângulos, Simetria e Construções Geométricas',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Regularidades
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://img.freepik.com/vetores-premium/padrao-perfeito-de-matematica-em-estilo-de-linha_111409-395.jpg'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Regularidades e Padrões',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Expressões Algébricas
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/polinomios-sao-expressoes-algebricas-formadas-por-monomios-577d4ba5c2781.jpg'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Expressões Algébricas',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Card Equações
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://static.todamateria.com.br/upload/eq/ua/equacao-do-1-grau-com-uma-incognita-exercicios-og.jpg'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Equações de 1º grau',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Sólidos geométricos
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.purple.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: NetworkImage(
                                    'https://s3.static.brasilescola.uol.com.br/be/2022/06/formas-geometricas.jpg'),
                                fit: BoxFit.none,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Sólidos Geométricos',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
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
