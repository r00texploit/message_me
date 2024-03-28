// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class ChatScreen extends StatefulWidget {
//   static const String screenRoute = 'chat_screen';

//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   // final _firestore = FirebaseFirestore.instance;
//   final _auth = FirebaseAuth.instance;
//   late User signedInUser;
//   String? messageText;

//   @override
//   void initState() {
//     super.initState();
//     getCurrentUser();
//   }

//   void getCurrentUser() {
//     try {
//       final user = _auth.currentUser;
//       if (user != null) {
//         signedInUser = user;
//         print(signedInUser.email);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.yellow[900],
//         title: Row(
//           children: [
//             Image.asset('images/logo.png', height: 25),
//             SizedBox(width: 10),
//             Text('دردشة ميزات')
//           ],
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               _auth.signOut();
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.close),
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(
//                     color: Colors.orange,
//                     width: 2,
//                   ),
//                 ),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'إرســال',
//                       style: TextStyle(
//                         color: Colors.blue[800],
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: TextField(
//                       textAlign: TextAlign.right,
//                       onChanged: (value) {
//                         messageText = value;
//                       },
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(
//                           vertical: 10,
//                           horizontal: 20,
//                         ),
//                         hintText: '... أكتب رسالتك',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
