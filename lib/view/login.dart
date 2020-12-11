import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_masuk/core/provider/user_viewModel.dart';
import 'package:test_masuk/view/register.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final pass = TextEditingController();
  var username;
 final UserViewModel logins = UserViewModel();
  void cekLogin() async {
    
    
  }

  @override
  void initState() {
    super.initState();
    // cekLogin();
  }

  @override
  Widget build(BuildContext context) {
    // final logo = Hero(
    //   tag: 'hero',
    //   child: CircleAvatar(
    //     backgroundColor: Colors.transparent,
    //     radius: 70.0,
    //     child: Image(
    //       image: AssetImage("assets/icon.png"),
    //     ),
    //   ),
    // );

    final uname = TextField(
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 15, color: Colors.white,
          decorationColor:
              Color(0XFFFFCC00), //TextFormField title background color change
        )),
        controller: user,
        cursorColor: Colors.white,
        autofocus: false,
        decoration: InputDecoration(
          labelText: "User Name",
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          fillColor: Colors.white54,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white54,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white54,
              width: 2.0,
            ),
          ),
        ));

    final password = TextFormField(
        autofocus: false,
        controller: pass,
        obscureText: true,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 15, color: Colors.white,
          decorationColor:
              Color(0XFFFFCC00), //TextFormField title background color change
        )),
        decoration: InputDecoration(
          labelText: "Password",
          icon: Icon(
            Icons.vpn_key,
            color: Colors.white,
          ),
          fillColor: Colors.white54,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white54,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white54,
              width: 2.0,
            ),
          ),
        ));

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: GestureDetector(
        child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xff006400)),
            child: Center(
              child: Text(
                "Login",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            )),
        onTap: () {
        print("ini login");
        print(user.text);
        print(pass.text);
        logins.postLogin(user.text, pass.text, context);
          // login.getLogin(user.text, pass.text, context);
        },
      ),
    );

final regisButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: InkWell(
        child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xff006400)),
            child: Center(
              child: Text(
                "Register",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            )),
        onTap: () {
        print("ini regis");
        Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => Registers()));
          // login.getLogin(user.text, pass.text, context);
        },
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xff228B22),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            
            Center(
                child: Text("Login",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(fontSize: 40, color: Colors.white)))),
            SizedBox(height: 48.0),
            uname,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            SizedBox(height: 8.0),
            regisButton,
          ],
        ),
      ),
    );
  }
}