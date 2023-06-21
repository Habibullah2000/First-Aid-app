class FirstAid {
  final String image;
  final String name;

  FirstAid({required this.image, required this.name});
}

final list = <FirstAid>[
  FirstAid(image: 'images/cpr.jpg', name: 'CPR'),
  FirstAid(image: 'images/poison.jpg', name: 'Poison'),
  FirstAid(image: 'images/bleeding.jpg', name: 'Bleeding'),
  FirstAid(image: 'images/stings.jpg', name: 'Stings'),
  FirstAid(image: 'images/respiratory.jpg', name: 'Respiratory'),
  FirstAid(image: 'images/heatandcold.jpg', name: 'Heat & Cold'),
];
