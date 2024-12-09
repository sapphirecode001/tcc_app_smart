import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/favoritos.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/usuario.dart';

void main() {
  runApp(MaterialApp(home: const Carrinho()));
}

class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  // Map to store product quantities
  final Map<String, int> _productQuantities = {
    'Interruptor Inteligente wi-fi': 1,
    'Fechadura inteligente': 1,
    'Lampada wi-fi inteligente, POSITIVO': 1,
  };

  // Map to store checked state of products
  final Map<String, bool> _checkedProducts = {
    'Interruptor Inteligente wi-fi': false,
    'Fechadura inteligente': false,
    'Lampada wi-fi inteligente, POSITIVO': false,
  };

  // Function to calculate the total price
  double _calculateTotal() {
    double total = 0;
    _productQuantities.forEach((name, quantity) {
      if (_checkedProducts[name] == true) {
        double price = 0;
        switch (name) {
          case 'Interruptor Inteligente wi-fi':
          price = 71.84;
          break;
          case 'Fechadura inteligente':
          price = 149.99;
          break;
          case 'Lampada wi-fi inteligente, POSITIVO':
          price = 199.99;
          break;
        }
        total += price * quantity;
      }
    });
    return total;
  }

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
                leading: Icon(Icons.shopping_cart_outlined, color: Colors.white),
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
                leading: Icon(Icons.favorite_border_outlined, color: Colors.white),
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
          title: const Text('Carrinho', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildProductItem(
                context,
                'imagens/5.jpg',
                'Interruptor Inteligente wi-fi',
                'R\$ 129,00',
              ),
              const Divider(color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
              _buildProductItem(
                context,
                'imagens/2.jpg',
                'Fechadura inteligente',
                'R\$ 149,00',
              ),
              const Divider(color: Color.fromARGB(255, 107, 107, 107), thickness: 1),
              _buildProductItem(
                context,
                'imagens/3.jpg',
                'Lampada wi-fi inteligente, POSITIVO',
                'R\$ 65,90',
              ),
              const SizedBox(height: 16),
              // Total price and payment options
              _buildTotalContainer(),
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
    );
  }

  Widget _buildProductItem(BuildContext context, String imageAssets, String name, String price) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageAssets,
          width: 90,
          height: 90,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                value: _checkedProducts[name],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedProducts[name] = value!;
                  });
                },
                title: Text(
                  name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        if (_productQuantities[name]! > 1) {
                          _productQuantities[name] = _productQuantities[name]! - 1;
                        }
                      });
                    },
                  ),
                  Text(
                    _productQuantities[name].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline, color: Colors.green),
                    onPressed: () {
                      setState(() {
                        _productQuantities[name] = _productQuantities[name]! + 1;
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Color.fromARGB(223, 0, 0, 0)),
                    onPressed: () {
                      setState(() {
                        if (_checkedProducts[name]!) {
                          _productQuantities.remove(name);
                          _checkedProducts.remove(name);
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 187, 190, 228),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total: R\$ ${_calculateTotal().toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text('Opções de Pagamento:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Ação para pagar com cartão
                },
                child: const Text('Cartão de Crédito'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  // Ação para pagar com Pix
                },
                child: const Text('Pix'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Tempo estimado de entrega'),
        ],
      ),
    );
  }
}
