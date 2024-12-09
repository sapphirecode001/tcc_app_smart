import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/carrinho.dart';
import 'package:flutter_application_1/pages/favoritos.dart';

void main(List<String> args) {
  runApp(Usuario());
}

class Usuario extends StatelessWidget {
  final String title = "Usuario";

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
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
        
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 141, 224),
          title: Text('Usuário', style: TextStyle(color: Colors.white)),
          
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.account_circle,
                        color: Color.fromARGB(255, 39, 141, 224), size: 50),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nome de Usuário',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('email@exemplo.com',
                            style: TextStyle(fontSize: 14)),
                      ],
                    )
                  ],
                ),
                const Divider(
                    thickness: 2, color: Color.fromARGB(255, 168, 168, 168)),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            size: 30,
                            Icons.account_balance_wallet_outlined,
                            color: Color.fromARGB(255, 104, 158, 228),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        Text('A pagar', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            size: 30,
                            Icons.inbox,
                            color: Color.fromARGB(255, 104, 158, 228),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        Text('Preparando', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            size: 30,
                            Icons.local_shipping_outlined,
                            color: Color.fromARGB(255, 104, 158, 228),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        Text('A Caminho', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            size: 30,
                            Icons.thumb_up_alt_outlined,
                            color: Color.fromARGB(255, 104, 158, 228),
                          ),
                          onPressed: () {},
                        ),
                        
                        IconButton(
                          icon: Icon(
                            size: 30,
                            Icons.thumb_down_alt_outlined,
                            color: Color.fromARGB(255, 104, 158, 228),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Text(
                              'A Avaliar',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                    thickness: 2, color: Color.fromARGB(255, 168, 168, 168)),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        size: 50,
                        Icons.notifications_active_outlined,
                        color: Color.fromARGB(255, 104, 158, 228),
                      ),
                      onPressed: () {
                        // Navegar para a página do carrinho
                        
                      },
                    ),
                    SizedBox(width: 20, height: 90),
                    Text(
                      'Notificação',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Divider(
                    thickness: 2, color: Color.fromARGB(255, 168, 168, 168)),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        size: 50,
                        Icons.favorite_border_outlined,
                        color: Color.fromARGB(255, 104, 158, 228),
                      ),
                      onPressed: () {
                        // Navegar para a página do carrinho
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Favoritos()),
                        );
                      },
                    ),
                    SizedBox(width: 20, height: 90),
                    Text(
                      'Meus Favoritos',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Divider(
                    thickness: 2, color: Color.fromARGB(255, 168, 168, 168)),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        size: 50,
                        Icons.contact_mail_outlined,
                        color: Color.fromARGB(255, 104, 158, 228),
                      ),
                      onPressed: () {
                        // Navegar para a página do carrinho
                        
                      },
                    ),
                    SizedBox(width: 20, height: 90),
                    Text(
                      'Dados Pessoais',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Divider(
                    thickness: 2, color: Color.fromARGB(255, 168, 168, 168)),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        size: 50,
                        Icons.headphones_outlined,
                        color: Color.fromARGB(255, 104, 158, 228),
                      ),
                      onPressed: () {
                        // Navegar para a página do carrinho
                       
                      },
                    ),
                    SizedBox(width: 20, height: 90),
                    Text(
                      'Ajuda',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        bottomNavigationBar: Container(
          color: Colors.blue,
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
}
