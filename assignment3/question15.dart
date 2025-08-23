void question16() {
  String path = '/products';

  switch (path) {
    case '/':
      print('/');
      break;
    case '/products':
      print('Products');
      break;
    case '/profile':
      print('Profile');
      break;
    default:
      print('Error');
  }
}