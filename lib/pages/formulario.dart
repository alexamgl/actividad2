import 'package:flutter/material.dart';
import 'package:actividad2/pages/welcome.dart';
import 'package:flutter/services.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final orientation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;
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
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Color.fromARGB(255, 225, 172, 235)],
              begin: Alignment.bottomCenter,
              end: Alignment.centerRight)),
    );
  }
}

class Contenido extends StatelessWidget {
  const Contenido({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              'Ingresa tus datos',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'Teclea tu correo electrónico y tu contraseña en los espacios requeridos',
              style: TextStyle(
                color: Color.fromARGB(255, 59, 58, 58),
                fontSize: 20,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Datos(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      //decoration: BoxDecoration(
      //borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Usuario',
                prefixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person))),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Contraseña',
                prefixIcon: IconButton(
                  icon: const Icon(
                    Icons.lock,
                  ),
                  onPressed: () {},
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 60, 0, 71))),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 60, 0, 71))),
                child: const Text(
                  'Ingresa con Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Welcome()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 60, 0, 71))),
                child: const Text(
                  'Atrás',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
