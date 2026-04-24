import 'package:flutter/material.dart';

// Importe suas telas aqui (Exemplo):
// import 'package:seu_projeto/screens/home_page.dart';
// import 'package:seu_projeto/screens/delete_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavbarState();
}

class _NavbarState extends State<NavBar> {
  int indexAtual = 0;

  // Lista para armazenar as páginas que serão exibidas
  // Substitua os Placeholders pelas suas classes reais (ex: HomePage())
  final List<Widget> _pages = [
    const Center(child: Text("Tela de Listagem (GET)", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Tela de Deleção (DELETE)", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Tela de Cadastro (POST)", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Tela de Edição (PUT)", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Tela Local (Perfumarias)", style: TextStyle(fontSize: 24))),
  ];

  void mudarIndex(int novoIndex) {
    setState(() {
      indexAtual = novoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos _pages[indexAtual] para acessar a tela correspondente
      body: _pages[indexAtual], 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: indexAtual,
        onTap: mudarIndex,
        selectedItemColor: Colors.pink, // Cor que combina com a WePink!
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.get_app_rounded), label: "Get"),
          BottomNavigationBarItem(icon: Icon(Icons.delete_forever_rounded), label: "Delete"),
          BottomNavigationBarItem(icon: Icon(Icons.post_add_rounded), label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Put"),
          BottomNavigationBarItem(icon: Icon(Icons.local_activity), label: "Local"),
        ],
      ),
    );
  }
}