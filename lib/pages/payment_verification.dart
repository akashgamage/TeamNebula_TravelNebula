import 'package:flutter/material.dart';

import 'bank_card.dart';

class Verification extends StatelessWidget {
  final BankCard? selectedCard;
  final Bank? selectedBank;
  const Verification(
      {super.key, required this.selectedCard, this.selectedBank});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 243, 244),
        title: const Text(
          'Payment Verifitation',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            SizedBox(
              width: 345,
              height: 564.98,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 312,
                    height: 187.98,
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 312,
                          height: 187.98,
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
                  const SizedBox(height: 89),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 282,
                          height: 72,
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
                        const SizedBox(height: 23),
                       
                       //Text field for OTP

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
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

                        //make payment button

                        const SizedBox(height: 83),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Handle first button tap here
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ()));
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
                                  'Make Payment',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
