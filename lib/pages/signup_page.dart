import 'package:flutter/material.dart';
import 'package:travel_nebula/pages/home_page.dart';
import 'package:travel_nebula/pages/signin_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final idcontroller = TextEditingController();
  final pwcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 40, right: 10),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blue),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 2),
              const Text(
                'Back',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text('Start your journey with',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text('Travel Nebula',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800)),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              controller: idcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'E-mail',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              controller: pwcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              controller: pwcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Re-enter Password',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(48, 0, 183, 1),
                    Color.fromRGBO(161, 128, 255, 1)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.0, 1.0],
                  transform:
                      GradientRotation(98.41 * (3.1415926535897932 / 180)),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(500, 50),
                  elevation: 0, // Remove button shadow
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor: Colors.transparent,
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: const Color.fromRGBO(48, 0, 183, 1),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 113, 191, 115),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'or',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 113, 191, 115),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: const Color.fromRGBO(48, 0, 183, 1),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Sign Up with', style: TextStyle(fontSize: 18))],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Image.asset(
                    'assets/images/Google.png',
                    height: 40,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints:
                      const BoxConstraints(maxWidth: 90), // Set max width here
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Image.asset(
                    'assets/images/SpaceX.png',
                    height: 40,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Image.asset(
                    'assets/images/Nasa.png',
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 18),
              ),
              GestureDetector(
                onTap: () {
                  //SIGN UP LINK
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ' Sign In',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
