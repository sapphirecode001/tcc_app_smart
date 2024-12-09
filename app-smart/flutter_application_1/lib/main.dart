import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ItemPage.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/usuario.dart';
import 'package:flutter_application_1/widgets/CategoriasWidget.dart';
import 'package:flutter_application_1/widgets/ItemsWidget.dart';
import 'package:flutter_application_1/pages/carrinho.dart';
import 'package:flutter_application_1/pages/favoritos.dart';

void main() {
  runApp(MaterialApp(home: const Main()));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}
// pagina inicial do app

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          
          // menu de navegação
          backgroundColor: const Color.fromARGB(255, 104, 158, 228),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                title: Text('Inicio'),
                subtitle: Text('Tela de inicio'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Main()),
                  );
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.shopping_cart_outlined, color: Colors.white),
                title: Text('Carrinho'),
                subtitle: Text('Carrinho de Compra'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Carrinho()),
                  );
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.account_circle_outlined, color: Colors.white),
                title: Text('Usuário'),
                subtitle: Text('Página do Usuário'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Usuario()),
                  );
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.favorite_outline_sharp, color: Colors.white),
                title: Text('Favoritos'),
                subtitle: Text('Página de Favoritos'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Favoritos()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 104, 158, 228),
          flexibleSpace: Image.asset(
            'imagens/teste.png',
            scale: 9,
          ),
          actions: [
            IconButton(
              icon: const Badge(
                label: Text('3'),
                backgroundColor: Color.fromARGB(223, 139, 5, 5),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Carrinho()),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'pesquise produtos',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categorias",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color.fromARGB(255, 67, 68, 68),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(8)),
              Categoriaswidget(), // chamando as categorias de produtos
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produtos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 67, 68, 68),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(8)),
              ItemsWidget(), // chamando a tela que contém os produtos
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 104, 158, 228),
          height: 50,
          child: const Center(
            child: Text(
              'SMART COMFORT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      routes: {
        "ItemPage": (context) => Itempage(),
      },
    );
  }
}
