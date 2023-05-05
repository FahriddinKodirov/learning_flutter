import 'package:flutter/material.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}


// Xususiyatlari
// activeColor → Rang ?
// Bu belgilash katakchasi belgilanganda foydalaniladigan rang.
// final
// avtofokus → bool
// Agar ushbu vidjet uning doirasidagi boshqa hech qanday tugun hozircha fokuslanmagan bo‘lsa, dastlabki fokus sifatida tanlansa, to‘g‘ri.
// final
// checkColor → Rang ?
// Ushbu katakcha belgilansa, tekshirish belgisi uchun foydalaniladigan rang.
// final
// fillColor → MaterialStateProperty < Rang ? > ?
// Barcha MaterialState larda belgilash katakchasini to'ldiradigan rang .
// final
// focusColor → Rang ?
// "Material " katagiga kirish fokusiga ega bo'lgandagi rang .
// final
// focusNode → FocusNode ?
// Ushbu vidjet uchun fokus tugun sifatida foydalanish uchun ixtiyoriy fokus tugun.
// final
// hashCode → int
// Ushbu ob'ekt uchun xesh kodi.
// faqat o'qishmeros qilib olingan
// hoverColor → Rang ?
// Ko'rsatkich ustiga kursor olib kelinayotganda, " Material" katagiga belgi qo'yiladigan rang .
// final
// isError → bool
// Agar bu belgi xatolik holatini koʻrsatmoqchi boʻlsa, rost.
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
// onChanged → ValueChanged < bool ? > ?
// Belgilash qutisi qiymati o'zgarishi kerak bo'lganda chaqiriladi.
// final
// overlayColor → MaterialStateProperty < Rang ? > ?
// Belgilash katagi Material uchun rang .
// final
// ish vaqtiType → Type
// Ob'ektning ish vaqti turini ko'rsatish.
// faqat o'qishmeros qilib olingan
// shakl → OutlinedBorder ?
// Belgilash katagining shakli Material .
// final
// yon → BorderSide ?
// Belgilash qutisi chegarasining rangi va kengligi.
// final
// splashRadius → double ?
// Dumaloq Material siyoh javobining chayqalish radiusi.
// final
// tristate → bool
// Agar rost bo'lsa, tasdiqlash qutisi qiymati true, false yoki null bo'lishi mumkin.
// final
// qiymat → bool ?
// Bu belgilash katakchasi belgilanganmi yoki yo'qmi.
// final
// VisualDensity → VisualDensity ?
// Belgilash qutisi tartibi qanchalik ixcham bo'lishini belgilaydi.
// final