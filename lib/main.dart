import 'package:flutter/material.dart';
import 'package:gamecode/view/tela_aulas.dart';
import 'package:gamecode/view/tela_cadastro.dart';
import 'package:gamecode/view/tela_menu.dart';
import 'package:gamecode/view/tela_perfil.dart';
import 'package:gamecode/view/tela_sobre.dart';
import 'view/tela_esqueceuSenha.dart';
import 'view/tela_login.dart';
import 'view/tela_cadastro.dart';
import 'view/tela_sobre.dart';
import 'view/tela_menu.dart';
import 'view/tela_perfil.dart';
import 'view/tela_aulas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'GameCode',
    home: TelaAulas(),
  ));
}
