class Product {
  final String image;
  final int price;
  final String address;
  final int bedrooms;
  final int bathrooms;
  final int area;
  final int garage;
  final String description;

  Product({
    required this.image,
    required this.price,
    required this.address,
    required this.bedrooms,
    required this.bathrooms,
    required this.area,
    required this.garage,
    required this.description,
  });

  static final allProducts = [
    Product(
        image: 'assets/img/home-2.jpg',
        price: 500000,
        address: 'Mirpur, Road 2201, BD',
        bedrooms: 5,
        bathrooms: 2,
        area: 1241,
        garage: 1,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula, nibh in facilisis ultricies, quam ligula pulvinar lorem, ut dictum metus mi ac libero. Nam auctor tincidunt massa, et fringilla tortor viverra eget. Aenean at odio quis leo rhoncus condimentum. Curabitur porttitor nunc ac aliquet pharetra. Pellentesque at suscipit leo, aliquam sagittis ante. Morbi pellentesque viverra massa. Curabitur vitae viverra sapien, ac facilisis est. Morbi sed molestie arcu. Aenean bibendum purus vel faucibus dictum. Aliquam egestas erat vitae metus euismod faucibus. Sed quis lectus quis felis ultricies vulputate vitae at augue. Praesent quis efficitur ex. Fusce purus enim, accumsan et turpis a, auctor ullamcorper nulla. Nullam efficitur sit amet est et vulputate. Morbi pretium vitae urna eget volutpat.'),
    Product(
        image: 'assets/img/home-1.jpg',
        price: 2000000,
        address: 'Gazipur, Road 1000, BD',
        bedrooms: 9,
        bathrooms: 4,
        area: 2543,
        garage: 2,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula, nibh in facilisis ultricies, quam ligula pulvinar lorem, ut dictum metus mi ac libero. Nam auctor tincidunt massa, et fringilla tortor viverra eget. Aenean at odio quis leo rhoncus condimentum. Curabitur porttitor nunc ac aliquet pharetra. Pellentesque at suscipit leo, aliquam sagittis ante. Morbi pellentesque viverra massa. Curabitur vitae viverra sapien, ac facilisis est. Morbi sed molestie arcu. Aenean bibendum purus vel faucibus dictum. Aliquam egestas erat vitae metus euismod faucibus. Sed quis lectus quis felis ultricies vulputate vitae at augue. Praesent quis efficitur ex. Fusce purus enim, accumsan et turpis a, auctor ullamcorper nulla. Nullam efficitur sit amet est et vulputate. Morbi pretium vitae urna eget volutpat.'),
  ];
  static final catagory = [
    {'title': '<\$220,0000'},
    {'title': 'For Sale'},
    {'title': '3-4 Beds'},
    {'title': '>1000 sqft'},
  ];
}
