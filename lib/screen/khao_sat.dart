import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_covid19_treatment/screen/homepage.dart';

class khao_sat extends StatefulWidget {
  const khao_sat({Key? key}) : super(key: key);

  @override
  _khao_satState createState() => _khao_satState();
}

class _khao_satState extends State<khao_sat> {
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
          title: const Text(
            'Khảo sát tình trạng hàng ngày',
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: const Icon(Icons.close))
          ],
        ),
        body: ListView(
          children: <Widget>[
            //Tiêu đề: Khảo sát nhé
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Hello, Khảo sát hàng ngày nhé!',
              style: TextStyle(
                fontFamily: 'Lexend Deca',
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            )),
            //Bạn chỉ mất 3 phút để chúng tôi theo dõi sức khỏe cho bạn
            Center(
              child: Text('Mất 30 giây để hoàn thành!'),
            ),
            SizedBox(
              height: 10,
            ),
            //Bạn có các triệu chứng nào sau đây
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
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
            Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[1]),
            Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[2]),
            Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[3]),
            Divider(indent: 20, endIndent: 20, thickness: 2),
            buildListTile(context, trieu_chung[4]),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
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
              padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
              child: Row(
                children: [
                  Text(
                    'Nồng độ Oxy',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),

            //Ô điền nồng độ Oxy
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            )
          ],
        ));
  }

  Widget buildListTile(BuildContext context, String title) {
    bool _isClick = _clicked.contains(title);
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      title: Text(title),
      trailing: Icon(
        _isClick ? Icons.check_box_outline_blank : Icons.check_box,
        color: _isClick ? Colors.red : null,
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
