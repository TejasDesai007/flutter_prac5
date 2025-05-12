import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'custom_drawer.dart'; // Import the custom drawer

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCA Department',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Color(0xFF090D09)],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(icon: Icon(Icons.bar_chart), text: 'Enrollment'),
            Tab(icon: Icon(Icons.pie_chart), text: 'Budget'),
            Tab(icon: Icon(Icons.trending_up), text: 'Engagement'),
          ],
        ),
      ),
      drawer:
          CustomDrawer(tabController: _tabController), // Use the custom drawer
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Student Enrollment Trends",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Card(
                    elevation: 4,
                    child: SizedBox(height: 250, child: EnrollmentBarChart())),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Department Budget Allocation",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Card(
                    elevation: 4,
                    child: SizedBox(height: 250, child: ExpenditurePieChart())),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Event Engagement Trends",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Card(
                    elevation: 4,
                    child: SizedBox(height: 250, child: EventLineChart())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Bar Chart Widget
class EnrollmentBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(show: true),
        borderData: FlBorderData(show: false),
        barGroups: [
          BarChartGroupData(
              x: 0, barRods: [BarChartRodData(toY: 40, color: Colors.blue)]),
          BarChartGroupData(
              x: 1, barRods: [BarChartRodData(toY: 150, color: Colors.green)]),
          BarChartGroupData(
              x: 2, barRods: [BarChartRodData(toY: 180, color: Colors.orange)]),
          BarChartGroupData(
              x: 3, barRods: [BarChartRodData(toY: 170, color: Colors.red)]),
          BarChartGroupData(
              x: 4, barRods: [BarChartRodData(toY: 190, color: Colors.purple)]),
        ],
      ),
    );
  }
}

// Pie Chart Widget
class ExpenditurePieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 40, title: 'Salaries', color: Colors.blue),
          PieChartSectionData(
              value: 60, title: 'Research', color: Colors.green),
          PieChartSectionData(
              value: 15, title: 'Infrastructure', color: Colors.orange),
          PieChartSectionData(value: 25, title: 'Events', color: Colors.red),
        ],
      ),
    );
  }
}

// Line Chart Widget
class EventLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: true),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(1, 10),
              FlSpot(2, 30),
              FlSpot(3, 70),
              FlSpot(4, 50),
              FlSpot(5, 40)
            ],
            isCurved: true,
            dotData: FlDotData(show: true),
          ),
        ],
      ),
    );
  }
}
