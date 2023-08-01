import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prometheus_consortium/prometheus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   title: Text(widget.title),
      // ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover),
        ),
         child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Consórcio\nPrometheus",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: PrometheusPalette.light,
              ),
            ),
          ],
        ),
      ),
      ),

      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 380,
              
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: PrometheusPalette.light,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 380,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(PrometheusPalette.light)),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                ),
                child: const Text("Cadastre-se"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
