import 'package:flutter/material.dart';
import 'package:flutter_bitcamp/destination_page.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreDestinations extends StatelessWidget {
  const ExploreDestinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text('Hello World'),
          leading: const Padding(
            padding: EdgeInsets.only(left: 40, top: 40),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 40,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 20,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //add a search box
                      Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          color: const Color(0xffE1E1E1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextField(
                              //make keyboard go above screen

                              textInputAction: TextInputAction.search,
                              decoration: InputDecoration(
                                //add search icon to start
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 40,
                                ),
                                border: InputBorder.none,
                                hintText: "  Discover Places",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 6,
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      DestinationCard(
                        city: "Venice",
                        country: "Italy",
                        distance: "68.8 km away",
                        cost: 20,
                        openingHours: "09:00 AM",
                        image:
                            "https://www.italiadelight.it/wp-content/uploads/2020/06/venezia-italian.jpg.webp",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DestinationCard(
                        city: "New York",
                        country: "USA",
                        cost: 25,
                        openingHours: "08:00 AM",
                        distance: "1035.8 km away",
                        image:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1200px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    super.key,
    required this.distance,
    required this.image,
    required this.cost,
    required this.city,
    required this.country,
    required this.openingHours,
  });

  final String distance;
  final String image;
  final int cost;
  final String city;
  final String country;
  final String openingHours;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DestinationPage(
              distance: distance,
              image: image,
              cost: cost,
              city: city,
              country: country,
              openingHours: openingHours,
            ),
          ),
        );
      },
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
            image: NetworkImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 40,
                            height: 1.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        distance,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
