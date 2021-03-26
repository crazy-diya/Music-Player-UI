import 'package:flutter/material.dart';
import 'package:flutter_soft_ui/constants.dart';
import 'package:flutter_soft_ui/pages/soft_control.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularSofyButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  Text("Fav, Album"),
                  CircularSofyButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width - 50,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width),
                        gradient: LinearGradient(
                          colors: [shadowColor, lightShadowColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: shadowColor,
                              offset: Offset(8, 6),
                              blurRadius: 12),
                          BoxShadow(
                              color: lightShadowColor,
                              offset: Offset(-8, -6),
                              blurRadius: 12),
                        ]),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    left: 10,
                    top: 10,
                    child: CircleAvatar(
                      backgroundImage: Image.asset(
                        "assets/flutter_bird.png",
                      ).image,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Life is Good (feat. Drake)",
                style: TextStyle(
                  fontSize: 28,
                  color: textColor,
                ),
              ),
              Text(
                "Future",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    width: double.infinity,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor,
                          offset: Offset(1, 4),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-1, -4),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 36),
                      width: 200,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            colors: [seekBarLightColor, seekBarDarkColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1:30",
                      style: TextStyle(
                        fontSize: 20,
                        color: textColor,
                      ),
                    ),
                    Text(
                      "3:55",
                      style: TextStyle(
                        fontSize: 20,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularSofyButton(
                    icon: Icon(
                      Icons.skip_previous,
                    ),
                  ),
                  CircularSofyButton(
                    icon: Icon(
                      Icons.play_arrow,
                      size: 48,
                      color: seekBarDarkColor,
                    ),
                    radius: 48,
                  ),
                  CircularSofyButton(
                    icon: Icon(
                      Icons.skip_next,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
