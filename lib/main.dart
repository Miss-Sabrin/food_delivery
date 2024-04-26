import 'package:flutter/material.dart';
import 'package:food_delivery/pages/onbord.dart';
void main() async{
  
// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: BottomNav(),
      home: Onboard(),

    );
  }
}