import 'package:flutter/material.dart';
import 'package:travel_nebula/pages/elysium_colony.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> stationNames = [
    'Nebula Station Los Alamos - Earth',
    'Option 2 - Earth',
    'Nebula Station Elysium Colony - Mars',
    'Option 2 - Mars',
  ];

  String _selectedSortOption = 'Ratings';

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2160),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double accountButtonHeight = 75.0;
    double spaceBetweenButtons = 16.0;

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            // Account button and notification button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: accountButtonHeight,
                      width: displayWidth * 0.7,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 1, 73, 255),
                            Color.fromARGB(255, 162, 221, 255)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          ),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'User ID: 123456',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: spaceBetweenButtons),
                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: accountButtonHeight,
                        height: accountButtonHeight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Center(
                          child: ImageIcon(
                            AssetImage('assets/images/bell.png'),
                            color: Colors.blue,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Search bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 400,
                width: displayWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(displayWidth * 0.03),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Find Your Tour",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // "FROM"
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Autocomplete<String>(
                        optionsBuilder: (textEditingValue) {
                          return stationNames.where((option) => option
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase()));
                        },
                        onSelected: (value) {},
                        fieldViewBuilder: (BuildContext context,
                            TextEditingController fieldTextEditingController,
                            FocusNode fieldFocusNode,
                            VoidCallback onFieldSubmitted) {
                          return TextField(
                            controller: fieldTextEditingController,
                            focusNode: fieldFocusNode,
                            decoration: InputDecoration(
                              labelText: "From",
                              hintText: "Select a space station",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            onChanged: (text) {},
                            onSubmitted: (text) {},
                          );
                        },
                      ),
                    ),

                    // "TO"
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Autocomplete<String>(
                        optionsBuilder: (textEditingValue) {
                          return stationNames.where((option) => option
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase()));
                        },
                        onSelected: (value) {},
                        fieldViewBuilder: (BuildContext context,
                            TextEditingController fieldTextEditingController,
                            FocusNode fieldFocusNode,
                            VoidCallback onFieldSubmitted) {
                          return TextField(
                            controller: fieldTextEditingController,
                            focusNode: fieldFocusNode,
                            decoration: InputDecoration(
                              labelText: "To",
                              hintText: "Select a space station",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            onChanged: (text) {},
                            onSubmitted: (text) {},
                          );
                        },
                      ),
                    ),

                    // "DATE" and "PASSENGERS"
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              onTap: () => _selectDate(context),
                              decoration: InputDecoration(
                                labelText: 'Select Date',
                                labelStyle: const TextStyle(color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              controller: TextEditingController(
                                text: selectedDate != null
                                    ? '${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}'
                                    : '',
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Passengers',
                                hintText: "Number of passengers",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // "SEARCH" button
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GradientButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ElysiumColony()));
                        },
                        height: 60.0,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Search',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Best destinations container
            Padding(
              padding: EdgeInsets.symmetric(vertical: displayWidth * .05),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 50, 50, 50),
                      // offset: Offset(0.0, 0.0),
                      blurRadius: 5,
                      // spreadRadius: 1,
                      // inset: true,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(50, 50, 50, 50),
                      // offset: Offset(0.0, 0.0),
                      blurRadius: 5,
                      // spreadRadius: 1,
                      // inset: true,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: displayWidth * .05,
                          vertical: displayWidth * .025),
                      child: Padding(
                        padding: EdgeInsets.only(top: displayWidth * .025),
                        child: Text(
                          'Best Destinations',
                          style: TextStyle(
                            fontSize: displayWidth * .05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          LocationButton(
                            imageAsset: 'assets/images/location1.png',
                            title: 'Elysium Colony\n',
                            description: 'Destination',
                            onTap: () {
                              // Navigate to the related pages
                            },
                          ),
                          LocationButton(
                            imageAsset: 'assets/images/location2.png',
                            title: 'Olympus X\n',
                            description: 'Destination',
                            onTap: () {
                              // Navigate to the related pages
                            },
                          ),
                          LocationButton(
                            imageAsset: 'assets/images/location3.png',
                            title: 'Meridian Space\n',
                            description: 'Destination',
                            onTap: () {
                              // Navigate to the related pages
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: displayWidth * .025),
                  ],
                ),
              ),
            ),

            // The best tours container
            Padding(
              padding: EdgeInsets.all(displayWidth * .05),
              child: SizedBox(
                height: displayWidth * 1.4,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: displayWidth * .025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: displayWidth * .01),
                            child: Text(
                              'The Best Tours',
                              style: TextStyle(
                                fontSize: displayWidth * .05,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: displayWidth * .01),
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(),
                              child: Text("More"),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: displayWidth * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sorted by',
                            style: TextStyle(
                              fontSize: displayWidth * .04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: displayWidth * 0.02),
                          DropdownButton<String>(
                            value: _selectedSortOption,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedSortOption = newValue!;
                              });
                            },
                            items: <String>[
                              'Ratings',
                              'Price',
                              'Passenger Capacity',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LongButton(
                            imageAsset: 'assets/images/travel1.png',
                            description: 'Description',
                            title: 'Nebula Shuttle X',
                            backgroundColor: Color.fromARGB(255, 9, 0, 136),
                            onTap: () {
                              // Handle button tap action
                            },
                          ),
                          LongButton(
                            imageAsset: 'assets/images/travel2.png',
                            description: 'Description',
                            title: 'Nebula Z11',
                            backgroundColor: Color.fromARGB(255, 255, 42, 42),
                            onTap: () {
                              // Handle button tap action
                            },
                          ),
                          LongButton(
                            imageAsset: 'assets/images/travel3.png',
                            description: 'Description',
                            title: 'Nebula YX1',
                            backgroundColor: Color.fromARGB(255, 137, 161, 138),
                            onTap: () {
                              // Handle button tap action
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final List<Color> colors;

  const GradientButton({
    required this.onPressed,
    required this.child,
    this.width = double.infinity,
    this.height = 50.0,
    this.colors = const [
      Color.fromRGBO(48, 0, 183, 1),
      Color.fromRGBO(161, 128, 255, 1)
    ],
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        primary: Colors.transparent,
      ),
      child: Ink(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(child: child),
      ),
    );
  }
}

class LocationButton extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;
  final VoidCallback onTap;
  const LocationButton({
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildLocationButtons(
      imageAsset: imageAsset,
      title: title,
      description: description,
      onTap: onTap,
    );
  }

  Widget _buildLocationButtons({
    required String imageAsset,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 0, 92, 46),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(16),
            splashColor: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imageAsset,
                    width: 250,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                // Description and Title
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LongButton extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;
  final Color backgroundColor;
  final VoidCallback onTap;

  const LongButton({
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: displayWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(displayWidth * .04),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(displayWidth * .03),
            splashColor: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: displayWidth * .03,
                  vertical: displayWidth * .025),
              child: Row(
                children: [
                  Image.asset(
                    imageAsset,
                    width: displayWidth * .22,
                    height: displayWidth * .22,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: displayWidth * .05),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: displayWidth * .05,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: displayWidth * .0125),
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: displayWidth * .06,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
