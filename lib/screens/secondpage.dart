import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  List<String> image = [
    "https://wallpaperaccess.com/full/8177625.jpg",
    "https://www.pixelstalk.net/wp-content/uploads/2016/08/1080-x-1920-HD-Image-Vertical.jpg"
  ];

  List<String> fontFamilies = [
    'Roboto',
    'CustomFont',
  ];

  String? selectedImage;
  String? selectedFontFamily;

  @override
  void initState() {
    super.initState();
    selectedImage = image[0];
    selectedFontFamily = fontFamilies[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (selectedImage != null)
            Image.network(selectedImage!, fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is some text with the selected font.',
                style: TextStyle(
                  fontFamily: selectedFontFamily,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text('Choose Background Image'),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = image[index];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(image[index]),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: selectedImage == image[index]
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Choose Font Family'),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fontFamilies.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFontFamily = fontFamilies[index];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      width: 80,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text('Sample',
                          style: TextStyle(
                            fontFamily: fontFamilies[index],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
