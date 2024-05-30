import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Destiny App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset('images/background.png', fit: BoxFit.cover,),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Expanded(
                    child: Center(
                      child: Text(
                          'Text coming from somewhere inside the app like a...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                  ),
                  FilledButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
                      shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                      backgroundColor: WidgetStateProperty.all(Colors.lightBlue),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    onPressed: () { print("option 1 selected"); },
                    child: const Text('Option 1')
                  ),
                  const SizedBox(height: 20,),
                  FilledButton(
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                        backgroundColor: WidgetStateProperty.all(Colors.indigo),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                    onPressed: () { print("option 2 selected"); },
                    child: const Text('Option 2')
                  ),
                ],
              ),
              ),
            ),
        ),
      ],
    ),
    );
  }
}