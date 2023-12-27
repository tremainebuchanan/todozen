import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todozen/features/tasks/providers/task_provider.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  void initState() {
    super.initState();

    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    taskProvider.get();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [
              Text(
                "Task List",
                style: GoogleFonts.outfit(
                    fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 1.0)),
                  //color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0XFF06d6a0),
                          child: Text(
                            "65",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          _buildList(),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black, width: 1.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dashboard design for admin",
                        style: GoogleFonts.outfit(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Chip(
                          padding: const EdgeInsets.all(1),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          backgroundColor: const Color(0xFFe0aaff),
                          label: Text('High',
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Chip(
                          padding: const EdgeInsets.all(1),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          backgroundColor: const Color(0xFFe0aaff),
                          label: Text('On Track',
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "14 Oct 2023",
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.link,
                              size: 16,
                            ),
                            Text(
                              "5",
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.message_outlined,
                              size: 16,
                            ),
                            Text(
                              "5",
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            const Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 12,
                                child: Text(
                                  "TB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            const Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 12,
                                child: Text(
                                  "TB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            const Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Text(
                                  "2+",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          ),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black, width: 1.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dashboard design for admin",
                        style: GoogleFonts.outfit(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Chip(
                          padding: const EdgeInsets.all(1),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          backgroundColor: const Color(0xFFe0aaff),
                          label: Text('High',
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Chip(
                          padding: const EdgeInsets.all(1),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          backgroundColor: const Color(0xFFe0aaff),
                          label: Text('On Track',
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "14 Oct 2023",
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.link,
                              size: 16,
                            ),
                            Text(
                              "5",
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.message_outlined,
                              size: 16,
                            ),
                            Text(
                              "5",
                              style: GoogleFonts.outfit(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            const Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 12,
                                child: Text(
                                  "TB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            const Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 12,
                                child: Text(
                                  "TB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            const Align(
                              widthFactor: 0.8,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Text(
                                  "2+",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildList() {
    return Consumer<TaskProvider>(builder: (context, data, _) {
      if (data.count == 0) {
        return const CircularProgressIndicator();
      } else {
        return ListView.builder(
          itemCount: data.count,
          itemBuilder: ((context, index) {
            final task = data.tasks[index];
            return ListTile(title: Text(task.title));
          }),
        );
      }
    });
  }
}
