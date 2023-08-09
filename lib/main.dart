import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(YeniUygulama());
}
class YeniUygulama extends StatefulWidget {

  @override
  State<YeniUygulama> createState() => _YeniUygulamaState();
}

class _YeniUygulamaState extends State<YeniUygulama> {
  int ana=11;
  List<String> sas=["","Skyrim","GTA5","Witcher 3","Fallout4","EU4","Kenshi","Doom","Rust","Resident Evil 7","Elden Ring"," "];
  @override
  final playerr=AudioPlayer();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
                "BUGÜN NE OYNASAM "
            ),
            backgroundColor: Colors.black
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    ana=Random().nextInt(10)+1;
                    playerr.play(AssetSource("sound$ana.wav"));
                  }
                  );
                },
                child: Column(
                  children: [
                    Image.asset("images/foto$ana.jpeg"),
                    Text("${sas[ana]}"),
                    Container(
                      width: 200,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}


