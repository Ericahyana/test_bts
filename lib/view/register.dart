import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_masuk/view/home.dart';

class Registers extends StatefulWidget {
  Registers({Key key}) : super(key: key);

  @override
  _RegistersState createState() => _RegistersState();
}

class _RegistersState extends State<Registers> {
  final email = TextEditingController();
  final user = TextEditingController();
  final pass = TextEditingController();
  var username;

  void registers() async {
    
    // if (user.text =="eri" && pass.text=="123") {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder: (BuildContext context) => new Home(user.text),
    //   ));
    // }


  }

  @override
  void initState() {
    super.initState();
    // registers();
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

    final emails = TextField(
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 15, color: Colors.white,
          decorationColor:
              Color(0XFFFFCC00), //TextFormField title background color change
        )),
        controller: email,
        cursorColor: Colors.white,
        autofocus: false,
        decoration: InputDecoration(
          labelText: "Email",
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

    final registersButton = Padding(
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
                "Registers",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            )),
        onTap: () {
        print("ini Registers");
        registers();
          // Registers.getRegisters(user.text, pass.text, context);
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
                child: Text("Registers",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(fontSize: 40, color: Colors.white)))),
            SizedBox(height: 48.0),
            emails,
            SizedBox(height: 8.0),
            uname,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            registersButton,
          ],
        ),
      ),
    );
  }
}