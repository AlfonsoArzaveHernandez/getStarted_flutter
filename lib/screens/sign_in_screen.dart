import 'package:aprendiendo_flutter/screens/get_start_screen.dart';
import 'package:flutter/material.dart';

class Sign_In extends StatefulWidget {
  Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Formulario(),
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

class Formulario extends StatelessWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 50,
          ),
          Text(
            'Lorem Ipsum',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          Text('Otro lorem ipsum pero con la letra mas chiquita :D',
              style: TextStyle(color: Colors.white)),
          Campos(),
          SizedBox(
            height: 5,
          ),
          Botones()
        ],
      ),
    );
  }
}

class Campos extends StatefulWidget {
  const Campos({Key? key}) : super(key: key);

  @override
  State<Campos> createState() => _CamposState();
}

class _CamposState extends State<Campos> {
  final estiloBlanco = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 66, 188, 245),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'User',
                  hintStyle: TextStyle(color: Colors.white))),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.password,
                  color: Color.fromARGB(255, 66, 188, 245),
                ),
                border: OutlineInputBorder(),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff142047))),
            child: const Text(
              'Login',
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
