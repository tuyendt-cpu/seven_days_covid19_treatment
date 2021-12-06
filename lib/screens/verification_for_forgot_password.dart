import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_covid19_treatment/screens/forgot_password.dart';
import 'package:seven_days_covid19_treatment/screens/login.dart';
import 'package:seven_days_covid19_treatment/screens/new_password.dart';
import 'package:seven_days_covid19_treatment/screens/registration.dart';

class VerificationForPassWordWidget extends StatefulWidget {
  const VerificationForPassWordWidget({Key? key}) : super(key: key);

  @override
  _VerificationForPassWordWidgetState createState() =>
      _VerificationForPassWordWidgetState();
}

class _VerificationForPassWordWidgetState
    extends State<VerificationForPassWordWidget> {
  TextEditingController? phoneNumberController;
  bool _loadingButton = false;
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
          titleSpacing: 10,
          backgroundColor: Colors.blueAccent,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => forgot_password(),
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
            'Nhập Mã OTP ',
            style: TextStyle(
              fontFamily: 'Lexend Deca',
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //Text field để điền mã xác minh
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: phoneNumberController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nhập mã 6 chữ số ...',
                      labelStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: '000000',
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
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                //Nút xác minh
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
                              builder: (context) => new_password()));
                    },
                    child: const Text(
                      'Xác minh',
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
        ));
  }
}
