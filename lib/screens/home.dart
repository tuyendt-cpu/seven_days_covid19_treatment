import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_fitness/card_fitness.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_nutrient/card_nutrient.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_khao_sat/tham_gia_khao_sat.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/banner_quay_vong.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seven_days_covid19_treatment/component_widget/web_view.dart';

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
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
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
              SizedBox(
                height: 150.0,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WebViewContainer(
                                      "https://covid19.gov.vn/tich-cuc-dieu-tri-f0-tai-nha-171211203095000452.htm")));
                        },
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              Image.network(
                                'https://covid19.qltns.mediacdn.vn/354844073405468672/2021/12/3/8cv4-1638489308855-1638499755134-1638499755256961581274.jpg',
                                fit: BoxFit.cover,
                              ),
                              const Text('Tích cực điều trị F0 tại nhà'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WebViewContainer(
                                      "https://nld.com.vn/suc-khoe/huong-dan-moi-nhat-ve-truong-hop-f0-duoc-dieu-tri-tai-nha-20211202150501748.htm")));
                        },
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              Image.network(
                                'https://covid19.qltns.mediacdn.vn/zoom/600_315/354844073405468672/2021/12/2/avatar1638443423491-16384434238371341883895-0-0-500-800-crop-16384434354861504987256.jpg',
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                  'Hướng dẫn mới nhất về trường hợp F0 được điều trị tại nhà '),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WebViewContainer(
                                      "https://hcdc.vn/category/van-de-suc-khoe/covid19/tai-lieu-truyen-thong/huong-dan-goi-cham-soc-suc-khoe-tai-nha-cho-nguoi-f0-phien-ban-16-9d692c99f55ff1da0cce2014e681f21b.html")));
                        },
                        child: SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Image.network(
                                'https://image.thanhnien.vn/300x210/uploaded/hanhnb/2021_09_03/z2732707609704_73c88ed38df3ff6a04fc929b066955fc_lovk.jpg',
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                  'Gói chăm sóc sức khỏe tại nhà cho người F0'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WebViewContainer(
                                      "https://nld.com.vn/suc-khoe/y-te-tu-nhan-tham-gia-cham-soc-f0-2021120620274544.htm")));
                        },
                        child: SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Image.network(
                                'https://nld.mediacdn.vn/291774122806476800/2021/12/6/14-hinh-chot-1638792338702513435853.jpg',
                                fit: BoxFit.cover,
                              ),
                              const Text('Y tế tư nhân tham gia chăm sóc F0'),
                            ],
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
    );
  }
}
