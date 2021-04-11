import 'package:emc/view/title_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  await Firebase.initializeApp();
  runApp(MaterialApp(home: TitlePage()));
}
