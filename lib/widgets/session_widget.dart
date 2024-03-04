import 'package:flutter/material.dart';
import 'package:mentaledge_ui/utils/constants.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Constants.bgGreyColor,
        ),
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "${Constants.imgPath}/person2.png",
              width: 60,
              height: 60,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jack Holly",
                      style: TextStyle(
                        fontFamily: Constants.fontFamily,
                        fontSize: Constants.s16,
                        fontWeight: Constants.medium,
                      ),
                    ),
                    Text(
                      "20 Years old , depression",
                      style: TextStyle(
                        color: Constants.txtGreyColor,
                        fontFamily: Constants.fontFamily,
                        fontSize: Constants.s12,
                        fontWeight: Constants.regular,
                      ),
                    ),
                    Text(
                      "02 sept 2023 , 02;00pm",
                      style: TextStyle(
                        color: Constants.txtInfoColor,
                        fontFamily: Constants.fontFamily,
                        fontSize: Constants.s14,
                        fontWeight: Constants.regular,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Checkbox(
              value: true,
              onChanged: (newBool) {},
              activeColor: Constants.bgMainColor,
            ),
          ],
        ));
  }
}
