import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_covid19_treatment/component_widget/movement_description.dart';
import 'package:seven_days_covid19_treatment/screens/videoplayer.dart';
import 'package:video_player/video_player.dart';

class CacDongTacWidget extends StatefulWidget {
  const CacDongTacWidget({Key? key}) : super(key: key);

  @override
  _CacDongTacWidgetState createState() => _CacDongTacWidgetState();
}

class _CacDongTacWidgetState extends State<CacDongTacWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tập Thể Dục'),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close))
        ],
      ),
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //Các Động Tác
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Các Động Tác',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            //Động tác 1
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              child: mo_ta_dong_tac(
                title: "Động tác 1: Hít Thở",
                subtitle: "Giúp phổi của bạn khỏe hơn",
              ),
            ),
            //Động tác 2
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: mo_ta_dong_tac(
                    title: "Động tác 2",
                    subtitle: "Giúp khỏe hơn cho phổi của bạn")),
            //Động tác 3
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: mo_ta_dong_tac(
                    title: "Động tác 3",
                    subtitle: "Giúp khỏe hơn cho phổi của bạn")),
            //Bắt đầu tập luyện
            Padding(
              padding: EdgeInsets.fromLTRB(100, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      backgroundColor: Colors.blueAccent,
                      textStyle: const TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 3,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoPlayerScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Bắt đầu tập luyện',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
