import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/component_widget/alert/register_failed.dart';
import 'package:seven_days_covid19_treatment/screens/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: camel_case_types
class survey extends StatefulWidget {
  const survey({Key? key}) : super(key: key);

  @override
  _surveyState createState() => _surveyState();
}

// ignore: camel_case_types
class _surveyState extends State<survey> {
  postDataServey(String? tel, String? pass) async {
    try {
      var response = await http.post(
          Uri.parse("http://lamda.fun/api/auth/login"),
          body: {"tel": tel, "password": pass});

      var json = jsonDecode(response.body);

      if (json["error"] == true || json["error"] != null) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterFailed()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  // ignore: non_constant_identifier_names
  final List<String> trieu_chung = <String>[
    'Ho',
    'Đau Đầu',
    'Chóng Mặt',
    'Đau Mỏi Cơ Bắp',
    'Mệt Mỏi'
  ];
  final _clicked = <String>{};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Khảo sát tình trạng hàng ngày',
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close))
          ],
        ),
        body: ListView(
          children: <Widget>[
            //Bạn có các triệu chứng nào sau đây
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
              child: Row(
                children: const [
                  Text(
                    'Bạn có các triệu chứng nào sau đây: ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),

            buildListTile(context, trieu_chung[0]),
            const Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[1]),
            const Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[2]),
            const Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[3]),
            const Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[4]),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Row(
                children: const [
                  Text(
                    'Thông tin thêm',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            //Nồng độ Oxy
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
              child: Row(
                children: const [
                  Text(
                    'Nồng độ Oxy (%)',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),

            //Ô điền nồng độ Oxy
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),

            //Ghi chú
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
              child: Row(
                children: const [
                  Text(
                    'Ghi chú',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),

            //Ô điền ghi chú
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 5, 16, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Nút cập nhật
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      'Cập nhật',
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
        ));
  }

  Widget buildListTile(BuildContext context, String title) {
    bool _isClick = _clicked.contains(title);
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      title: Text(title),
      trailing: Icon(
        _isClick ? Icons.check_box : Icons.check_box_outline_blank,
        color: _isClick ? Colors.blueAccent : null,
      ),
      onTap: () {
        setState(() {
          if (_isClick) {
            _clicked.remove(title);
          } else {
            _clicked.add(title);
          }
        });
      },
    );
  }
}
