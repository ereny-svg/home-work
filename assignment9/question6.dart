void main() {
  print(check("()"));     
  print(check("()[]{}")); 
  print(check("(]"));     
  print(check("([)]"));   
  print(check("{[]}"));   
}

bool check(String s) {
  while (s.contains("()") || s.contains("{}") || s.contains("[]")) {
    s = s.replaceAll("()", "")
         .replaceAll("{}", "")
         .replaceAll("[]", "");
  }
  return s.isEmpty;
}
