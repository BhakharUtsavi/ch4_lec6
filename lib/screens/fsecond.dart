import 'package:flutter/material.dart';

class Fsecond extends StatefulWidget {
  const Fsecond({super.key});

  @override
  State<Fsecond> createState() => _FsecondState();
}

class _FsecondState extends State<Fsecond> {
  List<Color> backgroundColors = [
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.green,
    Colors.blue,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.deepOrange,
    Colors.yellowAccent,
  ];

  List<Color> fontColors = [
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.green,
    Colors.blue,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.deepOrange,
    Colors.yellowAccent,
  ];

  int? backgroundColorIndex;
  int? fontColorIndex;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Default values if indices are null
    Color backgroundColor = backgroundColorIndex == null
        ? Colors.white
        : backgroundColors[backgroundColorIndex!];

    Color fontColor = fontColorIndex == null
        ? Colors.black
        : fontColors[fontColorIndex!];

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            args['quote'],
            style: TextStyle(
              color: fontColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Choose background color",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: backgroundColors.length,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  setState(() {
                    backgroundColorIndex = i;
                  });
                },
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: backgroundColors[i],
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Choose font color",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fontColors.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    fontColorIndex = index;
                  });
                },
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: fontColors[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
