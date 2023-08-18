import 'package:flutter/material.dart';

import 'package:travel_nebula/pages/payment_page.dart';
import 'package:travel_nebula/pages/home_page.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;displayWidth;  return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 243, 244),
        title: const Text(
          'Booking Tour',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Column(
              children: [
                Container(
                  width: displayWidth,
                  height: 378,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20), // Add some spacing
                      Container(
                        width: displayWidth,
                        height: 100,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: .50,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: displayWidth,
                                height: 100,
                                decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [Color(0x4FDF9C67), Color(0xFFA0653E)],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 18.09,
                              top: 71.18,
                              child: Text(
                                'Elysium Colony',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 1.10,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 64,
                              top: 86.06,
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: displayWidth,
                                      height: 14,
                                      child: Stack(
                                        children: [
                                          const Positioned(
                                            left: 19,
                                            top: 1,
                                            child: SizedBox(
                                              width: 91,
                                              child: Text(
                                                'Air Quality  90%',
                                                style: TextStyle(
                                                  color: Color(0xFFD9D9D9),
                                                  fontSize: 12,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: displayWidth,
                                              height: 14,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(),
                                              child: const Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      width: displayWidth,
                                      height: 14,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(),
                                      child: const Stack(children: []),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: displayWidth,
                                height: 68.75,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'images/3.webp'), //the image in first container
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //text boxes and text fields

                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: displayWidth,
                              height: 190,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: displayWidth,
                                    height: 40,
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      left: 13,
                                      right:
                                          13, // Adjusted right padding for the text field
                                      bottom: 14,
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.5, color: Color(0x7F3951EE)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: TextField(
                                      // Replace Text with TextField
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'User Name', // Placeholder text
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: displayWidth,
                                    height: 40,
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      left: 13,
                                      right:
                                          13, // Adjusted right padding for the text field
                                      bottom: 14,
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.5, color: Color(0x7F3951EE)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: TextField(
                                      // Replace Text with TextField
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'User Name', // Placeholder text
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: displayWidth,
                                    height: 40,
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      left: 13,
                                      right:
                                          13, // Adjusted right padding for the text field
                                      bottom: 14,
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.5, color: Color(0x7F3951EE)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: TextField(
                                      // Replace Text with TextField
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'User Name', // Placeholder text
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: displayWidth,
                                    height: 40,
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      left: 13,
                                      right:
                                          13, // Adjusted right padding for the text field
                                      bottom: 14,
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.5, color: Color(0x7F3951EE)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: TextField(
                                      // Replace Text with TextField
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'User Name', // Placeholder text
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //text after the text fields

                          const SizedBox(
                            width: 20,
                          ),
                          const SizedBox(
                            width: 96,
                            height: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Departure\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '15th Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Arrival\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '25th Mar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '04\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Passengers',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),


                //ticket price details

                const SizedBox(height: 50),
                SizedBox(
                  width: displayWidth,
                  height: 143,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ticket Prices',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'For one ticket',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'No of tickets',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Space Tax',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 159),
                              Container(
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\$ 250 000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '\$ 20 000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 17),
                          Container(
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 186),
                                Text(
                                  '\$ 1 020 000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //cancel and make payment buttons

                const SizedBox(height: 50),
                
              ],
            ),
            Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 120,
            padding: EdgeInsets.all(displayWidth * .05),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(239, 0, 32, 50),
                  Color.fromARGB(230, 150, 168, 255),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Cancer Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(displayWidth * .44, displayWidth * .16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 0, 73, 255)),
                    ),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 73, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),

                // Book Your Tour Button (Gradient Button)
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Payment()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 73, 255),
                          Color.fromARGB(255, 162, 221, 255),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    width: displayWidth * 0.44,
                    height: displayWidth * 0.16,
                    padding: EdgeInsets.symmetric(
                      horizontal: displayWidth * 0.1,
                      vertical: displayWidth * 0.04,
                    ),
                    child: const Center(
                      child: Text(
                        'Make Payment',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          
        ],
      ),
    );
  }
}
