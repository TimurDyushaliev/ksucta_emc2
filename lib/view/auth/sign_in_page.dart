// import 'package:emc/view/home_page.dart';
// import 'package:flutter/material.dart';

// class SignInPage extends StatelessWidget {
//   const SignInPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Введите логин:',
//               labelStyle: TextStyle(color: Colors.black),
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide(color: Colors.grey)),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide(color: Colors.black)),
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Введите пароль:',
//               labelStyle: TextStyle(color: Colors.black),
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide(color: Colors.grey)),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide(color: Colors.black)),
//             ),
//           ),
//           MaterialButton(
//               color: Colors.black,
//               child: Text(
//                 'Войти',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () => Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => HomePage()))),
//         ],
//       ),
//     );
//   }
// }
