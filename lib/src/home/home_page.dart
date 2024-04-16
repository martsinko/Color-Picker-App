import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../config/app_config.dart';
import 'home_widgets/widgets_config.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  
bool click = true;
bool pressed = true;
Color _changeColor = colorBlue;

void changeColor() {
    setState(() {
      _changeColor = Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        setState(() {
          changeColor();
        });
      },
        child: Scaffold(
        backgroundColor:_changeColor ,
          body:  SafeArea(
            child: Center(
                  child: Column(
                    children: [  
                    SizedBox(height: screenHeight * sizedBox1,),                
                    const WelcomeTextWidget(),
                    SizedBox(height: screenHeight / sizedBox2,),
                    ElevatedButton(
                      onPressed:(){
                          ColorPicker(
                               color: _changeColor,
                            onColorChanged: (Color color) {
                             setState(() {
                                _changeColor = color;
                              });
                                },  
                              ).showPickerDialog(context);
                      }, 
                      child: const FavouriteTextWidget()
                      )
                  ],
                ))
          ),
        ),
    );   
  }
}


