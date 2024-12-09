import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cliente.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/usuario.dart';

void main() {
  runApp(const Cadastro());
}

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  List<Cliente> clientes = [];
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  bool fim = false;
  @override
  Widget build(BuildContext context) {
    if(fim == true){
      return Login();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 249, 250),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                'imagens/smartconfort2.png',
                width: 500,
                height: 500
              ),
              TextField(
                controller: nomeController,
                decoration: InputDecoration(
                  hintText: 'Nome de usuário',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  icon: Icon(
                    Icons.account_circle,
                    color:  Color.fromARGB(255, 74, 113, 223),
                    size: 30.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
               TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    icon: Icon(
                      Icons.email_outlined,
                      color:  Color.fromARGB(255, 74, 113, 223),
                      size: 30.0,
                    ),
                  ),
               ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: senhaController,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  icon: Icon(
                    Icons.lock_outline_sharp,
                    color:  Color.fromARGB(255, 74, 113, 223),
                    size: 30.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () => cadastrar(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 8, 73, 170),
                ),
                child: Text(
                  "Cadastrar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void cadastrar() {
    var nome = (nomeController.text);
    var email = (emailController.text);
    var senha = (senhaController.text);
    Cliente cliente = Cliente(nome, senha, email);

    clientes.add(cliente);

    setState(() {
      fim = true;
    });

  }
}
