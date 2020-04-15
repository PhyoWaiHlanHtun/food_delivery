class Food{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food ({
    this.id, this.name, this.imagePath, this.category, this.price, this.discount, this.ratings
  }
  );
}  

  final foods = [

    Food(
      id: "1",
      name: "Hamburger",
      imagePath: "assets/images/hamburger.png",
      category: "1",
      price: 3000.0,
      discount: 300.0,
      ratings: 55.0,
    ),

    Food(
      id: "2",
      name: "Ice Cream",
      imagePath: "assets/images/ice_cream.png",
      category: "2",
      price: 1500.0,
      discount: 200.0,
      ratings: 33.0,
    ),

    Food(
      id: "3",
      name: "Hot Beverage",
      imagePath: "assets/images/hot_beverage.png",
      category: "3",
      price: 2000.0,
      discount: 150.0,
      ratings: 99.0,
    ),

  ];

