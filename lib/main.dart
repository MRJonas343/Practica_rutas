import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practica 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  const FirstPage ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina principal'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Ir a la segunda pantalla"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage()));
          },
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget{
  const SecondPage ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pagina'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Ir a la primera pagina pantalla"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}