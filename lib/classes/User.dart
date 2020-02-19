class User {
  int id;
  String name;
  String phoneNo;
  String imgUrl;

  User({
    this.id,
    this.name,
    this.phoneNo,
    this.imgUrl,
  });
}

User afaq = User(
  id: 1,
  name: 'Afaq',
  phoneNo: '03435315898',
  imgUrl: 'assets/images/afaq.jpg',
);

User zeeshan = User(
  id: 2,
  name: 'Zeeshan',
  phoneNo: '03435315898',
  imgUrl: 'assets/images/zeeshan.jpg',
);

User prince = User(
  id: 1,
  name: 'Prince',
  phoneNo: '03435315898',
  imgUrl: 'assets/images/prince.jpg',
);

User bhalu = User(
  id: 1,
  name: 'Bhalu',
  phoneNo: '03435315898',
  imgUrl: 'assets/images/bhalu.jpg',
);

List<User> users = [afaq, zeeshan, prince, bhalu];
List<User> online = [afaq, zeeshan, prince, bhalu, prince, bhalu];
