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

      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FilledButton(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(PrometheusPalette.redPrimary),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              ),
              child: const Text("Login"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: OutlinedButton(
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
    );
  }
}
