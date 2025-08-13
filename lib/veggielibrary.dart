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
          'Kangkong is a leafy green vegetable with tender stems and mild-flavored leaves, commonly used in Filipino dishes like adobong kangkong.',
      imagePath: 'assets/images/kangkong.jpg',
      soilMoisture: '60% - 90%',
    ),
    Veggie(
      name: 'Pechay',
      description:
          'Pechay is an Asian leafy green with crisp white stalks and soft green leaves. It grows well in both pots and garden beds and has a short growing cycle of about 30 to 45 days. Its a common ingredient in stir fries, soups, and noodle dishes.',
      imagePath: 'assets/images/pechay.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Kale',
      description:
          'Kale is a hardy leafy green known for its curly leaves and high nutritional value. It grows well in cooler temperatures but can tolerate a wide range of conditions. Regular watering keeps its leaves tender and less bitter.”',
      imagePath: 'assets/images/kale.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Dahon ng Sili',
      description:
          'Tender, slightly bitter leaves from the chili plant. Commonly used in tinola, ginisa, and soups for added flavor. They come from the same plant that produces spicy chili peppers, but the leaves themselves are mild in taste.”',
      imagePath: 'assets/images/dns.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Saluyot',
      description:
          'Nutritious leafy vegetable high in fiber, iron, and vitamins. It develops a slightly slimy texture when cooked, similar to okra. Popular in Ilocano dishes like dinengdeng and bulanglang.”',
      imagePath: 'assets/images/saluyot.jpg',
      soilMoisture: '60% - 70%',
    ),
    Veggie(
      name: 'Alugbati',
      description:
          'A tropical climbing vine with thick, fleshy leaves and stems. Its heat-tolerant and continues producing leaves even in hot weather. Great for ginisa and soups.”',
      imagePath: 'assets/images/alugbati.jpg',
      soilMoisture: '70% - 80%',
    ),
    Veggie(
      name: 'Malunggay',
      description:
          'Highly nutritious leaves rich in vitamins and minerals. Common in tinola, ginisang gulay, and soups.”',
      imagePath: 'assets/images/malunggay.jpg',
      soilMoisture: '50% - 60%',
    ),
    Veggie(
      name: 'Gabi Leaves',
      description:
          'Used in dishes like laing and ginataang gabi. Must be cooked thoroughly to remove itchiness.”',
      imagePath: 'assets/images/gl.jpg',
      soilMoisture: '70% - 90%',
    ),
    Veggie(
      name: 'Kulitis',
      description:
          'Soft, colorful leaves rich in vitamins and minerals. Often sautéed with garlic or added to soups.”',
      imagePath: 'assets/images/kulitis.jpg',
      soilMoisture: '50% - 60%',
    ),
    Veggie(
      name: 'Kamote Tops',
      description:
          'Young tender leaves, slightly sweet, often sautéed or steamed for salads.”',
      imagePath: 'assets/images/kamotetops.jpg',
      soilMoisture: '60% - 80%',
    ),
    Veggie(
      name: 'Sitaw',
      description:
          ' a climbing vegetable grown mainly for its long, slender pods, but its young shoots and leaves (talbos) are also eaten. It has a mild flavor and is rich in vitamins A and C, fiber, and minerals.”',
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
