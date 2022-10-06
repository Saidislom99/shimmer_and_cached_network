import 'package:flutter/material.dart';
import 'package:shimmer_and_cached_network/widgets/my_shimmer_loader.dart';
class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shimmer Custom"),
      ),
      body: ListView(
        children: List.generate(20, (index) => MyShimmerLoader()),
      ),
    );
  }
}
