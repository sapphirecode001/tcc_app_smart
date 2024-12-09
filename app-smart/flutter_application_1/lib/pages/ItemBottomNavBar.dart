import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 104, 158, 228),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "R\$239,08",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
             ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_shopping_cart, color: Colors.white),
              label: Text("Adicionar ao Carrinho", style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all( Color.fromARGB(255, 104, 158, 228),)
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
