import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkExperienceDetail extends StatelessWidget {
  final List<Map<String, dynamic>> experiences;

  const WorkExperienceDetail({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Work Experience Details',
          style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: experiences.length,
        itemBuilder: (context, index) {
          final experience = experiences[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${experience['year']} - ${experience['title']}',
                    style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    experience['description'],
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
