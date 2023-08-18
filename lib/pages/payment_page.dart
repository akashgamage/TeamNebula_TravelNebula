import 'package:flutter/material.dart';

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
    double displayWidth = MediaQuery.of(context).size.width;

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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: displayWidth,
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
                        
                
                        //payment details
                
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: displayWidth,
                            height: 143,
                            child: Column(
                              
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
                        ),
                      ],
                    ),
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
              imagePath: "assets/images/card3.png",
              isSelected: selectedImage == "assets/images/card3.png",
              onTap: () {
                setState(() {
                  selectedImage = "assets/images/card3.png";
                });
              },
            ),
            _SelectableImage(
              imagePath: "assets/images/card2.png",
              isSelected: selectedImage == "assets/images/card2.png",
              onTap: () {
                setState(() {
                  selectedImage = "assets/images/card2.png";
                });
              },
            ),
            _SelectableImage(
              imagePath: "assets/images/card1.png",
              isSelected: selectedImage == "assets/images/card1.png",
              onTap: () {
                setState(() {
                  selectedImage = "assets/images/card1.png";
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
              imagePath: "assets/images/Bank2.png",
              isSelected: selectedImage == "assets/images/Bank2.png",
              onTap: () {
                setState(() {
                  selectedImage = "assets/images/Bank2.png";
                });
              },
            ),
            const SizedBox(width: 20),
            _SelectableImage(
              imagePath: "assets/images/Bank3.png",
              isSelected: selectedImage == "assets/images/Bank3.png",
              onTap: () {
                setState(() {
                  selectedImage = "assets/images/Bank3.png";
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

