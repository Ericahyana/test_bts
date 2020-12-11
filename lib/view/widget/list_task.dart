// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'package:test_masuk/core/model/detailTracking.dart';
// import 'package:test_masuk/core/model/tracking.dart';
// // import 'package:test_masuk/core/provider/tracking_viewModel.dart';
// import 'package:test_masuk/view/detail.dart';

// class ListTrack extends StatefulWidget {
//   final Tracking track;
//   ListTrack(this.track, {Key key});

//   @override
//   _ListTrackState createState() => _ListTrackState();
// }

// class _ListTrackState extends State<ListTrack> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         itemCount: widget.track.data.length,
//         itemBuilder: (BuildContext context, int i) {
//           return GestureDetector(
//             onTap: () {
//               if (widget.track.data[i].processId == "010" ||
//                   widget.track.data[i].processId == "020" ||
//                   widget.track.data[i].processId == "030" ||
//                   widget.track.data[i].processId == "041" ||
//                   widget.track.data[i].processId == "042") {
//                 print("pindah");
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (BuildContext context) => new DetTrack(
//                       widget.track.data[i].spoolNo,
//                       widget.track.data[i].processId),
//                 ));
//               }
              
//             },
//             child: Container(
//                 margin: EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey,
//                       ),
//                     ],
//                     borderRadius: BorderRadius.all(Radius.circular(10))),
//                 child: Row(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           alignment: Alignment.centerLeft,
//                           margin: EdgeInsets.only(
//                               top: 5, left: 10, right: 10, bottom: 5),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(left: 2),
//                                 child: Text(
//                                     widget.track.data[i].location.replaceRange(
//                                         12,
//                                         widget.track.data[i].location.length,
//                                         '...'),
//                                     style: GoogleFonts.montserrat(
//                                       fontSize: 20,
//                                     )),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.all(2),
//                                 padding: EdgeInsets.all(4),
//                                 decoration: BoxDecoration(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10)),
//                                     color: Colors.pinkAccent),
//                                 child: Text(widget.track.data[i].dateModified,
//                                     style: GoogleFonts.montserrat(
//                                         fontSize: 12,
//                                         textStyle:
//                                             TextStyle(color: Colors.white))),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.all(2),
//                                 padding: EdgeInsets.all(4),
//                                 decoration: BoxDecoration(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10)),
//                                     color: Colors.orangeAccent),
//                                 child: Text(widget.track.data[i].spoolNo,
//                                     style: GoogleFonts.montserrat(
//                                         fontSize: 12,
//                                         textStyle:
//                                             TextStyle(color: Colors.white))),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                             margin: EdgeInsets.only(right: 2),
//                             child: Text(
//                               widget.track.data[i].process,
//                             )),
//                         Container(
//                             margin: EdgeInsets.only(right: 2),
//                             child: Text(
//                               widget.track.data[i].name,
//                             )),
//                       ],
//                     ),
//                   ],
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 )),
//           );
//         });
//   }
// }
