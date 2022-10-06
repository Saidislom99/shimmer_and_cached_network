import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer"),
      ),
      body: SizedBox(
        width: 200.0,
        height: 100.0,
        child: Shimmer.fromColors(
         // direction: ShimmerDirection.btt,        qanday uslubda yurishi
        //  period: Duration(seconds: 3),
            baseColor: Colors.grey.shade600,
            highlightColor: Colors.grey.shade200,
            child: Text(
              'Shimmer',
                  textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),
            ),
        ),
      ),
    );
  }
}
