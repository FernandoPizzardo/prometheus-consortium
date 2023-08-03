// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:prometheus_consortium/prometheus.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover),
        ),
        child: const PrometheusBlur(
          isBlur: false,
          title: 'Consórcio\nPrometheus',
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
            SafeArea(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(PrometheusPalette.light)),
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: ((context) => const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              PrometheusTextFormField(
                                textInput: TextInputType.number,
                                title: 'CPF',
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              PrometheusTextFormField(
                                title: 'Senha',
                                isPassword: true,
                              ),
                            ],
                          ),
                        )),
                  ),
                  child: const Text("Cadastre-se"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
