import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text(""),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:test_masuk/core/provider/tracking_viewModel.dart';
// import 'package:test_masuk/view/widget/list_tracking.dart';

// class Home extends StatefulWidget {
//   final String username;
//   Home(this.username, {Key key});

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final spool = TextEditingController();
//   bool track = false;
//   String spll;
//   @override
//   void initState() {
//     super.initState();
//     spool.text = "490-FD-1001-K140-SPL003";
//     // cekLogin();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff228B22),
//       body: SingleChildScrollView(
//               child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 25,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 16, right: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "Tracking - (" + widget.username + ")",
//                         style: GoogleFonts.openSans(
//                             textStyle: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold)),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       Text(
//                         "Dashboard",
//                         style: GoogleFonts.openSans(
//                             textStyle: TextStyle(
//                                 color: Color(0xffa29aac),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w600)),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               height: 3,
//               color: Colors.green,
//               width: MediaQuery.of(context).size.width,
//             ),

//             SizedBox(
//               height: 2,
//             ),
//             // GridDashboard()
//             Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.74,
//                   child: TextField(
//                       style: GoogleFonts.montserrat(
//                           textStyle: TextStyle(
//                         fontSize: 15, color: Colors.white,
//                         decorationColor: Color(
//                             0XFFFFCC00), //TextFormField title background color change
//                       )),
//                       controller: spool,
//                       cursorColor: Colors.white,
//                       autofocus: false,
//                       decoration: InputDecoration(
//                         labelText: "Spool",
//                         icon: Icon(
//                           Icons.track_changes,
//                           color: Colors.white,
//                         ),
//                         fillColor: Colors.white54,
//                         filled: true,
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25.0),
//                           borderSide: BorderSide(
//                             color: Colors.white54,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25.0),
//                           borderSide: BorderSide(
//                             color: Colors.white54,
//                             width: 2.0,
//                           ),
//                         ),
//                       )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: InkWell(
//                     child: Container(
//                         height: 50,
//                         width: 80,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(15)),
//                             color: Color(0xff006400)),
//                         child: Center(
//                           child: Text(
//                             "Track",
//                             style: GoogleFonts.montserrat(
//                                 textStyle:
//                                     TextStyle(fontSize: 20, color: Colors.white)),
//                           ),
//                         )),
//                     onTap: () {
//                       print("ini cari track");
//                       setState(() {
//                         spll= spool.text;
//                       });
//                     },
//                   ),
//                 ),
//               ],
//             ),
            
//                SizedBox(
//                             height: 590.0,
//                             child:
//                   FutureBuilder(
//                     future: DTViewModel().getData(spll),
//                     builder: (context, snapshot) {
//                       if (snapshot.hasError) print(snapshot.error);

//                       var data = snapshot.data;

//                       return data != null
//                           ? ListTrack(data)
//                           : Center(
//                               child: Text("Tidak Ada Data !!",
//                                   style: GoogleFonts.montserrat(
//                                     fontSize: 15,
//                                   )),
//                             );
//                     },
//                   ),
//               ),
              
            
//           ],
//         ),
//       ),
//     );
//   }
// }