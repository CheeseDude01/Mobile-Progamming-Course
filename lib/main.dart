import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  Widget categoryItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 26),
        const SizedBox(height: 4),
        Text(label)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffd8d2db),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color(0xffa9c7d8),
                child: Image.network(
                  "https://picsum.photos/300",
                  width: 260,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 70,
                color: const Color(0xffd78a9a),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  "Laptop",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 70,
                color: const Color(0xffe6dc9c),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    categoryItem(Icons.restaurant, "Food"),
                    categoryItem(Icons.landscape, "Scenery"),
                    categoryItem(Icons.people, "People"),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 70,
                color: const Color(0xff9fc4cf),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Counter here: $_counter",
                      style: const TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: _increment,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7fb3be),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text("+"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
          backgroundColor: const Color(0xffe6bf7c),
        ),
        body: const CounterWidget(),
      ),
    ),
  );
}