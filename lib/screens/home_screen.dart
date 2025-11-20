import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portafolio'),
        backgroundColor: const Color.fromARGB(255, 217, 241, 80),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.indigo,
                  child: Text(
                    'LG',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
             // Información del desarrollador 
            const Text(
              'Laury Guerrero (Pastelblue05)', 
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}