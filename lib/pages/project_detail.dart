import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDetail extends StatelessWidget {
  final List<Map<String, dynamic>> projects;

  const ProjectDetail({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Project Details',
          style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    project['imageURL'],
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    project['title'],
                    style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Release Year: ${project['year']}',
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    project['description'],
                    style: GoogleFonts.roboto(fontSize: 16),
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
