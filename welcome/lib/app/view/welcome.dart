import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  double _opacity = 0.0; // Variable para controlar la opacidad de la animación

  @override
  void initState() {
    super.initState();
    // Inicia la animación después de un retraso de 1 segundo
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Fondo azul

      // Cuerpo de la pantalla
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: _opacity, // Controla la animación de opacidad

          // Columna de elementos en el centro
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
            children: [
              // Contenedor circular con sombra que contiene la imagen de bienvenida
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white, // Fondo blanco
                  shape: BoxShape.circle, // Forma circular
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'assets/welcome.png', // Ruta de la imagen
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              SizedBox(height: 30), // Espacio entre elementos

              // Texto de bienvenida grande y en negritas
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Espacio entre elementos

              // Subtítulo
              Text(
                'Tu mejor experiencia comienza aquí',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40), // Espacio entre elementos

              // Botón "Empezar" con estilo personalizado
              ElevatedButton(
                onPressed: () {
                  // Agregar acción al botón
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Fondo blanco
                  padding: EdgeInsets.symmetric(horizontal: 40), // Espaciado del botón
                ),
                child: Text(
                  'Empezar',
                  style: TextStyle(
                    color: Colors.blue, // Texto en color azul
                    fontSize: 18, // Tamaño del texto
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
