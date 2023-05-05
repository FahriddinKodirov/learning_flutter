import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Switch(
          // This bool value toggles the switch.
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
      ),
    );
  }
}


// Xususiyatlari
// activeColor → Rang ?
// Ushbu kalit yoqilganda ishlatiladigan rang.
// final
// activeThumbImage → ImageProvider < Ob'ekt > ?
// Kalit yoqilganda, bu kalitning bosh barmog'ida foydalanish uchun rasm.
// final
// activeTrackColor → Rang ?
// Ushbu kalit yoqilganda trekda ishlatiladigan rang.
// final
// avtofokus → bool
// Agar ushbu vidjet uning doirasidagi boshqa hech qanday tugun hozircha fokuslanmagan bo‘lsa, dastlabki fokus sifatida tanlansa, to‘g‘ri.
// final
// dragStartBehavior → DragStartBehavior
// Drag start xatti-harakatini boshqarish usulini aniqlaydi.
// final
// focusColor → Rang ?
// Kirish fokusiga ega boʻlgan tugma Materialining rangi .
// final
// focusNode → FocusNode ?
// Ushbu vidjet uchun fokus tugun sifatida foydalanish uchun ixtiyoriy fokus tugun.
// final
// hashCode → int
// Ushbu ob'ekt uchun xesh kodi.
// faqat o'qishmeros qilib olingan
// hoverColor → Rang ?
// Tugma ustiga kursor olib kelinayotganda materialning rangi .
// final
// inactiveThumbColor → Rang ?
// Ushbu kalit o'chirilgan bo'lsa, bosh barmoqda ishlatiladigan rang.
// final
// inactiveThumbImage → ImageProvider < Object > ?
// Kalit o'chirilgan bo'lsa, bu kalitning bosh barmog'ida foydalanish uchun rasm.
// final
// inactiveTrackColor → Rang ?
// Ushbu kalit o'chirilganda trekda ishlatiladigan rang.
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
// onActiveThumbImageError → ImageErrorListener ?
// activeThumbImage yuklanganda chiqarilgan xatolar uchun ixtiyoriy xatolik qayta qo'ng'iroq .
// final
// onChanged → ValueChanged < bool > ?
// Foydalanuvchi kalitni yoqish yoki o'chirishda chaqiriladi.
// final
// onFocusChange → ValueChanged < bool > ?
// Fokus o'zgarganda ishlov beruvchi chaqiriladi.
// final
// onInactiveThumbImageError → ImageErrorListener ?
// inactiveThumbImage yuklanganda chiqarilgan xatolar uchun ixtiyoriy xato qayta qo'ng'iroq .
// final
// overlayColor → MaterialStateProperty < Rang ? > ?
// Kommutatorning materiali uchun rang .
// final
// ish vaqtiType → Type
// Ob'ektning ish vaqti turini ko'rsatish.
// faqat o'qishmeros qilib olingan
// splashRadius → double ?
// Dumaloq Material siyoh javobining chayqalish radiusi.
// final
// thumbColor → MaterialStateProperty < Rang ? > ?
// Ushbu Switch bosh barmog'ining rangi .
// final
// thumbIcon → MaterialStateProperty < Belgisi ? > ?
// Ushbu kalitning bosh barmog'idagi foydalanish uchun belgi
// final
// trackColor → MaterialStateProperty < Rang ? > ?
// Ushbu Switch trekining rangi .
// final
// qiymat → bool
// Bu kalit yoqilgan yoki o'chirilgan.
// final