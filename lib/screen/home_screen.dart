import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_management_app/widget/operation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //handel indicater
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print("Drawer Clicked");
                    },
                    child: Container(
                      height: 20,
                      width: 26.67,
                      child: Image.asset(
                        "assets/images/Group.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/images/Rectangle 4.png"),
                  )
                ],
              ),
            ),
            //cart section
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: EdgeInsets.only(left: 23, bottom: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                  Text(
                    "Amanda Alex",
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 199,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 23, right: 6),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    height: 199,
                    width: 344,
                    decoration: BoxDecoration(
                      color: Color(0xff1E1E99),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(28),
                              ),
                              child:
                                  Image.asset("assets/images/Ellipse 2.png")),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(28),
                            ),
                            child: Image.asset("assets/images/Ellipse 1.png"),
                          ),
                        ),
                        Positioned(
                          top: 48,
                          left: 29,
                          child: Text(
                            "CARD NUMBER",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 29,
                          child: Text(
                            "**** **** **** 1425",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          right: 21,
                          height: 27,
                          width: 27,
                          child: Image.asset("assets/images/Mastercard.png"),
                        ),
                        Positioned(
                          bottom: 45,
                          left: 29,
                          child: Text(
                            "CARD HOLDERNAME",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 21,
                          left: 29,
                          child: Text(
                            "Amanda Alex",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 54,
                          bottom: 45,
                          child: Text(
                            "EXPIRY DATE",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 203,
                          bottom: 21,
                          child: Text(
                            "03-01-2023",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 21, top: 29),
              child: Row(
                children: [
                  Text(
                    "Operation",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  //indicater
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22, right: 3, top: 10),
              height: 123,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return OperationCard();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 29,
                left: 21,
                bottom: 13,
              ),
              child: Text(
                "Transaction Histories",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Container(
                height: 373,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 13),
                      child: Container(
                        height: 76,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/Ellipse 6.png",
                                height: 57,
                                width: 53,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 80),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Uber Ride",
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "1st Apr 2020",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "-35.214",
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1E1E99),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
