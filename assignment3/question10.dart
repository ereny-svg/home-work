void main() {
  Map<String, String> countries = {
    'EG': 'Egypt',
  };
  print(countries['EG']);
  countries['QA'] = 'Qatar';
  print(countries.length);
  if (!countries.containsKey('JO')) {
    print('Jordan missing');
  }
}