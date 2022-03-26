import 'package:flutter/material.dart';
import 'package:myapp/pages/second_pages.dart';
import 'package:myapp/pages/widgets/button_gradasi.dart';
import 'package:myapp/pages/widgets/button_ketupat.dart';
import 'package:myapp/pages/widgets/card_widgets.dart';
import 'package:myapp/pages/widgets/custom-appbar.dart';
import 'package:myapp/pages/widgets/gradasi_opasity.dart';
import 'package:myapp/pages/widgets/hero_animation.dart';
import 'package:myapp/pages/widgets/mainkan_musik.dart';
import 'package:myapp/pages/widgets/multi_state_propider.dart';
import 'package:myapp/pages/widgets/nav_route.dart';
import 'package:myapp/pages/widgets/qr_code.dart';
import 'package:myapp/pages/widgets/responseive_widgtes.dart';
import 'package:myapp/pages/widgets/state_pripeder.dart';
import 'package:myapp/pages/widgets/tab_bar.dart';
import 'package:myapp/pages/widgets/textfiels_widgtes.dart';

class MainPages extends StatelessWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog Widgtes"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.anchor,
              color: Colors.black54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.black54,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.cyan],
              begin: FractionalOffset.bottomRight,
              end: FractionalOffset.topLeft,
            ),
            // image: DecorationImage(
            //   image: AssetImage("assets/patern/pattern.png"),
            //   fit: BoxFit.contain,
            //   repeat: ImageRepeat.repeat,
            // ),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: const [
          Navigasi(
            classTujuan: SecondPages(),
            namaNavigasi: "Second Pages",
          ),
          Navigasi(
            classTujuan: CardWidgets(),
            namaNavigasi: "Card Widgtes",
          ),
          Navigasi(
            classTujuan: FormWidgets(),
            namaNavigasi: "Form Widgtes",
          ),
          Navigasi(
            classTujuan: ResponisveWidgets(),
            namaNavigasi: "Media Query",
          ),
          Navigasi(
            classTujuan: ButtonGradasi(),
            namaNavigasi: "Ink Well",
          ),
          Navigasi(
            classTujuan: HeroAnimations(),
            namaNavigasi: "ClipRRect Widgets",
          ),
          Navigasi(
            classTujuan: CustomAppBar(),
            namaNavigasi: "Custom AppBar",
          ),
          Navigasi(
            classTujuan: TabAppBar(),
            namaNavigasi: "Tab Bar Widgets",
          ),
          Navigasi(
            classTujuan: QrCode(),
            namaNavigasi: "QR Code",
          ),
          Navigasi(
            classTujuan: ButtonKetupat(),
            namaNavigasi: "Button Ketupat",
          ),
          Navigasi(
            classTujuan: GradasiOpasiti(),
            namaNavigasi: "Gradasi Opasity",
          ),
          Navigasi(
            classTujuan: MainkanMusik(),
            namaNavigasi: "Playing Music",
          ),
          Navigasi(
            classTujuan: ProPider(),
            namaNavigasi: "Provider State",
          ),
          Navigasi(
              classTujuan: MultiStatePropider(),
              namaNavigasi: "Multi Provider State")
        ],
      ),
    );
  }
}
