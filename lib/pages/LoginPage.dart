import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "";
  String _password = "";
  bool isClicked = false; 

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {}); 
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(
          username: _username, 
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Halaman Login"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // Untuk memusatkan widget di layar
          children: [
            // Menambahkan gambar dari assets
            //Image.asset(
             // 'assets/images/illustration.png',  // Path ke gambar
              //width: 200,  // Ukuran gambar (opsional)
              //height: 200, // Ukuran gambar (opsional)
           // ),
            SizedBox(height: 20),  // Memberikan jarak antara gambar dan field input
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          _username = value;
        },
        decoration: InputDecoration(
          hintText: 'Masukkan username',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          _password = value;
        },
        decoration: InputDecoration(
          hintText: 'Masukkan password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (_username == "septi" && _password == "123") {
            setState(() {
              text = "Login sukses";
              isClicked = true;
            });
            _navigateToHome();  // Navigasi ke HomePage setelah login sukses
          } else {
            setState(() {
              text = "Login gagal";
              isClicked = false;
            });
          }
          print("Login: $isClicked");
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }
}
