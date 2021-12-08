import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seven_days_covid19_treatment/component_widget/KhamPhaList/card_khao_sat/survey.dart';
import 'package:seven_days_covid19_treatment/component_widget/alert/register_failed.dart';
import 'package:seven_days_covid19_treatment/screens/registration.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'home.dart';

// Các ô đăng nhập
class LoginFunction extends StatefulWidget {
  const LoginFunction({Key? key}) : super(key: key);

  @override
  _LoginFunctionState createState() => _LoginFunctionState();
}

class _LoginFunctionState extends State<LoginFunction> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool passwordVisibility = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String username = "";
  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
  }

  //login request
  postDataLogin(String? tel, String? pass) async {
    try {
      var response = await http.post(
          Uri.parse("http://lamda.fun/api/auth/login"),
          body: {"tel": tel, "password": pass});

      var json = jsonDecode(response.body);

      if (json["error"] == true || json["error"] != null) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterFailed()));
      } else {
        username = json["user_namedata"]["original"]["user"]["name"].toString();
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('displayName', username);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
      // ignore: empty_catches
    } catch (e) {}
  }
  //register request

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
                height: 300,
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
                              "Chữa trị\nCovid 19\nTại Nhà",
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
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Đăng Nhập",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xFF303030),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Ô NHẬP SỐ ĐIỆN THOẠI
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Số điện thoại',
                        labelStyle: const TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF303030),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        hintText: 'Nhập số điện thoại của bạn....',
                        hintStyle: const TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF2B343A),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: passController,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        labelText: 'Mật khẩu',
                        labelStyle: const TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF303030),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        hintText: 'Nhập mật khẩu...',
                        hintStyle: const TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            16, 24, 24, 24),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: const Color(0xFF95A1AC),
                            size: 22,
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF2B343A),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 5, 16, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Nút đăng nhập
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      backgroundColor: Colors.blueAccent[400],
                      textStyle: const TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {
                      postDataLogin(phoneController.text, passController.text);
                    },
                    child: const Text(
                      'Đăng nhập',
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
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Bạn chưa có tài khoản ?',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF303030),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const registration()));
                    },
                    child: const Text(
                      'Đăng kí ngay',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF2979ff),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Cong viền
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
