import 'package:ecomerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop=[
    Shoe(name: 'Zoom Freak', price: '256', imagePath: 'lib/images/b.png', description: 'Khatarnak Jhoote'),
    Shoe(name: 'Rockstar', price: '299', imagePath: 'lib/images/c.jpg', description: 'Paise nhi hai toh Chura Lo!'),
    Shoe(name: 'Nike Jorden', price: '599', imagePath: 'lib/images/d.jpg', description: 'Ameeri'),
    Shoe(name: 'Nike Superstar', price:'140',imagePath:'lib/images/e.png' ,description:'Gareeb'),
  ];
  List<Shoe> userCart=[


  ];
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe>getUserCart(){
    return userCart;
  }
  void addToCart(Shoe shoe)
{
  userCart.add(shoe);
  notifyListeners();
}
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();

}
}