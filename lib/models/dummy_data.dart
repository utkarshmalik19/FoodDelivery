import 'package:food_delivery/models/food_cart_model.dart';

class FakeData{
  static List<String> categories = [
    "Pizza",
    "Burger",
    "Coke",
    "Pasta",
    "Soup"
  ];

  static List<FoodCartModel> food_menu =  [

  FoodCartModel(
      "assets/img.jpg",
  "Farmhouse pizza",
  "Pizza Hut",
  4.5,
  "10-20 min",
  15,
  "A good pizza filled with delicious veggie"),
    FoodCartModel(
        "https://unsplash.com/photos/MQUqbmszGGM",
        "Chicken pizza",
        "Dominos",
        5,
        "10-25 min",
        10,
        "A good pizza filled with delicious Chicken"),
      ];
}