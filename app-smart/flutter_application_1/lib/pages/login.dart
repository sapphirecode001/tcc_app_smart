import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cadastro.dart';
import 'package:flutter_application_1/pages/cliente.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  List<Cliente> clientes = [];
  TextEditingController nomeController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  bool fim = false;
  bool inicio = false;
  @override
  Widget build(BuildContext context) {
    if(inicio == true){
      return Main();
    }
    if(fim == true){
      return Cadastro();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: Color.fromARGB(255, 248, 249, 250),
        body: Column(
     
          children: [
            Image.asset(
              'imagens/smartconfort2.png',
              width: 500,
              height: 500,
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
                    color: Color.fromARGB(255, 74, 113, 223),
                    size: 30.0,
                  ),
              ),
            ),
            SizedBox(
              height: 5,
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
                    color: Color.fromARGB(255, 74, 113, 223),
                    size: 30.0,
                  ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: entrar,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 8, 73, 170),
              ),
              child: Text(
                "Entrar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () => cadastrar(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 8, 73, 170),
              ),
              child: Text(
                "Cadastrar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }

  void entrar() {
    var nome = (nomeController.text);
    var senha = (senhaController.text);
    Cliente cliente = Cliente(nome, senha);

      if(nome == cliente.nome && senha == cliente.senha){
        print("Usuário logado com sucesso!");
        setState(() {
          inicio = true;
        });  
      }
      else{
        print("erro");
      }
  }
  void cadastrar() {
    setState(() {
      fim = true;
    });
  }
}
