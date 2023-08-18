import 'package:flutter/material.dart';


import 'booking_page.dart';
import 'home_page.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int selectedPaymentMethod = 1; // 0: None, 1: Credit Card, 2: Bank Transfer

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;displayWidth;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 243, 244),
        title: const Text(
          'Make Payment',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Column(
              children: [
                Container(
                  width: 355,
                  height: 338,
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
                        width: 312,
                        height: 100,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 0.50,
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
                                width: 312,
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
                                      width: 110,
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
                                              width: 14,
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
                                      width: 14,
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
                                width: 312,
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

                      //payment details

                      const SizedBox(height: 40),
                      SizedBox(
                        width: 321,
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
                    ],
                  ),
                ),

                //radio button
                const SizedBox(height: 26),
                const Text(
                  'Choose Payment Method',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: 0, // Set to the selected value
                        onChanged: (int? value) {
                          // Handle radio button selection
                          setState(() {
                            selectedPaymentMethod = value ?? 0;
                          });
                        },
                        activeColor: Color.fromARGB(255, 234, 6, 6),
                      ),
                      Text(
                        'Credit Card',
                        style: TextStyle(
                          color: selectedPaymentMethod == 1
                              ? Colors.blue
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(width: 80),
                      Radio<int>(
                        value: 2,
                        groupValue: 0, // Set to the selected value
                        onChanged: (int? value) {
                          // Handle radio button selection
                          setState(() {
                            selectedPaymentMethod = value ?? 0;
                          });
                        },
                      ),
                      Text(
                        'Bank Transfer',
                        style: TextStyle(
                          color: selectedPaymentMethod == 2
                              ? Colors.blue
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                if (selectedPaymentMethod == 1) // Credit Card selected
                  _buildCreditCardSection(),
                if (selectedPaymentMethod == 2) // Bank Transfer selected
                  _buildBankTransferSection(),

                //cancel and make payment buttons

                const SizedBox(height: 20),
                Container(
                  width: 375,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            // Handle first button tap here
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Booking()));
                          },
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF4921C0),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Color(0xFF4921C0),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            // Handle second button tap here
                          },
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: ShapeDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment(0.99, -0.15),
                                end: Alignment(-0.99, 0.15),
                                colors: [Color(0xFF2F00B6), Color(0xFFA07FFF)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Pay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
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
                        'Pay',
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

  String selectedImage = ''; // Store the selected image path here

  Widget _buildCreditCardSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // ... (Credit Card content)
        width: 1000,
        height: 187.98,
        padding: const EdgeInsets.only(left: 16),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SelectableImage(
              imagePath: "images/card3.png",
              isSelected: selectedImage == "images/card3.png",
              onTap: () {
                setState(() {
                  selectedImage = "images/card3.png";
                });
              },
            ),
            _SelectableImage(
              imagePath: "images/card2.png",
              isSelected: selectedImage == "images/card2.png",
              onTap: () {
                setState(() {
                  selectedImage = "images/card2.png";
                });
              },
            ),
            _SelectableImage(
              imagePath: "images/card1.png",
              isSelected: selectedImage == "images/card1.png",
              onTap: () {
                setState(() {
                  selectedImage = "images/card1.png";
                });
              },
            ),
          ],
        ),
      ),
    );
  }

//Banking profiles
  Widget _buildBankTransferSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // ... (Credit Card content)
        width: 700,
        height: 187.98,
        padding: const EdgeInsets.only(left: 10),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SelectableImage(
              imagePath: "images/Bank2.png",
              isSelected: selectedImage == "images/Bank2.png",
              onTap: () {
                setState(() {
                  selectedImage = "images/Bank2.png";
                });
              },
            ),
            const SizedBox(width: 20),
            _SelectableImage(
              imagePath: "images/Bank3.png",
              isSelected: selectedImage == "images/Bank3.png",
              onTap: () {
                setState(() {
                  selectedImage = "images/Bank3.png";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SelectableImage extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const _SelectableImage({
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 312,
        height: 187.79,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 2,
            ),
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
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

