import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 255, 94)),
        centerTitle: true,
      ),
     
      
      home: const MinhaPrimeiraPagina(title: 'Primeiro Programa'),
  }
}

class MinhaPrimeiraPagina extends StatefulWidget {
  const MinhaPrimeiraPagina({super.key, required this.title});

  final String title;

  @override
  State<MinhaPrimeiraPagina> createState() => _MinhaPrimeiraPaginaState();
}

class _MinhaPrimeiraPaginaState extends State<MinhaPrimeiraPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
      
      
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você Pressionou o botão esse número de vezes',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),;
    );
  }
}
