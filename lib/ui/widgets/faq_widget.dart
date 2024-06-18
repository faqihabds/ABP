import 'package:flutter/material.dart';
import 'package:weather_app/helpers/custom_colors.dart';
import 'package:weather_app/helpers/utils.dart';

import '../../helpers/strings.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  bool questionFirstVisibility = false;
  bool questionSecondVisibility = false;
  bool questionThirdVisibility = false;
  bool questionFourthVisibility = false;

  @override
  Widget build(BuildContext context) {
    //dynamic dimensions
    double tileHeight = MediaQuery.of(context).size.height / 12;

    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: tileHeight,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                Strings.faq,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            SizedBox(
              height: tileHeight,
            ),
          ],
        ),
        GestureDetector(
          onTap: () => {
            setState(() => questionFirstVisibility = !questionFirstVisibility)
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: CustomColors.lightGrey),
              height: tileHeight,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 36),
                    child: Text(
                      'Apa itu Aplikasi Cuaca Ini?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 36),
                    child: Icon(questionFirstVisibility
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up),
                  ),
                ],
              ),
            ),
          ),
        ),
        questionFirstVisibility
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: CustomColors.lightGrey),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          height: 2.1 //You can set your custom height here
                          ),
                      'Aplikasi cuaca ini adalah sebuah aplikasi mobile yang dirancang untuk memberikan informasi cuaca terkini serta perkiraan cuaca untuk berbagai lokasi di seluruh dunia. Dengan antarmuka yang user-friendly, aplikasi ini memungkinkan pengguna untuk dengan mudah memeriksa kondisi cuaca saat ini, prakiraan cuaca harian dan mingguan, serta informasi lainnya seperti kecepatan angin, kelembapan, dan indeks UV. Aplikasi ini cocok digunakan oleh siapa saja yang ingin tetap up-to-date dengan kondisi cuaca, baik untuk perencanaan aktivitas harian, perjalanan, atau hanya untuk mengetahui cuaca di sekitar mereka.',
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        GestureDetector(
          onTap: () => {
            setState(() => questionSecondVisibility = !questionSecondVisibility)
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: CustomColors.lightGrey),
              height: tileHeight,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36),
                      child: Text(
                        'Apakah Aplikasi Ini Bekerja Tanpa Koneksi Internet?',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 36),
                    child: Icon(questionSecondVisibility
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up),
                  ),
                ],
              ),
            ),
          ),
        ),
        questionSecondVisibility
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: CustomColors.lightGrey),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          height: 2.1 //You can set your custom height here
                          ),
                      'Aplikasi cuaca ini membutuhkan koneksi internet untuk mengambil dan memperbarui data cuaca dari server. Tanpa koneksi internet, aplikasi tidak dapat menampilkan informasi cuaca terkini atau memperbarui data cuaca. Namun, informasi cuaca yang telah diunduh sebelumnya mungkin masih tersedia untuk sementara waktu sampai Anda terhubung kembali ke internet. Oleh karena itu, untuk mendapatkan informasi cuaca yang akurat dan terbaru, pastikan perangkat Anda terhubung ke internet.',
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        GestureDetector(
          onTap: () => {
            setState(() => questionThirdVisibility = !questionThirdVisibility)
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: CustomColors.lightGrey),
              height: tileHeight,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36),
                      child: Text(
                        'Bagaimana cara menggunakan aplikasi cuaca ini untuk memeriksa cuaca di lokasi saya?',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 36),
                    child: Icon(questionThirdVisibility
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up),
                  ),
                ],
              ),
            ),
          ),
        ),
        questionThirdVisibility
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: CustomColors.lightGrey),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          height: 2.1 //You can set your custom height here
                          ),
                      'Untuk memeriksa cuaca di lokasi Anda menggunakan aplikasi ini, cukup ketik nama kota Anda di kolom pencarian. Setelah itu, pilih kota dan negara yang sesuai dari daftar yang muncul. Dengan begitu, Anda dapat melihat informasi cuaca terkini untuk lokasi Anda dengan mudah.',
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        SizedBox(
          height: tileHeight * 2,
        ),
        Container(
          alignment: Alignment.center,
          height: tileHeight * 1.5,
          color: CustomColors.lightGrey,
          child: Text(
            'Tugas Besar ABP - ${Utils.getCurrentYear()}',
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        )
      ],
    );
  }
}
