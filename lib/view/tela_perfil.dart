import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gamecode/main.dart';
import 'package:gamecode/view/tela_sobre.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({Key? key}) : super(key: key);

  @override
  _TelaPerfilState createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  String userName = 'Luiza Helena';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        backgroundColor: const Color.fromRGBO(207, 147, 217, 1),
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          buildTop(),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              userName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Escolha seu Avatar',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 5),
          Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              //Avatares
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 348,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          InkWell(
                            onTap: () {
                              // Ação ao clicar no botão 1
                            },
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/254/254427.png',
                              ),
                              radius: 28,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Ação ao clicar no botão 1
                            },
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://img.freepik.com/vetores-premium/avatar-de-crianca-redonda-engracado-retrato-de-oculos_176411-5400.jpg?w=2000',
                              ),
                              radius: 28,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Ação ao clicar no botão 1
                            },
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://img.freepik.com/vetores-premium/avatar-de-menino-rindo-foto-de-perfil-de-crianca-engracada_176411-3537.jpg',
                              ),
                              radius: 28,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Ação ao clicar no botão 2
                            },
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://png.pngtree.com/png-vector/20220608/ourmid/pngtree-smiling-girl-portrait-kid-avatar-png-image_4915476.png',
                              ),
                              radius: 28,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Ação ao clicar no botão 3
                            },
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://png.pngtree.com/png-vector/20220608/ourmid/pngtree-girl-face-portrait-kid-avatar-png-image_4902163.png',
                              ),
                              radius: 28,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Ação ao clicar no botão 3
                            },
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/181/181669.png',
                              ),
                              radius: 28,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(height: 20),
          Text(
            'Escolha sua Imagem de Fundo',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 5),
          //Imagem de fundo
          Container(
            width: 348,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  InkWell(
                    onTap: () {
                      // Ação ao clicar no botão 1
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/254/254427.png',
                      ),
                      radius: 28,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Ação ao clicar no botão 1
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/fantasy-red-dragon-floating-islands_107791-14626.jpg?w=2000',
                      ),
                      radius: 28,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Ação ao clicar no botão 1
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-vector/cartoon-prince-princess-with-castle-background_43633-6418.jpg',
                      ),
                      radius: 28,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Ação ao clicar no botão 2
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/flat-design-travel-background_23-2149401275.jpg',
                      ),
                      radius: 28,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Ação ao clicar no botão 3
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://t4.ftcdn.net/jpg/01/00/63/63/360_F_100636316_nqoeIZvljphSiAe0FlM85UudKkdCGWmt.jpg',
                      ),
                      radius: 28,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Ação ao clicar no botão 3
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/181/181669.png',
                      ),
                      radius: 28,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ]),
              ],
            ),
          ),
          //Lições feitas
          SizedBox(height: 20),
          Text(
            'Seu Progesso',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lições Feitas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                width: 5,
                height: 10,
              ),
              Container(
                width: 200,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 70,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Aulas Completadas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                width: 5,
                height: 10,
              ),
              Container(
                width: 180,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 140,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://i.pinimg.com/736x/f0/44/5f/f0445f38aaabc37fb7295214f62341cc--free-vector-illustration-vector-illustrations.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => Container(
        width: profileHeight,
        height: profileHeight,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade800,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://img.freepik.com/vetores-premium/avatar-de-garota-feliz-foto-de-perfil-de-crianca-engracada-isolada-no-fundo-branco_176411-3188.jpg?w=300'),
            )),
      );

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }
}
