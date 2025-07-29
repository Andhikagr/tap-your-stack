import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:popover/popover.dart';
import 'package:stack_play/widget/box.dart';
import 'package:stack_play/widget/popover.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final List<Box> items = [
      Box(
        name: "Flutter",
        imagePath: "assets/flutter.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Wow, you want to build cross-platform magic!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "Dart",
        imagePath: "assets/dart.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Smooth logic? You’ve got the Dart spark!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "Firebase",
        imagePath: "assets/firebase.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Real-time dreams? Firebase has your back!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "MySQL",
        imagePath: "assets/mysql.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Organized brain? You speak SQL fluently!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "Golang",
        imagePath: "assets/golang.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Efficiency is king. Go go Golang!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "Html",
        imagePath: "assets/html.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Starting from the root, nice!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "Javascript",
        imagePath: "assets/js.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Dynamic moves? JavaScript got you!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "PHP",
        imagePath: "assets/php.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Old school, still rockin’ hard!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "React",
        imagePath: "assets/react.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Component master? You React naturally!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
      Box(
        name: "Nodejs",
        imagePath: "assets/nodejs.png",
        onTap: (ctx) => showPopover(
          context: ctx,
          bodyBuilder: (context) =>
              Popover(message: "Server-side ninja in action!"),
          direction: PopoverDirection.top,
          backgroundColor: const Color(0xFFDAE0F0),
          barrierColor: Colors.transparent,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08,
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Marquee(
                        text: "Tap Your Stack",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        scrollAxis: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        blankSpace: 100,
                        velocity: 50,
                        pauseAfterRound: Duration(seconds: 1),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.09),
                    Wrap(
                      spacing: 60,
                      runSpacing: 30,
                      children: items
                          .map(
                            (itemsBuild) => Box(
                              name: itemsBuild.name,
                              imagePath: itemsBuild.imagePath,
                              onTap: itemsBuild.onTap,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
