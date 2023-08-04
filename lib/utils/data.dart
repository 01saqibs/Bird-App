class BirdData{
  final String icon;
  final String name;
  final String size;
  final String pName;
  final String food;
  final String behavior;

  BirdData({required this.icon, required this.name, required this.size, required this.pName, required this.food, required this.behavior});

}

List<BirdData> parrots = [
  BirdData(icon:"assets/images/img.png",name: "Rainbow Lorikeet", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"assets/images/img_1.png",name: "Rose-Ringed Parakeet", size: "26 cm", pName: "Fly Bird", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"assets/images/img_2.png",name: "African Grey", size: "26 cm", pName: "Jangli", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"assets/images/img_3.png",name: "Macaw", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"assets/images/img_4.png",name: "Budgerigar", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
];
List<BirdData> pigeons = [

  BirdData(icon:"images/b2.jpg",name: "Flappy Bird", size: "26 cm", pName: "Fly Bird", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b2.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b3.jpg",name: "Wild Bird", size: "26 cm", pName: "Jangli", food: "Seeds", behavior: "Very Friendly",),
];
List<BirdData>  sparrows = [

  BirdData(icon:"images/b3.jpg",name: "Wild Bird", size: "26 cm", pName: "Jangli", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b2.jpg",name: "Flappy Bird", size: "26 cm", pName: "Fly Bird", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b2.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
];
List<BirdData>  doves = [

  BirdData(icon:"images/b3.jpg",name: "Wild Bird", size: "26 cm", pName: "Jangli", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b2.jpg",name: "Flappy Bird", size: "26 cm", pName: "Fly Bird", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b2.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
];
List<BirdData> allBirds = [
  BirdData(icon:"images/b.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
  BirdData(icon:"images/b2.jpg",name: "Flappy Bird", size: "26 cm", pName: "Fly Bird", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b3.jpg",name: "Wild Bird", size: "26 cm", pName: "Jangli", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b2.jpg",name: "Flappy Bird", size: "26 cm", pName: "Fly Bird", food: "Seeds", behavior: "Very Friendly",),
  BirdData(icon:"images/b2.jpg",name: "Red Neck Parrot", size: "26 cm", pName: "Meeto", food: "Seeds", behavior: "Very Friendly"),
];
class Category{
  final String icon;
  final String name;
  Category({required this.icon, required this.name});
}

List<Category> categories = [
  Category(icon:"images/b.jpg",name: "Parrots"),
  Category(icon:"images/b2.jpg",name: "Pigeons"),
  Category(icon:"images/b3.jpg",name: "Sparrows"),
  Category(icon:"images/b3.jpg",name: "Doves"),
  Category(icon:"images/b2.jpg",name: "All Birds"),
];

class Wallpaper{
  final String icon;

  Wallpaper({required this.icon});
}



