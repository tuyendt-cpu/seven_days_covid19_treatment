import 'package:flutter/material.dart';

class mo_ta_dong_tac extends StatelessWidget {
  const mo_ta_dong_tac({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Cây timeline
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Color(0xFFDBE2E7),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 2,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFDBE2E7),
                ),
              )
            ],
          ),
        ),
        //Title và subtitle động tác
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title động tác
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF151B1E),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //Subtitle động tác
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        subtitle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
