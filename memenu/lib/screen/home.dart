import 'package:calolator/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  //นำHomeScreen ไปใส่ใน home: Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/image/logo.png"), // รูปภาพ
            SizedBox(
              //สร้างบัญชีผู้ใช้ใหม่
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.add),
                label: Text("สร้างบัญชีผู้ใช้", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              //สร้างบัญชีผู้ใช้ใหม่
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.login),
                label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
