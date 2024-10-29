import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Profile Section
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.white, // Red outline color
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Image (Network)
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/768px-Albert_Einstein_Head.jpg', // Replace with your image URL
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Profile Information
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('NIM : 5200411150'),
                    Text('Nama : Angga Persada'),
                    Text('Prodi : Informatika'),
                    Text('Mata Kuliah : Mobile Internet of Things Praktik'),
                  ],
                ),
              ],
            ),
          ),
          // Grid Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              color: Colors.white,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Grid Image (Network)
                        Container(
                          padding: const EdgeInsets.only(top: 15.0),
                          width: 180,
                          height: 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1.0),
                            child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/768px-Albert_Einstein_Head.jpg', // Replace with your image URL
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text('Object'),
                        const Text('Desc'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
