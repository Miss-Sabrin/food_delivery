class UnboardContent{
  String image;
  String title;
  String description;

  UnboardContent({required this.image ,required this.title,required this.description});
}

List <UnboardContent> content=[
  UnboardContent(image: 'images/screen1.png', title: 'select from our\n    best menu', description: 'pick food from our menu'),
  UnboardContent(image: 'images/screen2.png', title: 'esay and online payment', description:"pick food from our menu" ),
  UnboardContent(image: 'images/screen3.png', title: 'Quick Delivry at your /n Doorsetp', description: 'pick food from our menu')

];