import 'package:flutter/material.dart';
import 'package:untitled/contantes.dart' as con;
import 'package:untitled/depetendencia.dart';
import 'package:untitled/home.dart';
import 'package:untitled/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /*
  CREACIÓN DE VARIABLES

  TAMBIÉN FUNCIONES
  */
  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagenes/Welcome 1.png"),
                fit: BoxFit.fill
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.1,
              left: size.width * 0.1,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset("imagenes/Welcome 2.png",
                width: size.width * 0.2,)
            )
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.125),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder:
                          (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                    primary: con.naranja,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    fixedSize: Size(size.width * 0.6, 45)
                ),
                child: const Text(
                  'Iniciar Sesión',
                  style: TextStyle(color: con.blanco, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.045),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No tienes cuenta?'),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Registrate',
                        style: TextStyle(color: con.naranja),
                      )
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
  /*
    FUNCIONES
  */
}

