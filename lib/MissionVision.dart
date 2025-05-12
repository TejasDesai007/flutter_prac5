import 'package:flutter/material.dart';
import 'custom_drawer.dart'; // Import the custom drawer

class VisionMissionPage extends StatelessWidget {
  final TabController tabController;

  VisionMissionPage(
      {required this.tabController}); // Accept TabController as a parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Department Vision and Mission',
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
            ExpandableCard(
              title: 'Department Vision (Effective from 2024-25)',
              content:
                  'To develop globally competent and ethical professionals in Computer Science and Engineering and enable them to contribute to society.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'Department Vision',
              content:
                  'To create a center of excellence which will produce cutting edge technologies to cater needs of Business and Society.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'Department Mission (Effective from 2024-25)',
              content:
                  'M1: To provide rigorous, high-standard, multidisciplinary curriculum and innovative T-L-E-A processes and ensure a stimulating academic environment.\n'
                  'M2: To promote research and innovations through collaborations.\n'
                  'M3: To develop requisite attitudes and skills, besides providing a strong knowledge foundation.\n'
                  'M4: To foster ethics and social responsibility among stakeholders and imbibe a sense of contribution.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'Department Mission',
              content: '1. To provide high quality education.\n'
                  '2. To train the students to excel in cutting edge technologies that makes them industry ready.\n'
                  '3. To inculcate ethical and professional values in students for betterment of society.\n'
                  '4. To inculcate Entrepreneurial mindset in students to make them job creators.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'PEO of the Department (Effective from 2024-25)',
              content:
                  '1. Design, analyze, develop, test, deploy, and maintain software products, services, and systems.\n'
                  '2. Engage in applying the advancement of ICT and stay familiar with the latest technology trends and skills while serving industry, public and private institutions, academia, or any other chosen field.\n'
                  '3. Demonstrate excellent computational, communication, teamwork, finance, and project management skills to analyze and solve real-life computational problems, enhance the efficacy and effectiveness of an existing application, or develop a new application.\n'
                  '4. Assume leadership in the chosen vertical and demonstrate sensitivity to GSC (Global Social Responsibility).',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'PEO of the Department',
              content:
                  '1. To recognize and adopt social and ethical issues in computing.\n'
                  '2. To become an effective presenter to work as a responsible team leader.\n'
                  '3. To apply knowledge in order to solve real world problems.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'Program Outcomes (Effective from 2024-25)',
              content:
                  '1. Foundation Knowledge – Apply knowledge of mathematics, programming logic, and coding fundamentals for problem-solving techniques to formulate solutions for Information Systems.\n'
                  '2. Problem Analysis – Conceptualize knowledge and background to be able to analyze a problem and identify and define the computing requirements for its solution.\n'
                  '3. Development of Solutions – Design a new system to meet certain specifications.\n'
                  '4. Modern Tool Usage – Design, monitor, manage, test, control, and evaluate an existing computer-based system, process, component, or program and provide valid conclusions using software modeling, warehousing, mining, and networking tools for application development.\n'
                  '5. Individual and Teamwork – Function effectively as an individual, and as a member or leader of a team.\n'
                  '6. Project Management and Finance – Demonstrate knowledge and understanding of IT and management principles and apply these to one’s own work, as a member or a leader of the team, to manage IT projects.\n'
                  '7. Ethics – Apply ethical principles and adhere to professional ethics and responsibilities and norms of Application Development.\n'
                  '8. Life-long Learning – Recognize the need for and ability to engage in lifelong learning.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'Program Outcomes',
              content:
                  '1. Computational Knowledge: Apply knowledge of computing fundamentals, computing specialization, mathematics, and domain knowledge appropriate for problem-solving technique to formulate solution for Information System.\n'
                  '2. Problem Analysis: Conceptualize knowledge and background to be able to analyze a problem and identify and define the computing requirements for its solution.\n'
                  '3. Design / Development of Solutions: Design a new system to meet certain specification.\n'
                  '4. Conduct Investigations of complex computing problems: Conduct investigations of complex problems using analysis, modelling, interpretation of data, and synthesis of information in order to reach valid conclusions.\n'
                  '5. Modern Tool Usage: Design, monitor, manage, test, control, evaluate an existing computer-based system, process, component or program and provide valid conclusions using software modeling, warehousing, mining and networking tools for application development.\n'
                  '6. Professional Ethics: Apply ethical principles and adhere to professional ethics and responsibilities and norms of Application Development.\n'
                  '7. Life-long Learning: Recognize the need for and an ability to engage in lifelong learning.\n'
                  '8. Project management and finance: Demonstrate knowledge and understanding of IT and management principles and apply these to one’s own work, as a member or a leader of the team, to manage IT projects.\n'
                  '9. Communication Efficacy: Communicate effectively using classic and modern technology with the IT professionals and with society at large through report writing as well as technical presentations.\n'
                  '10. Societal and Environmental Concern: Understand the impact of the applications and services in societal and environmental contexts, and exhibit the knowledge of, and need for sustainable development.\n'
                  '11. Individual and Team Work: Function effectively as an individual, and as a member or leader of a team.\n'
                  '12. Innovation and Entrepreneurship: Create an opportunity to produce successful Entrepreneurs.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'MCA Program Specific Outcomes (Effective from 2024-25)',
              content: 'Students will be able to:\n'
                  '1. Apply the principles of ICT (Information and Communication Technology) and technologies such as AI-ML, Data Science, UI/UX, Blockchain, Software Testing, RPA, Security, Cloud, IoT, Mobile Computing, and Open Source for real-life problem-solving.\n'
                  '2. Develop and deploy software products and services, demonstrate leadership and teamwork, and communicate effectively.',
            ),
            SizedBox(height: 16),
            ExpandableCard(
              title: 'MCA Program Specific Outcomes',
              content: 'Students will be able to:\n'
                  '1. Apply standard practices and strategies required for the industry.\n'
                  '2. Solve real-world problems using cutting-edge technology.',
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableCard extends StatelessWidget {
  final String title;
  final String content;

  ExpandableCard({
    required this.title,
    required this.content,
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
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
