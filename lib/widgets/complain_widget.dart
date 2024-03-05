
import 'package:flutter/material.dart';
import 'package:mentaledge_ui/utils/constants.dart';
class ComplainWidget extends StatelessWidget {
  const ComplainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
      margin: EdgeInsets.only(right: 12, top: 7.5, bottom: 7.5),
      decoration: BoxDecoration(
        color: Constants.bgMainColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text( "Complaints",
        style: TextStyle(
            color: Colors.white,
            fontFamily: Constants.fontFamily,
            fontSize: Constants.s14,
            fontWeight: Constants.regular
        ),
      ),
    );
  }
}
