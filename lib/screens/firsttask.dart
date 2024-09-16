import 'package:ch4_lec6/utils/global.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: motivation.map((e){
            return ListTile(
              title: Text(e['quote'],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: (){
                Navigator.of(context).pushNamed("fsecond",arguments: e);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
