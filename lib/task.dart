import 'package:flutter/material.dart';
import 'package:flutter_application_2/completedpage.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({super.key});

  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  List Todo = [
    {
      "name": "Hii my name is zaid",
    },
    {
      "name": "Hii my name is raza",
    },
    {
      "name": "Hii my name is nurain",
    },
    {
      "name": "Hii my name is ali",
    },
    {
      "name": "Hii my name is bilal",
    },
    {
      "name": "Hii my name is hasan",
    },
    {
      "name": "Hii my name is Muzzamil",
    },
  ];

  List<Map<String, String>> CompletedTasks = []; // Completed Task List

  void moveToCompletedTask(int index) {
    setState(() {
      CompletedTasks.add(Todo[index]); // Add to completed task list
      Todo.removeAt(index); // Remove from current task list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add New Item',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF50C2C9)),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: BorderSide(color: Colors.black26)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                30), // Consistent radius when focused
                            borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0), // Border on focus
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context); // Close modal
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF50C2C9),
                                foregroundColor: Colors.white),
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle save action
                              Navigator.pop(context); // Close modal
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF50C2C9),
                                foregroundColor: Colors.white),
                            child: Text(
                              'Save',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 20, 102, 109),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Color(0xFF50C2C9),
        centerTitle: true,
        title: Text(
          "Todo Task",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), // Default selected date
                  firstDate: DateTime(1900), // Earliest date allowed
                  lastDate: DateTime(3000), // Latest date allowed
                );
              },
              icon: Icon(Icons.calendar_month)),
        ],
      ),
      body: Column(
        children: [
          // Date-Time Row
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 102, 109), // Dark blue background
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "25.2.2024", // Example Date
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "9:41", // Example Time
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // completed task icon section

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 102, 109), // Dark blue background
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompletedTask(
                                    completedTasks: CompletedTasks,
                                  )));
                    },
                    icon: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 30,
                    )),
                Text(
                  "Completed Task", // Example Time
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // ListView Builder for the Todo List
          Expanded(
            child: ListView.builder(
              itemCount: Todo.length,
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
                      Text(Todo[index]['name']),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            moveToCompletedTask(index);
                          },
                          icon: Icon(
                            Icons.check_circle_outline,
                            color: Color(0xFF50C2C9),
                          ))
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
