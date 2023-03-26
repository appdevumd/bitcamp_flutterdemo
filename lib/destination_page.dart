import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage(
      {super.key,
      required this.distance,
      required this.image,
      required this.cost,
      required this.city,
      required this.country,
      required this.openingHours});
  final String distance;
  final String image;
  final int cost;
  final String city;
  final String country;
  final String openingHours;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff384160),
      body: Column(
        children: [
          Expanded(
            flex: 46,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 54,
            child: Padding(
              padding: const EdgeInsets.only(left: 45, right: 45),
              child: Align(
                alignment: Alignment.topLeft,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                AutoSizeText(
                                  city,
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 43,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  country,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    height: 1.0,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "\$" + cost.toString(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 43,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Per Person",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  height: 1.0,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff888D9C),
                          ),
                          width: 70,
                          height: 70,
                          child: const Center(
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          city + ", " + country,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff888D9C),
                          ),
                          width: 70,
                          height: 70,
                          child: const Center(
                            child: Icon(
                              Icons.alarm,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Open",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              openingHours,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                height: 1.0,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff888D9C),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 75,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
