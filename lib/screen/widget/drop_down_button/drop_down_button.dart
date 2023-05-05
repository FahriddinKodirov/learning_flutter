import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Xususiyatlari
// alignment → AlignmentGeometry
// Maslahat yoki tanlangan element tugma ichida qanday joylashishini belgilaydi.
// final
// avtofokus → bool
// Agar ushbu vidjet uning doirasidagi boshqa hech qanday tugun hozircha fokuslanmagan bo‘lsa, dastlabki fokus sifatida tanlansa, to‘g‘ri.
// final
// chegaraRadius → BorderRadius ?
// Menyuning yumaloq to'rtburchak shaklining burchak radiuslarini belgilaydi.
// final
// disabledMaslahat → Vidjet ?
// Ochiladigan ro'yxat o'chirilganda ko'rsatiladigan afzal ko'riladigan to'ldiruvchi vidjet.
// final
// ochiladigan rang → Rang ?
// Ochiladigan menyuning fon rangi.
// final
// balandlik → int
// Menyu ochilganda joylashtiriladigan z-koordinata.
// final
// Feedback → bool ?
// Aniqlangan imo-ishoralar akustik va/yoki haptik fikr bildirishi kerakmi.
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
// maslahat → Vidjet ?
// Ochiladigan tugma orqali ko'rsatiladigan to'ldiruvchi vidjet.
// final
// belgi → Vidjet ?
// Ochiladigan tugma belgisi uchun foydalaniladigan vidjet.
// final
// iconDisabledColor → Rang ?
// Agar bu tugma o'chirilgan bo'lsa, ya'ni onChanged bo'lsa, piktogrammaning har qanday avlodi rangi null.
// final
// iconEnabledColor → Rang ?
// Agar bu tugma yoqilgan bo'lsa, ya'ni onChanged belgilangan bo'lsa, ikonaning har qanday Icon avlodining rangi .
// final
// iconSize → ikki barobar
// Ochiladigan tugmaning pastga o'q belgisi tugmasi uchun foydalaniladigan o'lcham.
// final
// isDense → bool
// Tugma balandligini kamaytiring.
// final
// isExpanded → bool
// Ochiladigan menyuning ichki tarkibini uning asosiy qismini gorizontal ravishda to'ldirish uchun o'rnating.
// final
// itemHeight → double ?
// Agar null bo'lsa, menyu elementining balandligi har bir menyu elementining ichki balandligiga qarab o'zgaradi.
// final
// elementlar → Ro'yxat < DropdownMenuItem < T > > ?
// Foydalanuvchi tanlashi mumkin bo'lgan elementlar ro'yxati.
// final
// kalit → kalit ?
// Bir vidjet daraxtdagi boshqa vidjet o‘rnini bosishini boshqaradi.
// finalmeros qilib olingan
// menuMaxHeight → double ?
// Menyuning maksimal balandligi.
// final
// onChanged → ValueChanged < T? > ?
// Foydalanuvchi elementni tanlaganida chaqiriladi.
// final
// onTap → VoidCallback ?
// Ochiladigan tugma bosilganda chaqiriladi.
// final
// ish vaqtiType → Type
// Ob'ektning ish vaqti turini ko'rsatish.
// faqat o'qishmeros qilib olingan
// selectedItemBuilder → DropdownButtonBuilder ?
// Ob'ektlardagi DropdownMenuItem s mos keladigan ochiladigan tugmalarni sozlash uchun quruvchi .
// final
// uslub → TextStyle ?
// Ochiladigan tugmadagi matn uchun foydalaniladigan matn uslubi va tugmani bosganingizda paydo bo'ladigan ochiladigan menyu.
// final
// tagiga chizish → Vidjet ?
// Ochiladigan tugmaning tagiga chizish uchun foydalaniladigan vidjet.
// final
// qiymat → T?
// Hozirda tanlangan DropdownMenuItem qiymati .
// final