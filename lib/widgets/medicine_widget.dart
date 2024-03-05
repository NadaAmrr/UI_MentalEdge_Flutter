import 'package:flutter/material.dart';
import 'package:mentaledge_ui/utils/constants.dart';
class MedicineWidget extends StatelessWidget {
  const MedicineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
                style: TextStyle(
                    fontWeight: Constants.medium,
                    fontSize: Constants.s16,
                    fontFamily: Constants.fontFamily),
                text: "Alprazolm",
                children: [
                  TextSpan(
                    text: " ( ",
                    style: TextStyle(
                        fontWeight: Constants.medium,
                        fontSize: Constants.s16,
                        fontFamily: Constants.fontFamily),
                  ),
                  TextSpan(
                    text: "Xanax",
                    style: TextStyle(
                        fontWeight: Constants.regular,
                        fontSize: Constants.s16,
                        fontFamily: Constants.fontFamily,
                        color: Constants.txtGreyColor),
                  ),
                  TextSpan(
                    text: " ) ",
                    style: TextStyle(
                        fontWeight: Constants.medium,
                        fontSize: Constants.s16,
                        fontFamily: Constants.fontFamily),
                  ),
                ]),
          ),
          Text("50ml tablet", style: TextStyle(
              color: Constants.txtGreyColor,
              fontSize: Constants.s14,
              fontFamily: Constants.fontFamily,
              fontWeight: Constants.regular
          ),)
        ],
      ),
    );
  }
}
