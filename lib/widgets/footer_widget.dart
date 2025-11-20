import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, 
      color: Colors.grey[200], 
      child: const Center(
        child: Text(
          '© 2025 Portafolio de Laury Guerrero | Derechos Reservados', 
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
    );
  }
}