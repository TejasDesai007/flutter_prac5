import 'package:flutter/material.dart';
import 'custom_drawer.dart'; // Import the custom drawer

class FacultyPage extends StatelessWidget {
  final TabController tabController;

  FacultyPage(
      {required this.tabController}); // Accept TabController as a parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Faculty Information',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, const Color.fromARGB(255, 9, 13, 9)],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer:
          CustomDrawer(tabController: tabController), // Use the custom drawer
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            FacultyCard(
              name: 'Prof. Harshil Kanakia',
              designation: 'Asst. Professor',
              department: 'Computer Science',
              email: 'harshil_kanakia@spit.ac.in',
              roles: [
                'IQAC Coordinator',
                'BoS Coordinator',
                'Class Coordinator',
                'Alumni Coordinator',
                'College Website Coordinator (Includes College Website Maintenance, Admission Portal Maintenance)',
                'Institute Level Admission Committee for MCA',
                'Mentoring Coordinator (FYMCA)',
              ],
              image: 'assets/images/HK.png', // Add image path
            ),
            SizedBox(height: 16),
            FacultyCard(
              name: 'Prof. Dr. Aarti Karande',
              designation: 'Asst. Professor',
              department: 'Computer Science',
              email: 'aartimkarande@spit.ac.in',
              roles: [
                'PG Admission Coordinator',
                'Placement, Higher Studies & Internship Coordinator (Department & Institute Level for CSE-MCA)',
                'R&D Coordinator (CSE-MCA)',
                'SMC (Student Mentoring Coordinator)',
                'IIC Chair (Institution’s Innovation Council Chair)',
                'DAPC Member (Department Academic Program Committee for CSE-MCA)'
              ],
              image: 'assets/images/aarti.png', // Add image path
            ),
            SizedBox(height: 16),
            FacultyCard(
              name: 'Prof. Nikitha Mangaonkar',
              designation: 'Asst. Professor',
              department: 'Computer Science',
              email: 'nikhita.mangaonkar@spit.ac.in',
              roles: [
                'DEC Coordinator (MCA)',
                'Guest/Industry/Expert Lecture Organizer',
                'Faculty and Student Publications Coordinator',
                'Consultancy Coordinator',
                'FDP, STTP Courses, and Workshop Coordinator',
                'DAPC Exam Coordinator Member',
                'ERP Coordinator (CSE-MCA)',
              ],
              image: 'assets/images/NM.jpg', // Add image path
            ),
            SizedBox(height: 16),
            FacultyCard(
              name: 'Prof. Sakina Salmani',
              designation: 'Asst. Professor',
              department: 'Computer Science',
              email: 'sakina_shaikh@spit.ac.in',
              roles: [
                'NBA/PC Coordinator (MCA)',
                'Departmental Newsletter Editor',
                'CO-PO Attainment Analysis',
                'Department Library In-Charge',
                'Program Exit Analysis',
                'Remedial Session Coordinator',
                'Research Proposal Preparation Coordinator (MODROB/DST/AICTE/Govt.-Funded/Private Company-Funded)',
                'Course File Checking Coordinator (CSE-MCA)',
                'Industry Visit Coordinator (MCA)',
              ],
              image: 'assets/images/SK.png', // Add image path
            ),
            SizedBox(height: 16),
            FacultyCard(
              name: 'Prof. Pallavi Thakur',
              designation: 'Asst. Professor',
              department: 'Computer Science',
              email: 'pallavi.thakur@spit.ac.in',
              roles: [
                'Class & Defaulter In-Charge (SY MCA) with MSE and ESE Feedback',
                'PTM (Parent-Teacher Meeting) Coordinator',
                'Workload and Time Table Coordinator (MCA)',
                'MCA Project Coordinator',
                'ACSES (Student Forum) Coordinator',
                'Mentoring Coordinator (SY MCA)',
                'Faculty and Student Achievements Coordinator',
                'No Dues Coordinator',
              ],
              image: 'assets/images/PT.png', // Add image path
            ),
          ],
        ),
      ),
    );
  }
}

class FacultyCard extends StatelessWidget {
  final String name;
  final String designation;
  final String department;
  final String email;
  final List<String> roles; // Changed to a list of roles
  final String image;

  FacultyCard({
    required this.name,
    required this.designation,
    required this.department,
    required this.email,
    required this.roles,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(designation),
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
          onBackgroundImageError: (exception, stackTrace) {
            // Handle image loading errors
          },
          radius: 25, // Adjust the size of the CircleAvatar
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Department: $department',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Email: $email',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Roles and Responsibilities:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                ...roles
                    .map((role) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            '• $role', // Add bullet points
                            style: TextStyle(fontSize: 14),
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
