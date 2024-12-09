import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/carrinho.dart';
import 'package:flutter_application_1/pages/usuario.dart';

void main() {
  runApp(MaterialApp(home: const Favoritos()));
}

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  bool fim = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 104, 158, 228),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                ListTile(
                  leading: Icon(
                    Icons.home_rounded,
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
                      Icon(Icons.favorite_border_outlined, color: Colors.white),
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
            backgroundColor: Color.fromARGB(255, 104, 158, 228),
            title:
                const Text('Favoritos', style: TextStyle(color: Colors.white)),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          // SingleChildScrollView fazer a barra de rolagem
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildProductItem(
                  context,
                  'imagens/1.jpg',
                  'Produto 1',
                  'R\$ 99,99',
                ),

                //linha horizontal que divide os produtos
                const Divider(
                    color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
                _buildProductItem(
                  context,
                  'imagens/2.jpg',
                  'Fechadura inteligente',
                  'R\$ 149,99',
                ),
                const Divider(
                    color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
                _buildProductItem(
                  context,
                  'imagens/3.jpg',
                  'Lampada wifi inteligente, POSITIVO',
                  'R\$ 199,99',
                ),
                const Divider(
                    color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
                _buildProductItem(
                  context,
                  'imagens/4.jpg',
                  'Câmera de segurança',
                  'R\$ 99,99',
                ),
                const Divider(
                    color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
                _buildProductItem(
                  context,
                  'imagens/5.jpg',
                  'Interruptor wifi inteligente',
                  'R\$ 199,99',
                ),
                const Divider(
                    color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
                _buildProductItem(
                  context,
                  'imagens/6.jpg',
                  'Produto 3',
                  'R\$ 199,99',
                ),
              ],
            ),
          ),
          // Area do Footer
          bottomNavigationBar: Container(
            color: Color.fromARGB(255, 104, 158, 228),
            height: 50,
            child: const Center(
              child: Text(
                'SMART COMFORT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )),
    );
  }

  Widget _buildProductItem(
      BuildContext context, String imageAssets, String name, String price) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageAssets,
          width: 100,
          height: 100,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão de compra
                    },
                    child: const Text('Comprar'),
                  ),
                  const SizedBox(width: 6),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {
                      // Navegar para a página do carrinho
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Carrinho()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_outline_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {
                      // Deletar item do carrinho
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                       color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      // Adicionar aos favoritos
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
