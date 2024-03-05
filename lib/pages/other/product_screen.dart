import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mentaledge_ui/utils/constants.dart';
import 'package:mentaledge_ui/widgets/complain_widget.dart';
import 'package:mentaledge_ui/widgets/medicine_widget.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = 'product';
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// === app bar
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Constants.greyColor
                  ),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {
                         Navigator.of(context).pop();
                  },)),
              title: Text("Session info", style: TextStyle(
                fontWeight: Constants.medium,
                fontSize: Constants.s20,
                color: Colors.black
              ),),
              centerTitle: true,
              actions: [
                Container(
                  width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Constants.greyColor
                    ),
                    child: Icon(Icons.edit_outlined, color: Colors.black,)),              ],
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Constants.bgGreyColor,
                ),
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.symmetric(vertical: 12),
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
                  ],
                )),
            /// ==== title
            Text(
              "Complaints",
              style: TextStyle(
                fontFamily: Constants.fontFamily,
                fontSize: Constants.s20,
                fontWeight: Constants.medium,
              ),
            ),

            /// ==== Choice chip
            Container(
              width: double.infinity,
              child: Wrap(
                children: [
                  ComplainWidget(),
                  ComplainWidget(),
                  ComplainWidget(),
                  ComplainWidget(),
                  ComplainWidget(),
                ],
              ),
            ),

            /// ==== title
            Text(
              "Medicines",
              style: TextStyle(
                fontFamily: Constants.fontFamily,
                fontSize: Constants.s20,
                fontWeight: Constants.medium,
              ),
            ),

            /// ====
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                    color: Constants.bgGreyColor,
                    borderRadius: BorderRadius.circular(20)),
                child: ListView.separated(itemBuilder: (context, index) {
                  return MedicineWidget();
                },
                itemCount: 5, separatorBuilder: (BuildContext context, int index) {
                  return DottedLine();
                  },
                ),
              ),
            ),
            /// ==== title
            Text(
              "General Information",
              style: TextStyle(
                fontFamily: Constants.fontFamily,
                fontSize: Constants.s20,
                fontWeight: Constants.medium,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Constants.bgGreyColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Jason is 21 years old boy showing all symptoms of anxiety disorder. H e takes medicines but no betterment observed.",
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    fontSize: Constants.s14,
                    fontWeight: Constants.regular,
                    color: Constants.txtGreyColor
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

/// https://www.youtube.com/watch?v=Pganyj1dVVU
/// https://www.youtube.com/watch?v=Gco6zF_ygSc
/// https://www.youtube.com/watch?v=uv74SZ5MX5Q
