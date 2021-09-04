import 'package:bottomnavigationbar/custom/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
      decoration: BoxDecoration(
          color: Color(hexColor("#FFF6E5")),
         ),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile Image
          Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Color(hexColor("#7F3DFF")),
                shape: BoxShape.circle),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/avata.jpg"),
            ),
          ),
          // User Name
          Text(
            "Itachi Uchiha",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(hexColor("#212325"))),
          ),
          // Notification button
          Icon(
            Icons.notifications,
            size: 32,
            color: Color(hexColor("#7F3DFF")),
          )
        ],
      ),
    );
  }
}

