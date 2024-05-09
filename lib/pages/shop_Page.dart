import 'package:ecomerce_app/components/shoes_tile.dart';
import 'package:ecomerce_app/models/cart.dart';
import 'package:ecomerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  void addItemToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addToCart(shoe);
    showDialog(context: context, builder: (context)=>const AlertDialog(
      title: Text('SuccessFully Added!'),
      content: Text('Check ur cart'),

    ),);

    
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
        decoration:BoxDecoration(color:Colors.grey[100],borderRadius: BorderRadius.circular(8),
        ),

        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Search',style: TextStyle(color: Colors.grey),),
            Icon(
              Icons.search,
              color: Colors.grey,
              
            ),
          ],
        ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('everyone flies,,some fly longer than others',style: TextStyle(color: Colors.grey[600]),),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            
            children: [Text('Hot Picks 🔥',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),),
          Text('See all',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),],),
        ),
        const SizedBox(height: 10),
        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
          Shoe shoe=value.getShoeList()[index];
          return ShoeTile(
            shoe: shoe,
            onTap: ()=>addItemToCart(shoe),
          );
        })),
        const Padding(
          padding:  EdgeInsets.only(top:25.0,left:25,right: 25),
          child:  Divider(color: Colors.white,),
        )

        
      ],
    )

    ,);
  }
}   