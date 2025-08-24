void main() {
  String path = '/';
  Map<String, String> pathes = {
    '/': 'splash screen',
    'products': 'home screen',
    'profile': 'profile screen',
    'other': 'edit screen',
  };
  switch (path) {
    case '/':
      print(pathes['/']);
      break;

    case 'products':
      print(pathes['products']);
      break;

    case 'profile':
      print(pathes['profile']);
      break;

    case 'other':
      print(pathes['other']);
      break;
  }
}
