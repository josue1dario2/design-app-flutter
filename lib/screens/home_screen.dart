
import 'package:design_1/widgets/background.dart';
import 'package:design_1/widgets/card_table.dart';
import 'package:design_1/widgets/custom_bottom_navigator.dart';
import 'package:design_1/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Background(),
          _HomeBody(),

        ],
      ),
      bottomNavigationBar: CustomBottomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
