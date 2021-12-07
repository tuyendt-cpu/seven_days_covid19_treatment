class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Bữa sáng',
      'assets/images/buasang.png',
      1,
      [
        Ingredient(
          50,
          'gram',
          'Gạo',
        ),
        Ingredient(
          50,
          'gram',
          'Thịt lợn nạc',
        ),
        Ingredient(
          5,
          'gram',
          'Bí ngô',
        ),
        Ingredient(
          50,
          'gram',
          'Hành lá',
        ),
        Ingredient(
          2,
          'ml',
          'Dầu ăn',
        ),
      ],
    ),
    Recipe(
      'Bữa trưa',
      'assets/images/buatrua.png',
      1,
      [
        Ingredient(
          75,
          'gram',
          'Gạo',
        ),
        Ingredient(
          50,
          'gram',
          'Cá',
        ),
        Ingredient(
          5,
          'ml',
          'Dầu ăn',
        ),
        Ingredient(
          30,
          'gram',
          'Cà chua',
        ),
        Ingredient(
          15,
          'gram',
          'Lạc rang',
        ),
        Ingredient(
          150,
          'gram',
          'Rau muống',
        ),
        Ingredient(
          100,
          'gram',
          'Ổi tráng miệng',
        ),
        Ingredient(
          50,
          'gram',
          'Hành lá, rau gia vị',
        ),
      ],
    ),
    Recipe(
      'Bữa tối',
      'assets/images/buatoi.png',
      1,
      [
        Ingredient(
          75,
          'gram',
          'Gạo',
        ),
        Ingredient(
          70,
          'gram',
          'Thịt lợn',
        ),
        Ingredient(
          2,
          'quả',
          'Trứng cút',
        ),
        Ingredient(
          30,
          'gram',
          'Đậu phụ rán',
        ),
        Ingredient(
          2,
          'ml',
          'Dầu ăn',
        ),
        Ingredient(
          100,
          'gram',
          'Su Su',
        ),
        Ingredient(
          50,
          'gram',
          'Rau cải nấu canh',
        ),
        Ingredient(
          100,
          'gram',
          'Thanh long tráng miệng',
        ),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
