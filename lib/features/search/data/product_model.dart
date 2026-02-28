import 'package:food_app/core/utils/app_images.dart';

class ProductModel {
  final String id;
  final String name;
  final String? price;
  final String image = AppImages.picture1;

  final String? description;
  final String? rating;

  ProductModel({
    required this.id,
    required this.name,
    this.price,

    this.description,
    this.rating,
  });
}

List<ProductModel> recentKeywords = [
  ProductModel(id: "1", name: "Burger"),
  ProductModel(id: "2", name: "Sandwich"),
  ProductModel(id: "3", name: "Pizza"),
  ProductModel(id: "4", name: "fish"),
];

List<ProductModel> suggestedRestaurants = [
  ProductModel(id: "11", rating: "4.7", name: "Pansi Restaurant"),
  ProductModel(id: "12", rating: "4.3", name: "American Spicy Burger Shop"),
  ProductModel(id: "13", rating: "4.0", name: "Cafenio Coffee Club"),
];
List<ProductModel> popularFastFood = [
  ProductModel(
    id: "21",
    description: "Uttora Coffe House",
    name: "European Pizza",
  ),
  ProductModel(
    id: "22",
    description: "Cafenio Coffee Club ",
    name: "Buffalo Pizza.",
  ),
  ProductModel(
    id: "23",
    description: "Italiano Restaurant",
    name: "Margherita Pizza",
  ),
  ProductModel(id: "24", description: "Burger Factory", name: "Cheese Burger"),
];
List<ProductModel> productCard = [
  ProductModel(
    id: "31",
    name: "Burger Ferguson",
    price: "\$40",
    description: "Spicy restaurant",
  ),
  ProductModel(
    id: "32",
    name: "Rockin' Burgers",
    price: "\$40",
    description: "Cafecafachino",
  ),
];

List<ProductModel> addressKeywords = [
  ProductModel(id: "5", name: "Home"),
  ProductModel(id: "6", name: "work"),
  ProductModel(id: "7", name: "other"),
];
