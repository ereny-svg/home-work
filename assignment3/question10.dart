void main() {
  Map<String, String> countryCodes = {'EG': 'Egypt'};
  print(countryCodes['EG']);
  countryCodes['QA'] = 'Qatar';
  print(countryCodes.length);
  if (!countryCodes.containsKey('JO')) {
    print('Jordan missing');
  }
}
