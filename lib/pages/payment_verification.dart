import 'package:flutter/material.dart';
import 'package:travel_nebula/pages/tickets_page.dart';

import 'bank_card.dart';

class Verification extends StatelessWidget {
  final BankCard? selectedCard;
  final Bank? selectedBank;
  const Verification(
      {super.key, required this.selectedCard, this.selectedBank});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 243, 244),
        title: const Text(
          'Payment Verifitation',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  width: displayWidth,
                  child: Column(
                    children: [
                      Container(
                        width: displayWidth,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 10,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: FittedBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: displayWidth,
                                height: displayWidth * 0.6,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(selectedCard?.imagePath ??
                                        selectedBank!.imagePath),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              width: 282,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut tellus a ex finibus venenatis id non massa.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            //Text field for OTP

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 50.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildNumberInputField(),
                                  const SizedBox(width: 8),
                                  _buildNumberInputField(),
                                  const SizedBox(width: 8),
                                  _buildNumberInputField(),
                                  const SizedBox(width: 8),
                                  _buildNumberInputField(),
                                ],
                              ),
                            ),
                            const SizedBox(height: 200),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
              child: FittedBox(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TicketsPage()));
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
                        width: displayWidth,
                        height: displayWidth * 0.16,
                        padding: EdgeInsets.symmetric(
                          horizontal: displayWidth * 0.1,
                          vertical: displayWidth * 0.04,
                        ),
                        child: const Center(
                          child: Text(
                            'Verify Payment',
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
          ),
        ],
      ),
    );
  }

  Widget _buildNumberInputField() {
    return SizedBox(
      width: 41,
      height: 40,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.50),
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          // hintText: 'Enter value',
        ),
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
