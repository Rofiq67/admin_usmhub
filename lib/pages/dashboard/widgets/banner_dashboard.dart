import 'package:flutter/material.dart';

class BannerDashboard extends StatelessWidget {
  const BannerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xff20214E),
            Color(0xff3E4095),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset('assets/images/logo_yys.png'),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset('assets/images/logo_usm.png'),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset('assets/images/logo_km.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 740,
            child: const Text(
              'Suara Mahasiswa: Menyuarakan Aspirasi demi Kemajuan Universitas Semarang Bersama Kita Semua',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.48,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
