import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_multi_provider/provider/slider_provider.dart';

class Slider_screen extends StatefulWidget {
  const Slider_screen({super.key});

  @override
  State<Slider_screen> createState() => _Slider_screenState();
}

class _Slider_screenState extends State<Slider_screen> {
  @override
  Widget build(BuildContext context) {
    print("welcome");
    return Scaffold(
      appBar: AppBar(title: Text("Slider_screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                },
              );
            },
          ),
          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      child: Center(child: Text("container 1")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      child: Center(child: Text("container 2")),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
