import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_covid19_treatment/screens/login.dart';
import 'package:seven_days_covid19_treatment/screens/registration.dart';
import 'package:seven_days_covid19_treatment/screens/verification.dart';
import 'package:seven_days_covid19_treatment/screens/verification_for_forgot_password.dart';

class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  _forgot_passwordState createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  TextEditingController? phoneNumberController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginFunction(),
              ),
            );
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Text(
          'Xác minh số điện thoại',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //Field nhập số điện thoại
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: phoneNumberController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Số điện thoại của bạn....',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0x98FFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                ),
                style: const TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            //Nút nhận mã OTP
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: TextButton(
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              VerificationForPassWordWidget()));
                },
                child: const Text(
                  'Nhận mã OTP',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
