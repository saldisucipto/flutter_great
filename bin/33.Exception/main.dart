/// Exception
/// Saat kita membuat aplikasi, kita tidak akan terhndar dengan yang namanya error
/// Error direpresentasikan dengan istilah exception, dan semua direpresntasikan dalam bentuk class Exception
/// Kita bisa menggunkan class Exception sendiri, atau menggunkan class yang sudah disediakan Dart.
/// Untuk membuat sebuah exception, kita bisa menggunkan kata kunci throw, diikuti dengan object exceptionya.

// contoh class Validation
class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw Exception("Username Is Blank");
    } else if (password == "") {
      throw Exception("Password Anda Kosong");
    }
  }
}

void main(List<String> args) {
  // menggunkan exception
  Validation.validate("", "");
  // akan memberikan hasil :
  /**
   * Unhandled exception:
Exception: Username Is Blank
#0      Validation.validate (file:///D:/FLUTTER/udemy/bin/33.Exception/main.dart:11:7)
#1      main (file:///D:/FLUTTER/udemy/bin/33.Exception/main.dart:20:14)
#2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
   */
}
