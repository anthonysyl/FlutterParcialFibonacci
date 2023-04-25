import 'package:flutter/material.dart';

class FibonacciScreen extends StatefulWidget {
  @override
  _FibonacciScreenState createState() => _FibonacciScreenState();
}

class _FibonacciScreenState extends State<FibonacciScreen> {
  int _fibonacciResult = 0;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secuencia de Fibonacci'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese un número entero',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Calcular'),
              onPressed: () {
                setState(() {
                  _fibonacciResult = fibonacci(int.parse(_controller.text));
                });
              },
            ),
            SizedBox(height: 20),
            Text('El resultado es: $_fibonacciResult'),
          ],
        ),
      ),
    );
  }

  int fibonacci(int n) {
    if (n <= 0) {
      return 0;
    } else if (n == 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secuencia de Fibonacci',
      home: FibonacciScreen(),
    );
  }
}
