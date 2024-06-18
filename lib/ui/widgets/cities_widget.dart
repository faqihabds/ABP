import 'package:flutter/material.dart';
import 'package:weather_app/helpers/strings.dart';

import 'city_card.dart';

class CitiesGrid extends StatelessWidget {
  const CitiesGrid({
    Key? key,
    required this.onBaliPress,
    required this.onSemarangPress,
    required this.onSurabayaPress,
    required this.onBandungPress,
  }) : super(key: key);

  final VoidCallback onBaliPress;
  final VoidCallback onBandungPress;
  final VoidCallback onSurabayaPress;
  final VoidCallback onSemarangPress;

  @override
  Widget build(BuildContext context) {
    final double cardHeight = MediaQuery.of(context).size.height / 3;

    return Column(
      children: [
        const SizedBox(height: 70),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            Strings.popularcitiesTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        const SizedBox(height: 35),
        CityCard(
            cardHeight: cardHeight,
            cityImg: 'assets/images/bg_bali.jpg',
            cityName: 'Bali',
            onCityTap: onBaliPress),
        CityCard(
            cardHeight: cardHeight,
            cityImg: 'assets/images/bg_bandung.jpg',
            cityName: 'Bandung',
            onCityTap: onBandungPress),
        CityCard(
            cardHeight: cardHeight,
            cityImg: 'assets/images/bg_surabaya.jpg',
            cityName: 'Surabaya',
            onCityTap: onSurabayaPress),
        CityCard(
            cardHeight: cardHeight,
            cityImg: 'assets/images/bg_semarang.jpg',
            cityName: 'Semarang',
            onCityTap: onSemarangPress),
      ],
    );
  }
}
