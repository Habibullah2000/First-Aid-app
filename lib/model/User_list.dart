// ignore_for_file: file_names, non_constant_identifier_names

class UserList {
  final String image;
  final String name;

  UserList({
    required this.image,
    required this.name,
  });
}

final Userlist = <UserList>[
  UserList(image: 'images/1.jpg', name: 'Bleeding Nose'),
  UserList(image: 'images/2.jpg', name: 'Bleeding Ear'),
  UserList(image: 'images/3.jpg', name: 'Animal bites'),
  UserList(image: 'images/4.jpg', name: 'Burnt'),
  UserList(image: 'images/5.jpg', name: 'Sting'),
  UserList(image: 'images/6.jpg', name: 'Chance'),
  UserList(image: 'images/7.jpg', name: 'Bite'),
];
