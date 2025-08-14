import 'package:flutter/material.dart';

class Veggie {
  final String name;
  final String description;
  final String imagePath;
  final String soilMoisture;

  Veggie({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.soilMoisture,
  });
}

class VeggieLibraryScreen extends StatefulWidget {
  const VeggieLibraryScreen({super.key});

  @override
  State<VeggieLibraryScreen> createState() => _VeggieLibraryScreenState();
}

class _VeggieLibraryScreenState extends State<VeggieLibraryScreen> {
  final List<Veggie> _allVeggies = [
    Veggie(
      name: 'Lettuce',
      description:
          'Lettuce is a leafy green vegetable commonly used in salads. It grows best in cool weather and needs consistent watering. It prefers well-drained soil rich in organic matter and partial sunlight.',
      imagePath: 'assets/images/lettuce.jpg',
      soilMoisture: '50% - 70%',
    ),
    Veggie(
      name: 'Tomato',
      description:
          'Tomatoes are rich in vitamins and require lots of sunlight. They thrive in well-drained, fertile soil with a pH between 6.0 and 6.8. Regular watering is crucial to prevent fruit cracking.',
      imagePath: 'assets/images/tomato.jpg',
      soilMoisture: '60% - 80%',
    ),
    Veggie(
      name: 'Spinach',
      description:
          'Spinach grows quickly and can be harvested multiple times. It prefers cool temperatures and moist, nutrient-rich soil. High nitrogen content promotes lush leaf growth.',
      imagePath: 'assets/images/spinach.jpg',
      soilMoisture: '40% - 60%',
    ),
    Veggie(
      name: 'Kangkong',
      description:
          'Kangkong grows in moist soil or shallow water. It thrives in warm climates and full sunlight. Regular watering ensures tender stems and lush, mild-flavored leaves.',
      imagePath: 'assets/images/kangkong.jpg',
      soilMoisture: '60% - 90%',
    ),
    Veggie(
      name: 'Pechay',
      description:
          'Pechay grows quickly and matures in 30 to 45 days. It thrives in full sun and well-drained, fertile soil. Consistent watering keeps its crisp white stalks and tender green leaves fresh.',
      imagePath: 'assets/images/pechay.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Kale',
      description:
          'Kale thrives in cool temperatures but adapts to various climates. It prefers fertile, well-drained soil and consistent moisture. Harvesting young leaves ensures tender texture and mild flavor.',
      imagePath: 'assets/images/kale.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Dahon ng Sili',
      description:
          'Dahon ng sili grows best in warm climates with full sunlight. It prefers well-drained, fertile soil and regular watering. Harvesting young leaves keeps them tender and flavorful.',
      imagePath: 'assets/images/dns.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Saluyot',
      description:
          'Saluyot thrives in warm weather and full sunlight. It grows well in well-drained, fertile soil with regular watering. Harvesting young leaves ensures a tender texture and mild, slightly earthy flavor.',
      imagePath: 'assets/images/saluyot.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Alugbati',
      description:
          'Alugbati thrives in warm, humid climates and full sunlight. It prefers moist, fertile soil and regular watering. Frequent harvesting encourages tender, succulent leaves and vigorous growth.',
      imagePath: 'assets/images/alugbati.jpg',
      soilMoisture: '70% - 80%',
    ),
    Veggie(
      name: 'Malunggay',
      description:
          'Malunggay grows well in warm climates and full sunlight. It prefers well-drained soil and minimal watering once established. Regular harvesting of young leaves keeps them tender and nutritious.',
      imagePath: 'assets/images/malunggay.jpg',
      soilMoisture: '50% - 60%',
    ),
    Veggie(
      name: 'Gabi Leaves',
      description:
          'Gabi leaves thrive in warm, humid climates and moist soil. They grow best in partially shaded areas with consistent watering. Harvesting young leaves reduces bitterness and ensures a tender texture.',
      imagePath: 'assets/images/gl.jpg',
      soilMoisture: '70% - 90%',
    ),
    Veggie(
      name: 'Kulitis',
      description:
          'Kulitis grows well in warm climates and full sunlight. It prefers fertile, well-drained soil and regular watering. Harvesting young leaves keeps them tender with a mild, slightly nutty flavor.',
      imagePath: 'assets/images/kulitis.jpg',
      soilMoisture: '50% - 60%',
    ),
    Veggie(
      name: 'Kamote Tops',
      description:
          'Kamote tops thrive in warm climates and full sunlight. They grow best in well-drained, fertile soil with regular watering. Frequent harvesting of young leaves keeps them tender and flavorful.',
      imagePath: 'assets/images/kamotetops.jpg',
      soilMoisture: '60% - 80%',
    ),
    Veggie(
      name: 'Sitaw',
      description:
          'Sitaw grows well in warm climates and full sunlight. It prefers well-drained, fertile soil and consistent watering. Regular harvesting encourages tender pods and continuous leaf growth.',
      imagePath: 'assets/images/sitaw.jpg',
      soilMoisture: '50% - 60%',
    ),
  ];

  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    List<Veggie> filteredVeggies =
        _allVeggies
            .where(
              (veggie) => veggie.name.toLowerCase().startsWith(
                _searchText.toLowerCase(),
              ),
            )
            .toList()
          ..sort(
            (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
          );

    return Scaffold(
      appBar: AppBar(title: const Text('Veggie Library'), centerTitle: true),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search vegetable...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
            ),
          ),
          // Grid list
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: filteredVeggies.length,
              itemBuilder: (context, index) {
                final veggie = filteredVeggies[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => VeggieDetailScreen(veggie: veggie),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Centered image
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            veggie.imagePath,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          veggie.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Soil Moisture: ${veggie.soilMoisture}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class VeggieDetailScreen extends StatelessWidget {
  final Veggie veggie;

  const VeggieDetailScreen({super.key, required this.veggie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(veggie.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image centered
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                veggie.imagePath,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    veggie.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Predefined Soil Moisture: ${veggie.soilMoisture}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
