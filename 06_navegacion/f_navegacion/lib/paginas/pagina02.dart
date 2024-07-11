import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Términos y condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
              const Text("Mis términos y condiciones", 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo)
                ),
              const SizedBox(height: 20,),
              const Text(
                "Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones. ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
                ),
              const SizedBox(height: 15,),
              const Text(
                "Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones. ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
                ),
              const SizedBox(height: 15,),
              const Text(
                "Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones.Acepta los términos y condiciones. ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
                ),
              const SizedBox(height: 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.5,
                child: ElevatedButton(                
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsetsDirectional.all(15.0),
                  ),
                  onPressed: (){
                    // print("Volver");
                    // Se podrían guardar los registros en una BD.
                    Navigator.pop(context);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                 
                      Text("Pulsa para volver", style: TextStyle(fontSize: 15,)),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_back_outlined),
                    ],
                  ),
                  ),
              ),
          ],
        ),
      ),
    );
  }
}