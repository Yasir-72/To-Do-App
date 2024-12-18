import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Color(0xFF50C2C9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/avatar-male.png"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    "Welcome Yasir Syed",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Image.asset(
              "images/clock.png",
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Container(
                color: Colors.white,
                width: 350,
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Top row: Title + Plus Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Task',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.teal,
                          size: 24,
                        ),
                      ],
                    ),
                    SizedBox(height: 12), // Spacing between title and tasks

                    Text("Learning Programming by 12PM"),
                    SizedBox(height: 12),
                    Text("Learn how to swim at 1PM"),
                    SizedBox(height: 12),
                    Text('Learn how to play at 2PM'),
                    SizedBox(height: 12),
                    Text('Have lunch at 4PM'),
                    SizedBox(height: 12),
                    Text('Going to travel 6PM'),

                    // Task List
                    // TaskItem(
                    //   taskText: 'Learning Programming by 12PM',
                    //   isChecked: false,
                    // ),
                    // TaskItem(
                    //   taskText: 'Learn how to swim at 1PM',
                    //   isChecked: false,
                    // ),
                    // TaskItem(
                    //   taskText: 'Learn how to play at 2PM',
                    //   isChecked: false,
                    // ),
                    // TaskItem(
                    //   taskText: 'Have lunch at 4PM',
                    //   isChecked: false,
                    // ),
                    // TaskItem(
                    //   taskText: 'Going to travel 6PM',
                    //   isChecked: false,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// // class TaskItem extends StatelessWidget {
//   final String taskText;
//   final bool isChecked;

//   TaskItem({required this.taskText, required this.isChecked});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Checkbox(
//           value: isChecked,
//           onChanged: (value) {},
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(4),
//           ),
//           activeColor: Colors.teal,
//         ),
//         Expanded(
//           child: Text(
//             taskText,
//             style: TextStyle(fontSize: 14, color: Colors.black87),
//           ),
//         ),
//       ],
//     );
//   }
// }
