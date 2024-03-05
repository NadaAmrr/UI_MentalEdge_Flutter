import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentaledge_ui/pages/other/product_screen.dart';
import 'package:mentaledge_ui/utils/constants.dart';
import 'package:mentaledge_ui/widgets/session_widget.dart';

class MainTab extends StatelessWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: heightScreen * 0.05,
          left: widthScreen * 0.05,
          right: widthScreen * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// app bar
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Image.asset("${Constants.imgPath}/person1.png"),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    '${Constants.svgPath}/ic_arrow_left.svg',
                  ),
                ),
                Text(
                  "02 sep 2023",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Constants.s16,
                      fontFamily: Constants.fontFamily,
                      fontWeight: Constants.regular),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    '${Constants.svgPath}/ic_arrow_right.svg',
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              Container(
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.greyColor),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    weight: 14,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),

          ///title
          Row(
            children: [
              Text(
                "Hi ",
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    fontSize: Constants.s28,
                    fontWeight: Constants.bold),
              ),
              Text(
                "Dr.kellen",
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    fontSize: Constants.s28,
                    fontWeight: Constants.bold),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),

          ///subtitle
          Text(
            "You have 4 appoinments today.",
            style: TextStyle(
              fontFamily: Constants.fontFamily,
              fontSize: Constants.s16,
              fontWeight: Constants.regular,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 20,
          ),

          ///Head
          Text(
            "Thought of the day",
            style: TextStyle(
              fontFamily: Constants.fontFamily,
              fontSize: Constants.s20,
              fontWeight: Constants.medium,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          ///Container
          Stack(
            children: [
              Container(
                width: widthScreen * 0.9,
                height: heightScreen * 0.26,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Constants.bgAccentColor,
                      borderRadius: BorderRadius.circular(20)),
                  width: widthScreen * 0.9,
                  child: Container(
                    margin: EdgeInsets.only(right: widthScreen * 0.25),
                    padding: EdgeInsets.all(22),
                    child: Expanded(
                      child: Wrap(children: [
                        Text(
                          "Where there is a human being there is an",
                          style: TextStyle(
                              fontWeight: Constants.regular,
                              fontSize: Constants.s16,
                              fontFamily: Constants.fontFamily,
                              color: Constants.txtGreyColor),
                        ),
                        Text(" read more.....",
                            style: TextStyle(
                                fontWeight: Constants.regular,
                                fontSize: Constants.s16,
                                fontFamily: Constants.fontFamily,
                                color: Constants.txtInfoColor)),
                      ]),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  '${Constants.svgPath}/home.svg',
                  height: heightScreen * 0.26,
                  width: widthScreen * 0.26,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          ///title of list
          Text(
            "Upcoming sessions",
            style: TextStyle(
              fontFamily: Constants.fontFamily,
              fontSize: Constants.s20,
              fontWeight: Constants.medium,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ///Listview
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(ProductScreen.routeName);
                    },
                    child: SessionWidget());
              },
              itemCount: 4,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 12,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
