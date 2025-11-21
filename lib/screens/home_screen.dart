import 'package:flutter/material.dart';
import '../widgets/section_button.dart';
import '../widgets/footer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Controladores para desplazarse a las secciones
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _whoAmIKey = GlobalKey();
  final GlobalKey _whatIDoKey = GlobalKey();
  final GlobalKey _commentsKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portafolio'),
        backgroundColor: const Color.fromARGB(255, 217, 241, 80),
        
        actions: [
            IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () {
                    Navigator.pushNamed(context, 'developer'); 
                },
            ),
        ],
      ),
      
      body: SingleChildScrollView( 
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            const SizedBox(height: 30),

            Center( 
              child: Column(
                children: [
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                ],
              ),
            ),
            
            const SizedBox(height: 10),
            
            // Sección de Botones 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SectionButton(
                    icon: Icons.star, 
                    label: '¿Quién soy?',
                    onTap: () => _scrollToSection(_whoAmIKey),
                  ),

                  SectionButton(
                    icon: Icons.laptop_mac, 
                    label: '¿Qué hago?',
                    onTap: () => _scrollToSection(_whatIDoKey),
                  ),

                  SectionButton(
                    icon: Icons.message, 
                    label: 'Comentarios',
                    onTap: () => _scrollToSection(_commentsKey),
                  ), 
                ],
              ),
            ),
            
            const Divider(), 
            
            // ¿QUIÉN SOY? 
            _buildSectionTitle('Quién soy', _whoAmIKey), 
            _buildSectionContent(
              'Soy Laury Guerrero, tengo 19 años, cumplo el 5 junio. Estudió ing en sistemas en la UNIMAR, actualmente voy en el 6to trimestre. Soy del estado Zulia.',
            ),
            
            const SizedBox(height: 20),
            
            // ¿QUÉ HAGO? 
            _buildSectionTitle('Qué hago', _whatIDoKey), 
            _buildSectionContent(
              'Estudio, trabajo, voy al gimnasio. En mi tiempo libre me gusta ver películas y series de todo tipo, escuchar musica, adquirir nuevos conocimientos referentes a la carrera y ver pinterest.',
            ),
            
            const SizedBox(height: 20),

            // COMENTARIOS 
            _buildSectionTitle('Comentarios', _commentsKey), 
            _buildCommentsSection(),
            
            const SizedBox(height: 80),
          ],
        ),
      ),
      
      // Pie de Página
      bottomNavigationBar: const FooterWidget(), 
    );
  }

  Widget _buildSectionTitle(String title, GlobalKey key) {
    return Padding(
      key: key, 
      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0, left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        content,
        textAlign: TextAlign.left, 
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }

  Widget _buildCommentsSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Escribe tu comentario aquí...',
              border: OutlineInputBorder(),
              labelText: 'Tu opinión',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Comentario enviado exitosamente')),
              );
            },
            icon: const Icon(Icons.send),
            label: const Text('Enviar Comentario'),
          ),
        ],
      ),
    );
  }
}