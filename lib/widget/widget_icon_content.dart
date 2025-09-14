import 'package:flutter/material.dart';
import '../theme/color.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.label,
    this.color = const Color(0xFF8D8E98), // เพิ่มสีเริ่มต้น
  });

  final IconData icon;
  final String label;
  final Color color; // เพิ่ม property สำหรับสี

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: color, // ใช้สีที่รับเข้ามา
        ),
        const SizedBox(height: 15.0),
        Text(
          label,
          style: TextStyle(
            // ใช้ TextStyle เพื่อเปลี่ยนสีข้อความด้วย
            fontSize: 18.0,
            color: color, // ใช้สีที่รับเข้ามา
          ),
        ),
      ],
    );
  }
}
