import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryInSearch extends StatelessWidget {
  final String categoryname;
  const CategoryInSearch({
    Key? key,
    required this.categoryname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          categoryname,
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
