class User {
  String path;
  String name;
  String? rate;

  User({required this.path, required this.name, this.rate});
}


List<User> users = [
  User(path: '1', name: 'Ahmed', rate: '4,5'),
  User(path: '2', name: 'Omar', rate: '4,5'),
  User(path: '3', name: 'Ahmed', rate: '4,5'),
  User(path: '4', name: 'Ahmed', rate: '4,5'),
  User(path: '5', name: 'Ahmed', rate: '4,5'),
  User(path: '6', name: 'Ahmed', rate: '4,5'),
  User(path: '7', name: 'Ahmed', rate: '4,5'),
  User(path: '8', name: 'Ahmed', rate: '4,5'),
  User(path: '9', name: 'Ahmed', rate: '4,5'),
];

List<User> usersb = [
  User(path: '10', name: 'Ahmed', rate: '80'),
  User(path: '11', name: 'Ahmed', rate: '80'),
  User(path: '12', name: 'Ahmed', rate: '80'),
  User(path: '13', name: 'Ahmed', rate: '80'),
  User(path: '14', name: 'Ahmed', rate: '80'),
  User(path: '15', name: 'Ahmed', rate: '80'),
  User(path: '16', name: 'Ahmed', rate: '80'),
  User(path: '17', name: 'Ahmed', rate: '80'),
  User(path: '18', name: 'Ahmed', rate: '80'),
];

List<User> products = [
  User(path: 'product', name: 'Designing'),
  User(path: 'product', name: 'Content'),
  User(path: 'product', name: 'Voice services'),
  User(path: 'product', name: 'marketing '),
  User(path: 'product', name: 'Photography'),
  User(path: 'product', name: 'Flyers'),
];
