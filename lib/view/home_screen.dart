import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icecrem_app/util/constant.dart';
import 'package:icecrem_app/view/profile_screen.dart';
import 'package:icecrem_app/widgets/custom_textfeild.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> msgList = const [
    {'leading': 'assets/images/girl1.png', 'title': 'Fulano', 'trailing': '3h'},
    {
      'leading': 'assets/images/girl3.png',
      'title': 'Beltrano',
      'trailing': '2h',
    },
    {
      'leading': 'assets/images/girl2.png',
      'title': 'Cyclane',
      'trailing': '1h',
    },
  ];

  int showCaseCardIndex = 0;
  double dotPosition = 0;
  final List<Map<String, dynamic>> carouselList = const [
    {
      'image': 'assets/images/display_icecream.png',
      'title': 'Manage',
      'text': 'Rapier',
    },
    {
      'image': 'assets/images/cherry_icecream.png',
      'title': 'Order',
      'text': 'Cheery Scoope',
    },
    {
      'image': 'assets/images/orange_candy.png',
      'title': 'Check Stock',
      'text': 'Orange',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset('assets/images/girl1.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Fulano\n',
                          style: GoogleFonts.sourceSans3(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: grey150,
                          ),
                        ),
                        TextSpan(
                          text: 'Administrator',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: grey650,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Icon(Icons.notifications_outlined, size: 28),
                      Positioned(
                        right: 5,
                        top: 2,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomTextfeild(
                      text: 'Look For...',
                      prefix: Icons.search,
                      iconColor: dividerColor,
                      borderRadius: 14,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset('assets/images/filter.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1,
                  aspectRatio: 2,
                  onPageChanged: (index, _) {
                    setState(() {
                      dotPosition = index.toDouble();
                      showCaseCardIndex = index;
                    });
                  },
                ),
                items: List.generate(
                  carouselList.length,
                  (index) => showCaseCard(index),
                ),
              ),
              const SizedBox(height: 5),
              DotsIndicator(
                dotsCount: carouselList.length,
                position: dotPosition,
                decorator: DotsDecorator(
                  activeColor: primaryColor,
                  color: borderColor,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Statistics',
                  style: GoogleFonts.sourceSans3(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  statisticsCard(
                    image: 'assets/images/product.png',
                    title: 'Products',
                    count: '920',
                  ),
                  statisticsCard(
                    image: 'assets/images/sold.png',
                    title: 'Sold',
                    count: '52',
                  ),
                  statisticsCard(
                    image: 'assets/images/profit.png',
                    title: 'Profit',
                    count: '9000',
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    'Recent Messages',
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See More  ',
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(138, 25, 214, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(Icons.arrow_forward, color: white, size: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: msgList.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return recentMsgCard(
                    leading: msgList[index]["leading"],
                    text: msgList[index]["title"],
                    trailing: msgList[index]['trailing'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget statisticsCard({
    required String image,
    required String title,
    required String count,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Image.asset(image, height: 20, width: 20),
          const SizedBox(height: 2),
          Text(
            count,
            style: GoogleFonts.sourceSans3(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: white,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            title,
            style: GoogleFonts.sourceSans3(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: white,
            ),
          ),
        ],
      ),
    );
  }

  Widget recentMsgCard({
    required String text,
    required String leading,
    required String trailing,
  }) {
    return Card(
      elevation: 2,
      color: white,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Image.asset(leading),
        ),
        title: Text(
          text,
          style: GoogleFonts.sourceSans3(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: textColor,
          ),
        ),
        subtitle: Text(
          'Subject : ...',
          style: GoogleFonts.sourceSans3(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: subTitleCOlor,
          ),
        ),
        trailing: Text(
          trailing,
          style: GoogleFonts.sourceSans3(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: textColor,
          ),
        ),
      ),
    );
  }

  Widget showCaseCard(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.only(left: 20, right: 10, bottom: 0, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                carouselList[index]['title'],
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: white,
                ),
              ),
              Text(
                carouselList[index]['text'],
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  color: white,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  'Access',
                  style: GoogleFonts.sourceSans3(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 25,
                left: 25,
                height: 120,
                width: 120,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
              Image.asset(carouselList[index]['image']),
            ],
          ),
        ],
      ),
    );
  }
}
