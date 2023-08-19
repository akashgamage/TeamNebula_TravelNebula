import 'package:flutter/material.dart';
import 'package:travel_nebula/pages/bottom_navbar.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 243, 244),
        title: const Text(
          'Your Tickets',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 20.0,
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/Ticket.png'),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/Ticket.png'),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/Ticket.png'),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/Ticket.png'),
                  ],
                ),
              ),
              const SizedBox(height: 200),
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
              child: FittedBox(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavBar()));
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
                            'Done',
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
}
