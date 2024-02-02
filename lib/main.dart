import 'package:animated_alert/alert.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Alerts',
      theme: ThemeData(brightness: Brightness.dark),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
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
        title: const Text("Animated Alerts"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AnimatedAlert(
                    success: true,
                  ),
                );
              },
              icon: const Icon(
                Icons.check_circle_outline_rounded,
                size: 35,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(MediaQuery.sizeOf(context).width * 0.8, 80),
              ),
              label: const Text(
                'Success',
                style: TextStyle(fontSize: 28),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AnimatedAlert(
                    success: false,
                  ),
                );
              },
              icon: const Icon(
                Icons.cancel_outlined,
                size: 35,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: Size(MediaQuery.sizeOf(context).width * 0.8, 80),
              ),
              label: const Text(
                'Error     ',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
