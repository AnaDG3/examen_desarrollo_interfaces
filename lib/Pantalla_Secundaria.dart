import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mock_data.dart';

class PantallaSecundaria extends StatelessWidget {
  final TipoPescado pescado;
  final Barco barco;
  final Captura captura;

  const PantallaSecundaria({
    super.key,
    required this.pescado,
    required this.barco,
    required this.captura
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true, title: Text("Detalle Captura", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue, iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.black26,
                margin: EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("PRUEBA A", style: TextStyle(color: Colors.black),),
                    SizedBox(height: 30, child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(pescado.nombre),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black26,
                margin: EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DATOS DEL BARCO", style: TextStyle(color: Colors.black),),
                    SizedBox(height: 30, child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(barco.nombre),
                        Text(captura.horaDesembarque)
                      ],
                    )),
                    SizedBox(height: 30, child: Text(barco.artePesca, style: TextStyle(color: Colors.black, fontSize: 10),),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black26,
                margin: EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DESCRIPCIÓN", style: TextStyle(color: Colors.black),),
                    Text(pescado.descripcion)
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}