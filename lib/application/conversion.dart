import 'dart:convert';

class Conversion {
  static String hashStringToHex(String input) {
    
    List<int> bytes = utf8.encode(input);                 // String -> <int>
    int hash = bytes.fold(0, (sum, byte) => sum + byte);  // <int> -> int
    int hexValue = hash % 0xFFFFFF;                       // remainder of 0xFFF
    return hexValue.toRadixString(16).padLeft(6, '0');    // int (b_10) -> String (b_16)
  }

  static String invertHexString(String hex) {
    return hex.split('').map((char) {
      int value = int.parse(char, radix: 16);
      int invertedValue = 15 - value;
      return invertedValue.toRadixString(16);
    }).join();
  }

  static String textToNInitials(String text, int numInitials) {
    return text.split(' ').fold('', (carry, val) {
      return carry.length == numInitials ? carry : carry + val[0];
    });
  }
}