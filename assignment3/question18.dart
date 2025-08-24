void main() {
  Map<String, dynamic> environment = {
    'envi1': null,
    'envi2': 'temperature',
  };
  String value1 = environment['envi1'] ?? 'soil';
  environment['envi1'] = 'soil';
  print(value1.toUpperCase());
  if (environment['envi1'] == null) {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
