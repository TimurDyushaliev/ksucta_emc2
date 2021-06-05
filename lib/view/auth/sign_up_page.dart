// import 'package:emc/media_query_size_provider/media_query_size_provider.dart';
// import 'package:emc/view/sign_in_page.dart';
// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
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
//           SizedBox(
//             height: MediaQuerySizeProvider.height(context) * 0.025,
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
//           SizedBox(
//             height: MediaQuerySizeProvider.height(context) * 0.025,
//           ),
//           MaterialButton(
//               color: Colors.black,
//               child: Text(
//                 'Зарегистрироваться',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () {}),
//           SizedBox(
//             height: MediaQuerySizeProvider.height(context) * 0.05,
//           ),
//           GestureDetector(
//             child: Text('Уже есть аккаунт?'),
//             onTap: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => SignInPage())),
//           ),
//         ],
//       ),
//     );
//   }
// }
