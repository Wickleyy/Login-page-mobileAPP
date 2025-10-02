// file: success_page.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  Future<void> _openLMS() async {
    const url = "https://lms.universitas.ac.id"; // ganti dengan link LMS asli
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pendaftaran Berhasil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 100),
            const SizedBox(height: 20),
            const Text(
              "Pendaftaran berhasil!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Silakan upload bukti pendaftaran ke LMS."),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _openLMS,
              child: const Text("Upload ke LMS"),
            ),
          ],
        ),
      ),
    );
  }
}
