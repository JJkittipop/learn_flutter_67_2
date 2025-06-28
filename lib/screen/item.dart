import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Step 17: Routing
import 'package:learn_flutter_67_2/screen/addForm.dart';

// Enum งาน พร้อมข้อมูลชื่อ, รูป, สี
enum Job {
  doctor(title: "Doctor", image: "assets/images/Dogs.jpg", color: Colors.red),
  teacher(title: "Teacher", image: "assets/images/Dogs.jpg", color: Colors.green),
  artist(title: "Artist", image: "assets/images/Dogs.jpg", color: Colors.purple),
  chef(title: "Chef", image: "assets/images/Dogs.jpg", color: Colors.orange),
  engineer(title: "Engineer", image: "assets/images/Dogs.jpg", color: Colors.blue);

  final String title;
  final String image;
  final Color color;

  const Job({required this.title, required this.image, required this.color});
}

// คลาส Person
class Person {
  final String name;
  final int age;
  final Job job;

  const Person({required this.name, required this.age, required this.job});
}

// รายชื่อคน
const List<Person> personList = [
  Person(name: "สมชาย", age: 30, job: Job.doctor),
  Person(name: "สมหญิง", age: 25, job: Job.teacher),
  Person(name: "สมศรี", age: 28, job: Job.artist),
  Person(name: "สมปอง", age: 35, job: Job.chef),
  Person(name: "สมจิตร", age: 40, job: Job.engineer),
];

// Widget แสดงรายการ
class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: personList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: personList[index].job.color,
                ),
                margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ข้อมูลภายใน Column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personList[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Age: ${personList[index].age}',
                          style: GoogleFonts.prompt(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 255, 251, 3),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Job: ${personList[index].job.title}',
                          style: GoogleFonts.prompt(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      personList[index].job.image,
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddForm()),
              );
            },
            icon: const Icon(
              Icons.add,
              size: 40,
              color: Colors.pinkAccent,
            ),
          ),
        ),
      ],
    );
  }
}
