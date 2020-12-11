import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_masuk/core/model/ceklish.dart';


class ListCheck extends StatefulWidget {
  final Ceklish cek;
  ListCheck(this.cek, {Key key});

  @override
  _ListCheckState createState() => _ListCheckState();
}

class _ListCheckState extends State<ListCheck> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: widget.cek.data.length,
        itemBuilder: (BuildContext context, int i) {
          return GestureDetector(
            child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(
                              top: 5, left: 10, right: 10, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 2),
                                child: Text(
                                    widget.cek.data[i].name,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.pinkAccent),
                                child: Text("id : "+widget.cek.data[i].id.toString(),
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        textStyle:
                                            TextStyle(color: Colors.white))),
                              ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 2),
                            child: Text(
                              widget.cek.data[i].checklistCompletionStatus.toString(),
                            )),
                        
                      ],
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                )),
          );
        });
  }
}
