import 'package:flutter/material.dart';

class CompletedTask extends StatelessWidget {
  final List<Map<String, String>> completedTasks;

  const CompletedTask({super.key, required this.completedTasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF50C2C9),
        centerTitle: true,
        title: Text(
          "Completed Tasks",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: completedTasks.isEmpty
          ? Center(
              child: Text(
                "No completed tasks yet!",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: completedTasks.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      Text(
                        completedTasks[index]['name']!,
                        style: TextStyle(
                            decoration: TextDecoration.none, fontSize: 16),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
