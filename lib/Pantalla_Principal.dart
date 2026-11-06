import 'package:flutter/material.dart';

import 'Pantalla_Secundaria.dart';
import 'mock_data.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false, // Opcional: quita la etiqueta de debug
    home: PantallaPrincipal(),
  ),
);

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  static TipoPescado gamba = obtenerPescadoPorId("PES-001");
  static Barco barcoGamba=obtenerBarcoPorId("BAR-001");

  static TipoPescado choco = obtenerPescadoPorId("PES-002");
  static Barco barcoChoco=obtenerBarcoPorId("BAR-001");

  static TipoPescado atun = obtenerPescadoPorId("PES-004");
  static Barco barcoAtun=obtenerBarcoPorId("BAR-004");

  static TipoPescado sardina = obtenerPescadoPorId("PES-003");
  static Barco barcoSardina=obtenerBarcoPorId("BAR-003");


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true, title: Text("LA LONJA", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue, iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              icon: Icon(Icons.undo),
              onPressed: () {
              },
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(

            children: <Widget>[
              ListTile(title: Text(gamba.nombre), subtitle: Text(barcoGamba.nombre),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(pescado: gamba, barco: barcoGamba),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(gamba.imagenUrl, fit: BoxFit.cover)),
              ),
              ListTile(title: Text(choco.nombre), subtitle: Text(barcoChoco.nombre),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(pescado: choco, barco: barcoChoco),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(choco.imagenUrl, fit: BoxFit.cover)),
              ),
              ListTile(title: Text(sardina.nombre), subtitle: Text(barcoSardina.nombre),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(pescado: sardina, barco: barcoSardina),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(sardina.imagenUrl, fit: BoxFit.cover)),
              ),
              ListTile(title: Text(atun.nombre), subtitle: Text(barcoAtun.nombre),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(pescado: atun, barco: barcoAtun),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(atun.imagenUrl, fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}