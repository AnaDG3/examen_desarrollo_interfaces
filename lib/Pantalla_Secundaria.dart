import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mock_data.dart';

class PantallaSecundaria extends StatelessWidget {
  final TipoPescado pescado;
  final Barco barco;

  const PantallaSecundaria({
    super.key,
    required this.pescado,
    required this.barco
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
            Container(),
            Container(),
            Container()
          ],
        )
    );
  }
}