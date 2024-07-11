import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(        
        appBar: AppBar(
          title: const Text('Mi carrusel'),
        ),
        body: Center(
          child: Container(
            child: _swiper(),
          ),
        ),
      ),
    );
  }

  Widget _swiper(){
    return CarouselSlider(
    items: _misWidgets(),
    options: CarouselOptions(
      aspectRatio: 16/9,
      // height: 800,
      viewportFraction: 0.9, // fracción del Carrusel que ocupa la pantalla?
      initialPage: 0, // Qué contenedor es el que inicia el carrousel. 0, 1, 2...
      enableInfiniteScroll: true, // loop infinito. Del 3er pasa al 1er.
      reverse: false, // si es true, orden de los items al revés
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 2),
      autoPlayAnimationDuration: const Duration(milliseconds: 500),
      autoPlayCurve: Curves.linear,
      enlargeCenterPage: true, // si true, pone más grande el central y escondidos los otros.
      scrollDirection: Axis.horizontal, // eje en el que se cambian o rotan
    ),
    );
  }

  List<Widget> _misWidgets() {

    List<Widget> lista = [];
    for (var cada in imgList) {
      lista.add (
        Card(
          child: Expanded(
            child: Image.network(
              cada, 
              fit: BoxFit.fill,), 
            ),
        )
      );
    }
    return lista;
  }

}