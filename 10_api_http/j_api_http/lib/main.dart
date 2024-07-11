import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:j_api_http/models/Gif.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late Future<List<Gif>> _listadoGifs;

  Future<List<Gif>> _getGifs() async {
      final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=tNZCn64z2rLXBWv0oAFw1DeSdt2EeU4f&limit=10&offset=0&rating=g&bundle=messaging_non_clips"));
      
      List<Gif> gifs = [];
      
      if (response.statusCode==200) {
        String body = utf8.decode(response.bodyBytes); // codifica todo a utf8
        final jsonData = jsonDecode(body); // la convierte en un json válido
        // print(jsonData["data"][0]["images"]); // devuelve el objeto data del json, elemento 0

        for (var item in jsonData["data"]) {
            gifs.add(
              Gif(item["title"], item["images"]["fixed_height"]["url"])
            );
        } 
      } else {
        throw Exception("Falló la excepción");
      }
      return gifs;
  }

  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGifs();
    print(_listadoGifs); // Me quedo aquí. Consigo descargar de internet un montón de información de imágenes. 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: FutureBuilder(
          future: _listadoGifs,
          builder: (context, snapshot) {
            String devolver = "";                         
            if(snapshot.hasData) {
              // print(snapshot.data);
              // devolver = "Hola, con datos";
              // return ListView(
              return GridView.count(
                  crossAxisCount: 2,
                  children: _misGifs(snapshot.data),
              );
            } else if (snapshot.hasError) {
              print(snapshot.error);
              devolver = "Hola, sin datos";
              return Text(devolver);
            }
            return const Center( // de esta forma muestra un icono de cargando... 
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 91, 80, 162),
              ),
            );
          },
        ),
      ),
    );
  }

  /* ================================ */
  //             Mis Gifs
  /* ================================ */

  List<Widget> _misGifs(List<Gif>? data) {

    List<Widget> gifs = [];

    if (data!=null) {
      for (var i in data!) {
        gifs.add(
          Card(child: Column(
            children: [
              Expanded(child: Image.network(i.url, fit: BoxFit.fill,)),
              // Image.network(i.url),
              /* Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(i.name),
              ),*/
            ],
          ))
        );
      } 
    } else {
      gifs.add(
      const Card(
        child: Text("Los siento mucho, no hay datos"),
      ),
    );
    }
     

    return gifs;

  }



}

