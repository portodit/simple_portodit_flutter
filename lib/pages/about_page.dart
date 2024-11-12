import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'work_experience_detail.dart';
import 'project_detail.dart';

class AboutPage extends StatelessWidget {
  final VoidCallback onThemeToggle;

  AboutPage({super.key, required this.onThemeToggle});

  // Data project
  final List<Map<String, dynamic>> projects = [
    {
      'id': 1,
      'title': 'Terjahit App UI/UX Case Study',
      'year': 2024,
      'description':
          'I\'m thrilled to introduce Terjahit, a mobile app created as part of our UX Design course project...',
      'imageURL':
          'https://media.licdn.com/dms/image/v2/D562DAQGOlqQMoaZJ9g/profile-treasury-document-cover-images_480/profile-treasury-document-cover-images_480/0/1728866876505?e=1731909600&v=beta&t=6y2wr1fGXDCJWkFpYc-z6ZABgDU0h2Hx3HouHhjBAAY',
    },
    {
      'id': 2,
      'title': 'MARKAS: UI/UX Case Study of an Event Management System App',
      'year': 2023,
      'description':
          'MARKAS is taking another leap into the digital realm, this time venturing onto the mobile platform...',
      'imageURL':
          'https://media.licdn.com/dms/image/v2/D562DAQGLxQ9zUtpGEg/profile-treasury-document-cover-images_480/profile-treasury-document-cover-images_480/0/1712805718404?e=1731909600&v=beta&t=3f2VUdPQo419Zcq-VkDLN1m3w-1pcl6oK7tz1GsZkT8',
    },
    {
      'id': 3,
      'title': 'Fineeds: Mobile App for Street Vendors\' Sales Optimization',
      'year': 2023,
      'description':
          'Fineeds is a mobile application idea that serves as a platform connecting street vendors with consumers...',
      'imageURL':
          'https://media.licdn.com/dms/image/v2/D562DAQEe1Bn006l-8A/profile-treasury-document-cover-images_480/profile-treasury-document-cover-images_480/0/1712655639984?e=1731909600&v=beta&t=FSefhNnZ0QX4f6LbuunWIg7WKPwlfRqSkmkv1FB6CeQ',
    },
    {
      'id': 4,
      'title': 'BIONIX ISE! UI Website Design',
      'year': 2023,
      'description':
          'BIONIX (Business and IT Olympiad in Information Systems Expo) is a national-level technology...',
      'imageURL':
          'https://media.licdn.com/dms/image/v2/D562DAQG3TmoFIRaI6A/profile-treasury-document-cover-images_480/profile-treasury-document-cover-images_480/0/1728924271662?e=1731909600&v=beta&t=vjtCEoTdNEvBixNjhlKYkusJYS-9GcvVvN4IJgSgj_E',
    },
  ];

  // Data untuk pengalaman kerja
  final List<Map<String, dynamic>> experiences = [
    {
      'id': 1,
      'year': 2024,
      'title': 'Frontend Developer at Digistar Club by Telkom Indonesia',
      'description':
          'Developed and maintained user-friendly frontend applications with a focus on performance...',
    },
    {
      'id': 2,
      'year': 2023,
      'title': 'UI/UX Designer at Information Systems Expo (ISE!)',
      'description':
          'Designed user interfaces and experiences for the Information Systems Expo (ISE!)...',
    },
    {
      'id': 3,
      'year': 2024,
      'title': 'Mobile Developer at Bangkit Academy',
      'description':
          'Contributed to the development of mobile applications as part of the Bangkit Academy...',
    },
  ];



  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SIMPLE PORTODIT',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 70,
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: onThemeToggle,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/foto_diri.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'I Putu Adhitya Pratama Mangku Purnama',
              style:
                  GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'Jr. Product Designer in Surabaya, Him',
                style:
                    GoogleFonts.roboto(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 20),

            // About Section
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.info_outline, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text(
                          'About Me',
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Hi Folks! I\'m known as Adhit, a third-year student majoring in Information Systems at the Sepuluh Nopember Institute of Technology...',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                    const Divider(height: 20, thickness: 1),

                    // College Information Section
                    const SizedBox(height: 30),
                    Text(
                      'College Information:',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Latest Education: Institut Teknologi Sepuluh Nopember',
                      style: GoogleFonts.nunito(),
                    ),
                    Text(
                      'NRP: 506211037',
                      style: GoogleFonts.nunito(),
                    ),
                    Text(
                      'Fun Fact: Introvert tapi jadi asisten dosen sebanyak 3 kali.',
                      style: GoogleFonts.nunito(),
                    ),

                    // Social Media Links
                    const Divider(height: 20, thickness: 1),
                    Text(
                      'Check out my latest design projects on my social media accounts 👇',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () =>
                          _launchUrl('https://www.instagram.com/yaaelahdit/'),
                      child: Text(
                        'Instagram: https://www.instagram.com/yaaelahdit/',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () => _launchUrl('https://dribbble.com/portodit'),
                      child: Text(
                        'Dribbble: https://dribbble.com/portodit',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () =>
                          _launchUrl('https://www.behance.net/portodit'),
                      child: Text(
                        'Behance: https://www.behance.net/portodit',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Work Experience Section
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.work_outline, color: Colors.orange),
                        const SizedBox(width: 8),
                        Text(
                          'Work Experience',
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ...experiences.map((exp) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '${exp['year']} - ${exp['title']}',
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                        )),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                WorkExperienceDetail(experiences: experiences),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.lightBlue, Colors.blue],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(
                              minHeight: 40, minWidth: double.infinity),
                          child: Text(
                            'See More',
                            style: GoogleFonts.roboto(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // My Projects Section
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.code, color: Colors.purple),
                        const SizedBox(width: 8),
                        Text(
                          'My Projects',
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ...projects.map((project) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '${project['year']} - ${project['title']}',
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                        )),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProjectDetail(projects: projects),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.lightBlue, Colors.blue],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(
                              minHeight: 40, minWidth: double.infinity),
                          child: Text(
                            'See More',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
