import 'package:catalogapp2/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
