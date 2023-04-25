
// ignore_for_file: unused_label

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


class Artwork extends StatefulWidget {
  const Artwork({super.key});

  @override
  State<Artwork> createState() => _ArtworkState();
  
}

class _ArtworkState extends State<Artwork> {
  bool _isFavorite = false;
  bool _showDescription = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Perform',),
        backgroundColor: const Color.fromRGBO(244, 67, 54, 1) ),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack( alignment: Alignment.center, children: [
          Image.asset( 'images/Mona_Lisa.jpg',),  
          Icon(
            Icons.favorite,
            color: _isFavorite ?const Color.fromRGBO(212, 0, 0, 1) :const Color.fromRGBO(255, 255, 255, 0.75),
            size: 100,
          ),
          Container( 
          width : 300,
          height: 350,
          child :SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child : 
          Text('La Joconde, ou Portrait de Mona Lisa, est un tableau de l"artiste Léonard de Vinci, réalisé entre 1503 et 1506 ou entre 1513 et 15161,2, et peut-être jusqu"à 1517 (l"artiste étant mort le 2 mai 1519), qui représente un portrait mi-corps, probablement celui de la Florentine Lisa Gherardini, épouse de Francesco del Giocondo. Acquise par François Ier, cette peinture à l"huile sur panneau de bois de peuplier de 77 × 53 cm est exposée au musée du Louvre à Paris. La Joconde est l"un des rares tableaux attribués de façon certaine à Léonard de Vinci.',style: TextStyle(
          color: _showDescription ? Colors.white : Colors.transparent,
          fontSize: 30,
          backgroundColor: _showDescription ? Color.fromRGBO(178, 0, 201, 0.5) : Colors.transparent,
          ),
          ),
          ),),],),
        // fit: BoxFit.contain, // To fit the image inside the available space
        const Text('Mona Lisa', style: TextStyle(
          fontFamily: 'Merriweather',
          fontSize: 30,
          color: Colors.brown,
        ),
        ),
        const Text('Leonardo Da Vinci', style: TextStyle(
          fontFamily: 'Merriweather',
          fontSize: 15,
          color: Colors.brown,
          fontWeight : FontWeight.bold,
        ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: _isFavorite ? const Color.fromRGBO(223, 2, 2, 0.8) :const Color.fromRGBO(172, 103, 0, 0.75),
              size: 100,
            ),
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
          });
          final snackBar = SnackBar(
          content: const Text('Ajouté aux favoris ! '),
          duration: const Duration(seconds: 1, milliseconds: 50),
          action : SnackBarAction(
          label: 'Annuler', textColor: Colors.white,
          onPressed: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });
          },
        ));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);  
  }),
          IconButton(
          icon: const Icon(
          Icons.article,
          color:Color.fromRGBO(0, 0, 0, 0.749),
          size: 100,
          ),onPressed: () {
          setState(() {
            _showDescription = !_showDescription; 
           });
          },),
        ],

        ),
        ]),
      ),
    );
    
  }
}