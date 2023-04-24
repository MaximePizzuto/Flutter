import 'package:flutter/material.dart';

void main(){

runApp(const MuseumApp());

}

class MuseumApp extends StatelessWidget {
  const MuseumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // définir ici la configuration de ton application
      title: "Museum",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      home: const Artwork()
    
    );
  }
}


class Artwork extends StatelessWidget {
  const Artwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Perform'),
        backgroundColor: Colors.red ),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset( 'images/Mona_Lisa.jpg',
          fit: BoxFit.contain, // To fit the image inside the available space
        ),
        const Text('Mona Lisa', style: TextStyle(
          fontFamily: 'Merriweather',
          fontSize: 100,
          backgroundColor: Colors.blue,
        ),
        ),
         ]),
      ),
    );
    
  }
  
}