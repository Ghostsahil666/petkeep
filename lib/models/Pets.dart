class Pet {
  final int petId;
  final int price;
  final String size;
  final double rating;
  final String temperature;
  final String category;
  final String petName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Pet({
    required this.petId,
    required this.price,
    required this.category,
    required this.petName,
    required this.size,
    required this.rating,
    required this.temperature,
    required this.imageURL,
    required this.isFavorated,
    required this.decription,
    required this.isSelected,
  });

  //List of Plants data
  static List<Pet> petList = [
    Pet(
        petId: 0,
        price: 12000,
        category: 'Labrador',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '38 - 39',
        imageURL: 'assets/images/lab1.jpeg',
        isFavorated: true,
        decription: 'The Labrador Retriever, or simply Labrador, '
            'is a British breed of retriever gun dog.',
        isSelected: false),
    Pet(
        petId: 1,
        price: 9000,
        category: 'German shephard',
        petName: 'Pup',
        size: 'small',
        rating: 4,
        temperature: '18 - 35',
        imageURL: 'assets/images/germanpup.jpeg',
        isFavorated: true,
        decription: "",
        isSelected: false),
    Pet(
      petId: 2,
      price: 22,
      category: 'Canine',
      petName: 'Sally',
      size: 'Small',
      rating: 4.5,
      temperature: '23 - 34',
      imageURL: 'assets/images/persiancat.jpg',
      isFavorated: true,
      decription: 'This is a cute labrador.',
      isSelected: false,
    ),
    Pet(
        petId: 3,
        price: 22,
        category: 'Canine',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '23 - 34',
        imageURL: 'assets/images/persiancat.jpg',
        isFavorated: true,
        decription: 'This is a cute labrador.',
        isSelected: false),
    Pet(
        petId: 4,
        price: 22,
        category: 'Canine',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '23 - 34',
        imageURL: 'assets/images/persiancat.jpg',
        isFavorated: true,
        decription: 'This is a cute labrador.',
        isSelected: false),
    Pet(
        petId: 5,
        price: 22,
        category: 'Canine',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '23 - 34',
        imageURL: 'assets/images/persiancat.jpg',
        isFavorated: true,
        decription: 'This is a cute labrador.',
        isSelected: false),
    Pet(
        petId: 6,
        price: 22,
        category: 'Canine',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '23 - 34',
        imageURL: 'assets/images/persiancat.jpg',
        isFavorated: true,
        decription: 'This is a cute labrador.',
        isSelected: false),
    Pet(
        petId: 7,
        price: 22,
        category: 'Canine',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '23 - 34',
        imageURL: 'assets/images/persiancat.jpg',
        isFavorated: true,
        decription: 'This is a cute labrador.',
        isSelected: false),
    Pet(
        petId: 8,
        price: 22,
        category: 'ferry',
        petName: 'Sally',
        size: 'Small',
        rating: 4.5,
        temperature: '23 - 34',
        imageURL: 'assets/images/log1.png',
        isFavorated: true,
        decription: 'This is a cute labrador.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Pet> getFavoritedPets() {
    List<Pet> _travelList = Pet.petList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Pet> addedToCartPets() {
    List<Pet> _selectedPets = Pet.petList;
    return _selectedPets
        .where((element) => element.isSelected == true)
        .toList();
  }
}
