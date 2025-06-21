import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return ListView.builder(
      itemCount: personList.length,
      itemBuilder: (context, index) {
        final person = personList[index];
        return Container(
          width: double.infinity, // เพิ่มเพื่อให้เต็มความกว้าง
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: person.job.color.withOpacity(0.7),  // ใช้สีพื้นหลังตาม job.color
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ชื่อและงาน
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person.name,
                    style: GoogleFonts.kanit(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    person.job.title,
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              // รูปงาน
              Image.asset(
                person.job.image,
                width: 50,
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }
}
