import 'package:flutter/material.dart';

class DeveloperInfoScreen extends StatelessWidget {
  const DeveloperInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firma y Contacto'),
        backgroundColor: const Color.fromARGB(255, 217, 241, 80),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Firma como desarrollador 
            const Text(
              'Desarrollado por',
              style: TextStyle(fontSize: 44, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(height: 10),
            
            const Text(
              'Laury Guerrero (Pastelblue05)', 
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold, 
                color: Colors.deepPurple
              ),
            ),
            const SizedBox(height: 40),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.indigo, size: 20),
                SizedBox(width: 8),
                Text('Contacto Dev: lauryguerrero2006@gmail.com', style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.code, color: Colors.indigo, size: 20),
                SizedBox(width: 8),
                Text('GitHub: /pastelblue05', style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}