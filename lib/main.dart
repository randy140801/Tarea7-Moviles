import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: perfil(),
    );
  }
}

class perfil extends StatefulWidget {
  const perfil({Key? key}) : super(key: key);

  @override
  _perfilState createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  String imgurl = "https://randomuser.me/api/portraits/men/32.jpg";
  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String fecha = DateFormat('dd-MM-yyyy').format(date);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundImage: NetworkImage(imgurl),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Randy Frias",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              "Mobile Developer",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Text(
              fecha,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Randy Frias
//2019-8464
