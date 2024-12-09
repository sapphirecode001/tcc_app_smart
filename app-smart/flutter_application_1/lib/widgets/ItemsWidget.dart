import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ItemPage.dart';

void main() {
  runApp(MaterialApp(home: const ItemsWidget()));
}

class ItemsWidget extends StatefulWidget {
  const ItemsWidget({super.key});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  bool standardSelected = false;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.48,
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/1.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Central MCA 1002 4690013-Intelbras',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$239,08",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/2.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fechadura Inteligente MFR 7000 Intelbras',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$149,00",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/3.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lâmpada Inteligente Positivo Smart Lite Wi-Fi 7W',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$65,90",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/4.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Câmera De Segurança Wifi A8 Noturna Inteligente Full HD ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$149,90",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/5.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Interruptor Smart Touch Wi-Fi Izy 3 Teclas-Intelbras',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$129,00",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/6.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Campainha sem Fio Residencial Intelbras CIB 101',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                    
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$109,99",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: const Color.fromARGB(251, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 139, 5, 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-10%',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    isSelected: standardSelected,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(223, 139, 5, 5),
                    ),
                    onPressed: () {
                      setState(() {
                        standardSelected = !standardSelected;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itempage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/7.jpg",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nobreak Intelbras Cftv 600va Attiv Seg Bi+ Bivolt Saída 120v',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R\$738,00",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    IconButton(
                      isSelected: standardSelected,
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
