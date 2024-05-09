import 'package:ecomerce_app/models/cart.dart';
import 'package:ecomerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key,required this.shoe,});

  @override
  State<CartItem> createState() => _Cart_ItemState();
}

class _Cart_ItemState extends State<CartItem> {
  void removeItem(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:Colors.grey[100],
      borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete),onPressed: removeItem,),
      ),
    ) ;
  }
}