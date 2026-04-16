import 'package:flutter/material.dart';
import 'package:pertemuan_4/widgets/chip_widget.dart';
import 'package:pertemuan_4/widgets/header_widget.dart';
import 'package:pertemuan_4/widgets/quest_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Niggs',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "The Niggs",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              HeaderWidget(name: "Ngger", level: 999, role: "Blacker"),
              const SizedBox(height: 8),
              Row(
                spacing: 8,
                children: [
                  ChipWidget(
                    label: "HP: ",
                    ikon: Icons.favorite,
                    warna: const Color.fromARGB(255, 255, 64, 64),
                    nilai: 100,
                  ),
                  ChipWidget(
                    label: "Mana: ",
                    ikon: Icons.balance,
                    warna: const Color.fromARGB(255, 0, 179, 255),
                    nilai: 100,
                  ),
                  ChipWidget(
                    label: "Strengh: ",
                    ikon: Icons.strikethrough_s_rounded,
                    warna: const Color.fromARGB(255, 116, 249, 0),
                    nilai: 100,
                  ),
                ],
              ),
              Text("Quests", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
              const SizedBox(height: 8),
              QuestWidget(title: "Kalahkan Para Whiter", reward: "MAX Exp, 999999999 Gold",)
            ],
            
          ),
        ),
      ),
    );
  }
}
