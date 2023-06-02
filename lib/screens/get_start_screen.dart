import 'package:aprendiendo_flutter/screens/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Get_Start extends StatefulWidget {
  const Get_Start({Key? key}) : super(key: key);

  @override
  State<Get_Start> createState() => _Get_StartState();
}

class _Get_StartState extends State<Get_Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 8, 72, 124),
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Imagen(),
          Text(
            'Welcome to TGD !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'A one-stop portal for you learn the lastest technologies from SCRATCH',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Boton(),
        ],
      ),
    );
  }
}

class Imagen extends StatelessWidget {
  const Imagen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/icon_get_started.png',
        width: 200,
        height: 200,
      ),
    );
  }
}

class Boton extends StatelessWidget {
  const Boton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sign_In()),
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 85, 165, 219))),
            child: const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
      ],
    );
  }
}
