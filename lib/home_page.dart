import 'package:flutter/material.dart';

import 'scroll_behavior_web_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal & Vertical ListView"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: ScrollConfiguration(
        behavior: CustomScrollBehaviorWeb(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 100,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      // ignore: sort_child_properties_last
                      child: Center(
                        child: Text(
                          "Card $index",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Colors.green[700],
                    );
                  },
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 150,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    title: Text("List $index"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
