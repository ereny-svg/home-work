class Solution {
  bool isPalindrome(String s) {
    String cleaned = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    String reversed = cleaned.split('').reversed.join();
    return cleaned == reversed;
  }
}