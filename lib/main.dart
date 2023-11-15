import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController numberController = TextEditingController();
  int result = 0;

  int calculateFactorial(int n) {
    if (n == 0 || n == 1) {
      return 1;
    } else {
      return n * calculateFactorial(n - 1);
    }
  }

  void calculate() {
    int number = int.tryParse(numberController.text) ?? 0;

    setState(() {
      result = calculateFactorial(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Unit Test Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter a number'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculate,
              child: const Text('Calculate Factorial'),
            ),
            const SizedBox(height: 16),
            Text('Result: $result', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
