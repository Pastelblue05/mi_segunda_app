import 'package:flutter/material.dart';
import '../widgets/section_button.dart'; 
import '../widgets/footer_widget.dart'; 

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
            // Información de desarrollador
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.indigo,
              child: Text(
                'LG',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Laury Guerrero (Pastelblue05)', 
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            
            // Sección de Botones 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ¿Quién soy? 
                  SectionButton(
                    icon: Icons.star, 
                    label: '¿Quién soy?',
                    onTap: () {
                      print('Ir a ¿Quién soy?'); 
                    },
                  ),

                  // ¿Qué hago? 
                  SectionButton(
                    icon: Icons.laptop_mac, 
                    label: '¿Qué hago?',
                    onTap: () {
                      print('Ir a ¿Qué hago?'); 
                    },
                  ),

                  // Comentario
                  SectionButton(
                    icon: Icons.message, 
                    label: 'Comentarios',
                    onTap: () {
                      print('Ir a Comentarios'); 
                    },
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const FooterWidget(), 
    );
  }
}