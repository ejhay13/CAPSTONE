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
      imagePath: 'assets/images/lettuce.png',
      soilMoisture: '50% - 70%',
    ),
    Veggie(
      name: 'Tomato',
      description:
          'Tomatoes are rich in vitamins and require lots of sunlight. They thrive in well-drained, fertile soil with a pH between 6.0 and 6.8. Regular watering is crucial to prevent fruit cracking.',
      imagePath: 'assets/images/tomato.png',
      soilMoisture: '60% - 80%',
    ),
    Veggie(
      name: 'Spinach',
      description:
          'Spinach grows quickly and can be harvested multiple times. It prefers cool temperatures and moist, nutrient-rich soil. High nitrogen content promotes lush leaf growth.',
      imagePath: 'assets/images/spinach.png',
      soilMoisture: '40% - 60%',
    ),
    Veggie(
      name: 'Pechay (Bok Choy)',
      description:
          'A fast-growing leafy green rich in vitamins A and C. Grows best in cool conditions and fertile soil.',
      imagePath: 'assets/images/pechay.png',
      soilMoisture: '60% - 80%',
    ),
    Veggie(
      name: 'Kangkong (Water Spinach)',
      description:
          'A semi-aquatic vegetable that thrives in wet soil or shallow water. Rich in iron and fiber.',
      imagePath: 'assets/images/kangkong.png',
      soilMoisture: '70% - 90%',
    ),
    Veggie(
      name: 'Mustasa (mustard greens)',
      description:
          'A leafy crop with a spicy taste, high in antioxidants. Prefers full sun and fertile, well-drained soil.',
      imagePath: 'assets/images/mustasa.png',
      soilMoisture: '60% - 80%',
    ),
     Veggie(
      name: 'Talbos ng Kamote (sweet potato tops)',
      description:
          'Nutritious leafy shoots of the sweet potato plant. Grows well in warm climates and sandy loam soil',
      imagePath: 'assets/images/tnk.png',
      soilMoisture: '60% - 80%',
    ),
     Veggie(
      name: 'Saluyot (Jute leaves)',
      description:
          'Nutritious leafy vegetable rich in fiber and calcium, often used in local dishes. Thrives in warm conditions.',
      imagePath: 'assets/images/saluyot.png',
      soilMoisture: '60% - 80%',
    ),
     Veggie(
      name: 'Alugbati (Malabar spinach)',
      description:
          'A climbing leafy green high in vitamins and minerals. Grows well in hot, humid conditions.',
      imagePath: 'assets/images/alugbati.png',
      soilMoisture: '70% - 85%',
    ),
    Veggie(
      name: 'Kulitis (amaranth)',
      description:
          ' A hardy leafy vegetable packed with iron and calcium. Grows easily in most soils.',
      imagePath: 'assets/images/kulitis.png',
      soilMoisture: '60% - 80%',
    ),
     Veggie(
      name: 'Repolyo (cabbage)',
      description:
          'A cool-weather crop rich in vitamin K and C. Prefers fertile, well-drained soil.',
      imagePath: 'assets/images/repolyo.png',
      soilMoisture: '65% - 80%',
    ),
     Veggie(
      name: 'Talong (eggplant)',
      description:
          'High in fiber and antioxidants. Requires warm climate and fertile soil.',
      imagePath: 'assets/images/talong.png',
      soilMoisture: '65% - 80%',
    ),
     Veggie(
      name: 'Okra',
      description:
          'A heat-tolerant crop high in vitamins A and C. Grows well in loamy soil. ',
      imagePath: 'assets/images/okra.png',
      soilMoisture: '60% - 80%',
    ),
     Veggie(
      name: 'Sili (chili/pepper)',
      description:
          ' A spicy fruit vegetable rich in vitamin C. Prefers sunny conditions and well-drained soil.',
      imagePath: 'assets/images/sili.png',
      soilMoisture: '60% - 75%',
    ),
      Veggie(
        name: 'Upo (bottle gourd',
        description:
            'A climbing vine vegetable with edible fruits, high in water content. Needs full sun.',
        imagePath: 'assets/images/upo.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Kalabasa (squash)',
        description:
            'Nutritious and energy-rich, grows well in sandy loam soil. Requires wide spacing.',
        imagePath: 'assets/images/kalabasa.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Ampalaya (bitter gourd)',
        description:
            'A climbing vegetable rich in iron and good for digestion. Thrives in warm climates.',
        imagePath: 'assets/images/ampalaya.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Sitaw (string beans)',
        description:
            'A climbing legume rich in protein and fiber. Grows well in well-drained soil.',
        imagePath: 'assets/images/sitaw.png',
        soilMoisture: '60% - 80%',
      ),
      Veggie(
        name: 'Patani (lima beans)',
        description:
            'A protein-rich legume that thrives in well-drained soil. Requires support when growing.',
        imagePath: 'assets/images/patani.png',
        soilMoisture: '60% - 75%',
      ),
      Veggie(
        name: 'Bataw (hyacinth bean)',
        description:
            'A hardy legume with edible pods and seeds. Grows best in warm conditions.',
        imagePath: 'assets/images/bataw.png',
        soilMoisture: '60% - 75%',
      ),
      Veggie(
        name: 'Labanos (radish)',
        description:
            'A fast-growing root crop high in vitamin C. Grows best in loose, sandy soil.',
        imagePath: 'assets/images/labanos.png',
        soilMoisture: '60% - 70%',
      ),
      Veggie(
        name: 'Carrot',
        description:
            'A root vegetable rich in beta-carotene. Prefers cool climate and loose, well-drained soil.',
        imagePath: 'assets/images/carrot.png',
        soilMoisture: '60% - 80%',
      ),
      Veggie(
        name: 'Kamote (sweet potato)',
        description:
            ' A starchy root crop high in fiber and energy. Thrives in sandy loam soil.',
        imagePath: 'assets/images/kamote.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Sibuyas (onion)',
        description:
            'A bulb crop used widely in cooking. Prefers full sun and fertile, loose soil.',
        imagePath: 'assets/images/sibuyas.png',
        soilMoisture: '60% - 70%',
      ),
      Veggie(
        name: 'Bawang (garlic)',
        description:
            'A bulbous plant with strong flavor, used for seasoning. Prefers well-drained soil and full sun.',
        imagePath: 'assets/images/bawang.png',
        soilMoisture: '60% - 70%',
      ),
      Veggie(
        name: 'Luya (ginger)',
        description:
            'A spice root with medicinal properties. Grows well in sandy loam soil with partial shade.',
        imagePath: 'assets/images/luya.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Singkamas (jicama)',
        description:
            ' A crunchy root crop eaten fresh. Grows best in sandy loam soil under warm climates.',
        imagePath: 'assets/images/singkamas.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Gabi (taro)',
        description:
            'A root crop rich in starch and fiber. Needs moist soil and partly shaded areas.',
        imagePath: 'assets/images/gabi.png',
        soilMoisture: '70% - 85%',
      ),
      Veggie(
        name: 'Pipino (Cucumber)',
        description:
            'A drought-resistant crop with edible seeds rich in oil. Grows well in well-drained soil.',
        imagePath: 'assets/images/pipino.png',
        soilMoisture: '65% - 80%',
      ),
      Veggie(
        name: 'Sayote (Chayote)',
        description:
            'A climbing vegetable, edible fruit and shoots, thrives in cool upland areas.',
        imagePath: 'assets/images/sayote.png',
        soilMoisture: '60% - 80%',
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
