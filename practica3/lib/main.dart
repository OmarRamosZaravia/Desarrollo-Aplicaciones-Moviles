import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Header
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.menu),
                              onPressed: () {},
                            ),
                            const Text(
                              'The New York Times',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          '               Updated: Friday, May 24th at 13:40',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Main Image
              Image.network(
"https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Protestas_en_Lima_por_golpe_de_estado_parlamentario_27.jpg/432px-Protestas_en_Lima_por_golpe_de_estado_parlamentario_27.jpg"
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Article Title
                    Text(
                      "Pelosi Wants to Win House, but Can She Corral the Democrats?",                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    // First Article Subtitle
                    Text(
                      "• At 77, Representative Nancy Pelosi remains a dominant, but polarizing, figure in Washington.\n"
                          "• How she bridges Democrats' factions on immigration may help determine whether she can lead her party to a majority.",                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2h ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.file_upload,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                            SizedBox(width: 8.0),
                            Icon(
                              Icons.bookmark,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      thickness: 1,
                    ),
                    // Second Article Title
                    Text(
                      "Analysis: G.O.P. Squirms as Trump Veers Off Script With Abuse Remarks",                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
