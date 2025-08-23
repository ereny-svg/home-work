void main() {
  Map<String, String?> contact = {
    'name': 'Ereny',
    'phone': null
  };
  String? phone = contact['phone'];
  if (phone == null) {
    print('Phone number is missing.');
  }
  contact['phone'] = '0123456789';
  print(contact['phone']!.length);
}