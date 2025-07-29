import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box extends StatelessWidget {
  final String name;
  final String imagePath;
  final Function(BuildContext)? onTap;

  const Box({
    super.key,
    required this.name,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(3, 3),
                blurRadius: 8,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-3, -3),
                blurRadius: 8,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              splashColor: const Color(0xFFDAE0F0),
              highlightColor: const Color(0xFFDAE0F0),
              onTap: () {
                if (onTap != null) onTap!(context);
              },
              child: Padding(
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.width * 0.02,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            softWrap: true,
                            name,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
