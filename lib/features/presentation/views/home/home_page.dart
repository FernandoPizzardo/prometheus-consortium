import 'package:flutter/material.dart';
import 'package:prometheus_consortium/core/core.dart';
import 'package:prometheus_consortium/features/presentation/presentation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
        child:  SizedBox(
          height: 50,
          child: Row(
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
