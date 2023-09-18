import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AccountCardShimmer extends StatelessWidget {
  const AccountCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Card(
        child: Column(
          children: [
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              height: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
