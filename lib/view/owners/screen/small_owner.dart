import 'package:flutter/material.dart';

import '../../utils/home_widget.dart';
import '../utils/turf_list_widget.dart';
import '../utils/turf_list_search.dart';

class SmallOwnerScreen extends StatelessWidget {
  const SmallOwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const TurfListAppBar(title: 'Turf List'),
      drawer: HomeWidget()
          .drawer(screenHeight: screenHeight, context: context, key: 1),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenHeight * 0.02,
          vertical: screenWidth * 0.01,
        ),
        child: Row(
          children: [
            SizedBox(width: screenWidth * 0.01),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TurfListWidget(),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
