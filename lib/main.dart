import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'รายชื่อนักศึกษา CIS',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFEAF4FA), // Ice Blue
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF4A90E2), // Ice Blue
          secondary: const Color(0xFF003366), // Deep Blue
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF003366), // Deep Blue
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Color(0xFF003366)), // Deep Blue
          bodyMedium: TextStyle(fontSize: 16, color: Color(0xFF336699)), // Light Blue
        ),
      ),
      home: const StudentListPage(),
    );
  }
}

class Student {
  final String name;
  final String id;
  final String gender;

  const Student({required this.name, required this.id, required this.gender});
}

class StudentListPage extends StatelessWidget {
  const StudentListPage({super.key});

 static const List<Student> students = [
  Student(name: "นางสาวเขมจิรา บุญเลิศ", id: "653450085-9", gender: "female"),
  Student(name: "นายจารุวิทย์ แสงแก้วสิริกุล", id: "653450086-7", gender: "male"),
  Student(name: "นายชวกร เนืองภา", id: "653450087-5", gender: "male"),
  Student(name: "นายณัฐดนัย ภาคภูมิ", id: "653450088-3", gender: "male"),
  Student(name: "นางสาวณัฐวรรณ พวงมะลัย", id: "653450089-1", gender: "female"),
  Student(name: "นายถิรวัฒน์ โชติธนกิจไพศาล", id: "653450090-6", gender: "male"),
  Student(name: "นายเทพฤทธิ์ อินทรประพันธ์", id: "653450091-4", gender: "male"),
  Student(name: "นายธนาพร ชนิดกุล", id: "653450092-2", gender: "male"),
  Student(name: "นายนพคุณ นาชัยพูล", id: "653450093-0", gender: "male"),
  Student(name: "นายนันทิพัฒน์ บุตรวัง", id: "653450094-8", gender: "male"),
  Student(name: "นายพิชชากร สกุลไทย", id: "653450095-6", gender: "male"),
  Student(name: "นายพิชัย ทองอาสา", id: "653450096-4", gender: "male"),
  Student(name: "นายพิพิธธน พิพิธกุล", id: "653450097-2", gender: "male"),
  Student(name: "นายพิริยกร พันธุ์พานิชย์", id: "653450098-0", gender: "male"),
  Student(name: "นายภานุวัฒน์ ธรรมบุตร", id: "653450099-8", gender: "male"),
  Student(name: "นายเมธากร สิงห์คาน", id: "653450100-9", gender: "male"),
  Student(name: "นายวงศธร ทองอินทร์", id: "653450101-7", gender: "male"),
  Student(name: "นายวรพล พลตรี", id: "653450102-5", gender: "male"),
  Student(name: "นายวิชญ์พล ยืนยง", id: "653450103-3", gender: "male"),
  Student(name: "นางสาวศานต์ฤทัย สายบุตร", id: "653450104-1", gender: "female"),
  Student(name: "นายอดุลวิทย์ บุตรเรียง", id: "653450105-9", gender: "male"),
  Student(name: "นายอนิวัตติ์ ณ หนองคาย", id: "653450106-7", gender: "male"),
  Student(name: "นางสาวอรปรียา จันทะโคตร", id: "653450107-5", gender: "female"),
  Student(name: "นายอัครวิชญ์ พบวงษา", id: "653450108-3", gender: "male"),
  Student(name: "นายกฤตชวกร ชวลิตกิตติวงศ์", id: "653450279-6", gender: "male"),
  Student(name: "นางสาวจันทิมา พรมวัง", id: "653450280-1", gender: "female"),
  Student(name: "นางสาวชฎาพร พินิจสัย", id: "653450281-9", gender: "female"),
  Student(name: "นายณภัทร สุยังกุล", id: "653450282-7", gender: "male"),
  Student(name: "นายณัฏฐกิตติ์ มิตรสูงเนิน", id: "653450283-5", gender: "male"),
  Student(name: "นางสาวณัฐณิชา พรมปิก", id: "653450284-3", gender: "female"),
  Student(name: "นายธนกร สว่างสูงเนิน", id: "653450285-1", gender: "male"),
  Student(name: "นางสาวธนพร รัตนศิระประภา", id: "653450286-9", gender: "female"),
  Student(name: "นายธนาโชค สุวรรณ์", id: "653450287-7", gender: "male"),
  Student(name: "นายธีร ริ้วทวี", id: "653450288-5", gender: "male"),
  Student(name: "นายธีรภัทร โพธิ์ศรี", id: "653450289-3", gender: "male"),
  Student(name: "นายนภสินธุ์ ศรีบุรินทร์", id: "653450290-8", gender: "male"),
  Student(name: "นายนันธวัฒน์ แผ่ความดี", id: "653450291-6", gender: "male"),
  Student(name: "นายเนติธร ศรีมี", id: "653450292-4", gender: "male"),
  Student(name: "นายปฏิพัทธ์ มาตรา", id: "653450293-2", gender: "male"),
  Student(name: "นายประจักษ์ ศรีทอง", id: "653450294-0", gender: "male"),
  Student(name: "นายภานุวัฒน์ สารวงษ์", id: "653450295-8", gender: "male"),
  Student(name: "นายมหัคฆพันธ์ ปลั่งกลาง", id: "653450296-6", gender: "male"),
  Student(name: "นางสาวรามิล ไกยบุตร", id: "653450297-4", gender: "female"),
  Student(name: "นายวรชิต ทองเลิศ", id: "653450298-2", gender: "male"),
  Student(name: "นายวรโชติ ทองเลิศ", id: "653450299-0", gender: "male"),
  Student(name: "นายฮารูณ ซิดดิ๊ก คูเรซิ", id: "653450300-1", gender: "male"),
  Student(name: "นายชาคริต พูลพิพิธ", id: "653450507-9", gender: "male"),
  Student(name: "นายณภัทร สีหะวงค์", id: "653450508-7", gender: "male"),
  Student(name: "นายทวีศิลป์ ใจดี", id: "653450509-5", gender: "male"),
  Student(name: "นายนันทวัฒน์ แซ่ฮวม", id: "653450510-0", gender: "male"),
  Student(name: "นายภูมิพัฒน์ วงศ์พันธ์", id: "653450511-8", gender: "male"),
  Student(name: "นายวัชโรธร เอี่ยมสอาด", id: "653450512-6", gender: "male"),
  Student(name: "นางสาวศิริพร แก้วลินลา", id: "653450513-4", gender: "female"),
  Student(name: "นายปิยชนน์ คนยง", id: "653450581-7", gender: "male"),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายชื่อนักศึกษา'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetailPage(student: student),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: student.gender == "male"
                    ? Colors.blueAccent.withOpacity(0.3)
                    : Colors.orangeAccent.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/images/Freljord_Crest_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        student.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF003366),
                        ),
                      ),
                      Text(
                        student.id,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF336699),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class StudentDetailPage extends StatelessWidget {
  final Student student;

  const StudentDetailPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  'assets/images/Freljord_Crest_icon.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              student.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003366),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              student.id,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xFF336699),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
