void main() {
  Map<String, String?> ereny = {
    'ereny': null,
    'phone': '0124567788',
  };
  String erenyValue = ereny['ereny'] ?? 'engy';
  String phone = ereny['phone']!.toUpperCase();
  print(erenyValue.toUpperCase());
  print(phone);
  if (erenyValue == 'engy') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}