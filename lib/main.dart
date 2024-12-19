import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Lukas',
      home: const LayoutScreen(),
    );
  }
}

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Fundo com o símbolo Yin Yang
          Center(
            child: Opacity(
              opacity: 0.1, // Transparência para o fundo
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/54/54475.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Título superior
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                color: Colors.red[300],
                child: const Center(
                  child: Text(
                    'Japira - Lukas Carvalho',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Texto Layout Superior
              const Text(
                '',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              // Retângulo Central Azul
              Container(
                width: 220,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(4, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Meu Aplicativo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Layout Inferior sem texto
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.red[300],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: const Offset(0, -2),
                          blurRadius: 8,
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      // Botão Flutuante
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação ao clicar no botão
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Botão "+" pressionado!'),
            ),
          );
        },
        backgroundColor: Colors.red[300],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
