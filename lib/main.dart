import 'package:flutter/material.dart';
import 'package:myapp/componentes/jogo_da_velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogo da velha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 148, 189),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(
        title: 'Jogo da velha', 
        color: Color.fromARGB(255, 71, 14, 14)),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title, required Color color});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              // child: const Text('Layout Superior'),
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    // child: const Text('Primeira Coluna'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 203, 221), // Cor do fundo
                      borderRadius: BorderRadius.circular(5.0), // Arredondamento
                      border: Border.all(color: const Color.fromARGB(255, 71, 14, 14), width: 2),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(100, 71, 14, 14), // Cor da sombra
                          spreadRadius: 3, // Quanto a sombra se expande
                          blurRadius: 8, // Suavidade da borda da sombra
                          offset: Offset(4, 4), // Deslocamento (x, y)
                        ),
                      ],
                    ),
                    child: const Padding(padding: EdgeInsets.all(10.0),
                    child:Jogo_da_velha(),
                    )),
                    
                    
                  ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    // child: const Text('Terceira Coluna'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              // child: const Text('Layout Inferior'),
            ),
          ),
        ],
      ),
    );
  }
}
