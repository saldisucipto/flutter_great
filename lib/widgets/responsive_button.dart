import 'package:flutter/material.dart';
import 'package:greatapp/misc/color.dart';

class ResposiveButton extends StatelessWidget {
  // fiela yang ada pada Button Responsive Class
  bool? isResponsive;
  double? width;

  /// Menggunkan ? implementasi dari null safety yang menandakan variable tersebut dapat bernilai null
  ResposiveButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  /// Constructor class ini memiliki default value pada nilai responsive yang bernilai false (pada defualtnya)

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppsColor.buttonBackground,
      ),

      ///Kenapa height kita tidak masukan ke dalam Constructor karena tinggi button semua pada aplikasi adalah sama
      child: Row(
        children: [
          Image.asset('assets/images/buttons-arrows.png'),
        ],
      ),
    );
  }
}
