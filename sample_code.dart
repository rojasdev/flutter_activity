import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleChildLayoutPage()),
                );
              },
              child: const Text('Single-Child Layout'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MultiChildLayoutPage()),
                );
              },
              child: Text('Multi-Child Layout'),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleChildLayoutPage extends StatelessWidget {
  const SingleChildLayoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single-Child Layout'),
      ),
      body: // Place yourSingle-child layout layout here 
      
    );
  }
}

class MultiChildLayoutPage extends StatelessWidget {
  const MultiChildLayoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi-Child Layout'),
      ),
      body: // Place your Multi-child layout here 
      
    );
  }
}
