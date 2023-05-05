import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class RadioSinmplePage extends StatefulWidget {
  const RadioSinmplePage({super.key});

  @override
  State<RadioSinmplePage> createState() => _RadioSinmplePageState();
}

class _RadioSinmplePageState extends State<RadioSinmplePage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}


// Xususiyatlari
// activeColor → Rang ?
// Ushbu radio tugma tanlanganda foydalaniladigan rang.
// final
// avtofokus → bool
// Agar ushbu vidjet uning doirasidagi boshqa hech qanday tugun hozircha fokuslanmagan bo‘lsa, dastlabki fokus sifatida tanlansa, to‘g‘ri.
// final
// fillColor → MaterialStateProperty < Rang ? > ?
// Barcha MaterialState larda radio tugmachasini to'ldiradigan rang .
// final
// focusColor → Rang ?
// Kirish fokusiga ega bo'lgan radio materialining rangi .
// final
// focusNode → FocusNode ?
// Ushbu vidjet uchun fokus tugun sifatida foydalanish uchun ixtiyoriy fokus tugun.
// final
// groupValue → T?
// Radio tugmalar guruhi uchun hozirda tanlangan qiymat.
// final
// hashCode → int
// Ushbu ob'ekt uchun xesh kodi.
// faqat o'qishmeros qilib olingan
// hoverColor → Rang ?
// Ko‘rsatgich uning ustida tursa, radio materialining rangi.
// final
// kalit → kalit ?
// Bir vidjet daraxtdagi boshqa vidjet o‘rnini bosishini boshqaradi.
// finalmeros qilib olingan
// materialTapTargetSize → MaterialTapTargetSize ?
// Tegish maqsadining minimal hajmini sozlaydi.
// final
// sichqoncha kursori → sichqoncha kursori ?
// Sichqoncha koʻrsatkichi vidjetga kirganda yoki kursorni oʻrnatayotganda kursor.
// final
// onChanged → ValueChanged < T? > ?
// Foydalanuvchi ushbu radio tugmachasini tanlaganida chaqiriladi.
// final
// overlayColor → MaterialStateProperty < Rang ? > ?
// Belgilash katagi Material uchun rang .
// final
// ish vaqtiType → Type
// Ob'ektning ish vaqti turini ko'rsatish.
// faqat o'qishmeros qilib olingan
// splashRadius → double ?
// Dumaloq Material siyoh javobining chayqalish radiusi.
// final
// almashtiriladigan → bool
// Agar ushbu radio tugma tanlanganda uni yana tanlab, uni noaniq holatga qaytarishga ruxsat berilsa, rost qiymatini o‘rnating.
// final
// qiymat → T
// Ushbu radio tugma bilan ifodalangan qiymat.
// final
// VisualDensity → VisualDensity ?
// Radioning joylashuvi qanchalik ixcham bo'lishini belgilaydi.
// final