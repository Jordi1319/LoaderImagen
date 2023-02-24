import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          title: const Text('Cheems app'),
        ),
        body: ListView(
          children: <Widget>[
            miCardImageCarga(),
          ],
        ));
  }
}

Card miCardImageCarga() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const FadeInImage(
          //fadeOutDuration: Duration(microseconds: 100),
          image: NetworkImage(
              'https://www.elsoldemexico.com.mx/doble-via/virales/ey580c-cheems.jpg/alternates/LANDSCAPE_768/Cheems.jpg'),
          placeholder: AssetImage('assets/loading.gif'),
          fit: BoxFit.cover,
          height: 260,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Cheems'),
        )
      ],
    ),
  );
}
