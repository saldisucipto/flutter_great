/// Mixin
/// Mixin merupakan reusable code yang bisa digunakan di class lain tanpa harus terkendala dengan pewarisan
/// Mixin mirip melakukan copy paste code di beberapa tempat, namun denga cara yang lebih baik
/// Dengan mixin kita bisa membuat code yang sama pada beberpa class
/// Satu class bis amenggunkan lebih dari 1 Mixin sama seperti interfaces
/// Untuk membuat Mixin kita dapat menggunakan kata kunci mixin
/// Pada child class kita menggunkan keyword with sebelum nama mixinya

// Contoh
mixin Playable {
  String? nama;

  void play() {
    print('Play $nama');
  }
}

mixin Stopable {
  String? nama;

  void stop() {
    print('Stop $nama');
  }
}

mixin Display on Video {
  void diplsay() {
    print("Menampilkan Display Video");
  }
}

// Membtasi mixin
/// Secara default smua class bisa menggunakn Mixin
/// Namun jika kita ingin membatasi class hanya turnan saja maka kita menambhkan kata kunci on contohnya

// menggunkan mixin
class Video with Playable, Stopable {
  String? nama;

  Video(this.nama);
}

// menggukan mixin
class VideoClip extends Video with Display, Playable, Stopable {
  VideoClip(String nama) : super(nama);

  @override
  void diplsay() {
    super.diplsay();
  }

  @override
  void play() {
    // TODO: implement play
    super.play();
  }

  @override
  void stop() {
    // TODO: implement stop
    super.stop();
  }
}

// menggunakan mixin
class Audio with Playable, Stopable {}

void main(List<String> args) {
  var video = VideoClip("NOAH");
  video.diplsay();
  video.play();
  video.stop();
}
