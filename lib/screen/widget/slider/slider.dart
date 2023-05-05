import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            value: _currentSliderPrimaryValue,
            secondaryTrackValue: _currentSliderSecondaryValue,
            label: _currentSliderPrimaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderPrimaryValue = value;
              });
            },
          ),
          Slider(
            value: _currentSliderSecondaryValue,
            label: _currentSliderSecondaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderSecondaryValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}


// Xususiyatlari
// activeColor → Rang ?
// Slayder trekining faol bo'lgan qismi uchun foydalaniladigan rang.
// final
// avtofokus → bool
// Agar ushbu vidjet uning doirasidagi boshqa hech qanday tugun hozircha fokuslanmagan bo‘lsa, dastlabki fokus sifatida tanlansa, to‘g‘ri.
// final
// bo'limlar → int ?
// Diskret bo'linishlar soni.
// final
// focusNode → FocusNode ?
// Ushbu vidjet uchun fokus tugun sifatida foydalanish uchun ixtiyoriy fokus tugun.
// final
// hashCode → int
// Ushbu ob'ekt uchun xesh kodi.
// faqat o'qishmeros qilib olingan
// inactiveColor → Rang ?
// Slayder trekining faol bo'lmagan qismi uchun rang.
// final
// kalit → kalit ?
// Bir vidjet daraxtdagi boshqa vidjet o‘rnini bosishini boshqaradi.
// finalmeros qilib olingan
// label → String ?
// Slayder faol va SliderThemeData.showValueIndicator bajarilganda slayder ustida ko'rsatiladigan yorliq.
// final
// maksimal → ikki barobar
// Foydalanuvchi tanlashi mumkin bo'lgan maksimal qiymat.
// final
// min → ikki barobar
// Foydalanuvchi tanlashi mumkin bo'lgan minimal qiymat.
// final
// sichqoncha kursori → sichqoncha kursori ?
// Sichqoncha koʻrsatkichi vidjetga kirganda yoki kursorni oʻrnatayotganda kursor.
// final
// onChanged → ValueChanged < double > ?
// Foydalanuvchi sudrab slayder uchun yangi qiymatni tanlayotganda, tortish vaqtida chaqiriladi.
// final
// onChangeEnd → ValueChanged < double > ?
// Foydalanuvchi slayder uchun yangi qiymat tanlashni tugatgandan so'ng chaqiriladi.
// final
// onChangeStart → ValueChanged < double > ?
// Foydalanuvchi slayder uchun yangi qiymat tanlashni boshlaganda chaqiriladi.
// final
// overlayColor → MaterialStateProperty < Rang ? > ?
// Odatda slayderning bosh barmog'i diqqat markazida bo'lganini, sichqonchani ko'tarilganini yoki tortilganligini ko'rsatish uchun ishlatiladigan ta'kidlash rangi.
// final
// ish vaqtiType → Type
// Ob'ektning ish vaqti turini ko'rsatish.
// faqat o'qishmeros qilib olingan
// ikkinchi darajaliActiveColor → Rang ?
// Slayder trekining bosh barmoq va Slider.secondaryTrackValue orasidagi qismi uchun foydalaniladigan rang .
// final
// secondaryTrackValue → double ?
// Ushbu slayder uchun ikkinchi darajali trek qiymati.
// final
// semanticFormatterCallback → SemanticFormatterCallback ?
// Qayta qo'ng'iroq slayder qiymatidan semantik qiymat yaratish uchun ishlatiladi.
// final
// thumbColor → Rang ?
// Bosh barmog'ining rangi.
// final
// qiymat → ikki barobar
// Ushbu slayder uchun hozirda tanlangan qiymat.
// final