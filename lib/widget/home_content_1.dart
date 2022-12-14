import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homeContent1(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    //color: Color.fromARGB(255, 201, 199, 199),
    height: Sizes.dp58(context),
    //width: Sizes.dp40(context) + Sizes.dp4(context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: Sizes.dp10(context)),
        Container(
          //padding: EdgeInsets.all(Sizes.dp12(context)),
          height: Sizes.dp60(context) + Sizes.dp6(context),
          width: Sizes.dp48(context) + Sizes.dp6(context),
          //color: Colors.amber,
          child: Row(
            children: [
              Flexible(
                child: Image.asset("assets/illustration/shopping_cart.png"),
              ),
            ],
          ),
        ),
        SizedBox(width: Sizes.dp10(context)),
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Toko Pilihan",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp7(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Sizes.dp4(context)),
            Row(
              children: [
                card(context, "assets/logo/full/gojek.png", "4"),
                SizedBox(width: Sizes.dp4(context)),
                card(context, "assets/logo/full/grab.png", "5"),
                SizedBox(width: Sizes.dp4(context)),
                card(context, "assets/logo/full/traveloka.png", "16"),
              ],
            ),
            SizedBox(height: Sizes.dp4(context)),
            Row(
              children: [
                card(context, "assets/logo/full/airasiafood.png", "0"),
                SizedBox(width: Sizes.dp4(context)),
                card(context, "assets/logo/full/shopeefood.png", "13"),
                SizedBox(width: Sizes.dp4(context)),
                SizedBox(
                  width: Sizes.dp48(context),
                  height: Sizes.dp30(context) + Sizes.dp4(context),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                    ),
                    elevation: 3.5,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                      onTap: () {
                        Application.router.navigateTo(context, "/toko");
                      },
                      child: Container(
                        padding: EdgeInsets.all(Sizes.dp12(context)),
                        height: Sizes.dp12(context),
                        width: Sizes.dp40(context),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Cari lainnya disini",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp5(context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: Sizes.dp2(context)),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Sizes.dp8(context),
                              color: black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: Sizes.dp16(context)),
        Container(
          //padding: EdgeInsets.all(Sizes.dp12(context)),
          height: Sizes.dp60(context) + Sizes.dp12(context),
          width: Sizes.dp48(context) + Sizes.dp12(context),
          //color: Colors.amber,
          child: Row(
            children: [
              Flexible(
                child: Image.asset("assets/illustration/woman_with_bag_2.png"),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
