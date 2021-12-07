import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_fitness/card_fitness.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_nutrient/card_nutrient.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_khao_sat/tham_gia_khao_sat.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/banner_quay_vong.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Covid 19 Care',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipPath(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 40,
                    top: 50,
                    right: 20,
                  ),
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF3383CD),
                        Color(0xFF11249F),
                      ],
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/virus.png"),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 0),
                      Expanded(
                        child: Stack(
                          //
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/Drcorona.svg",
                              width: 230,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                            const Positioned(
                              top: 10,
                              left: 180,
                              child: Text(
                                "Xin chào,\nNguyễn Văn A",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  SizedBox(
                    width: 400,
                    height: 250,
                    child: Carousel(
                      key: null,
                    ),
                  ),
                ],
              ),
              //Text: Khám phá
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 20),
                      child: Text(
                        'Khám Phá',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //Tập thể dục và dinh dưỡng
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    //Card tập thể dục
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: card_fitness(),
                      ),
                    ),
                    //Card chế độ dinh dưỡng
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: card_nutrient(),
                      ),
                    ),
                    //Card tham gia khao sat
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: card_tham_gia_khao_sat(),
                      ),
                    ),
                  ],
                ),
              ),
              //Text: Cẩm nang y tế
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                      child: Text(
                        'Cẩm nang y tế',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5F5F5),
                          child: Text(
                            'Bài báo 1',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5F5F5),
                          child: Text(
                            'Bài báo 2',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5F5F5),
                          child: Text(
                            'Bài báo 3',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Theme.of(context).textSelectionTheme.cursorColor,
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   items: <BottomNavigationBarItem>[
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
