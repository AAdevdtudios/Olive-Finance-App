import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class DownBtn extends StatelessWidget {
  final Function() btnSkip;
  final Function() btnNext;
  final int steps;
  const DownBtn({
    super.key,
    required this.btnSkip,
    required this.btnNext,
    this.steps = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: btnSkip,
            child: const Text("Skip"),
          ),
          SizedBox(
            height: 60,
            width: 60,
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularStepProgressIndicator(
                    totalSteps: 4,
                    currentStep: steps,
                    selectedColor: Colors.yellow[700],
                    unselectedColor: Colors.yellow[200],
                    width: 120,
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 15,
                  child: InkWell(
                    onTap: btnNext,
                    radius: 100,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: const Icon(Icons.chevron_right_sharp),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
