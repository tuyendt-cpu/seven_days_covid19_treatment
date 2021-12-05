import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_covid19_treatment/screen/verification.dart';

class QuenMatKhauWidget extends StatefulWidget {
  const QuenMatKhauWidget({Key? key}) : super(key: key);

  @override
  _QuenMatKhauWidgetState createState() => _QuenMatKhauWidgetState();
}

class _QuenMatKhauWidgetState extends State<QuenMatKhauWidget> {
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
        backgroundColor: Color(0xFF4B39EF),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.chevron_left_rounded,
          color: Colors.white,
          size: 32,
        ),
        title: Text(
          'Nhập số điện thoại của bạn',
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
      backgroundColor: Color(0xFF4B39EF),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFF4B39EF),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/background.jpg'),
          ),
        ),
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
                    color: Color(0x98FFFFFF),
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
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Color(0xFF3124A1),
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
                  backgroundColor: Colors.black,
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
                          builder: (context) => VerificationWidget()));
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
