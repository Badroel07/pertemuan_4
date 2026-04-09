import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  const QuestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red.withAlpha(75),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color.fromARGB(255, 208, 208, 208).withAlpha(80),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withAlpha(50),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Icon(Icons.task_alt, color: Colors.purpleAccent[100],),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Defeat the Dragon",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Reward: 500 XP, 100 Gold",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ))
          ],
        ),
      ),
    );
  }
}