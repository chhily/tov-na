class Destination {
  final String name;
  final String description;
  final String imageUrl;

  Destination({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class CambodianProvince {
  final String name;
  final String description;
  final List<Destination> destinations;
  final List<String> filters;

  CambodianProvince({
    required this.name,
    required this.description,
    required this.destinations,
    required this.filters,
  });
}

final List<CambodianProvince> cambodianProvinces = [
  CambodianProvince(
    name: 'Siem Reap',
    description:
        'Famous for the Angkor Archaeological Park, including Angkor Wat, Angkor Thom, and numerous ancient temples and ruins.',
    destinations: [
      Destination(
        name: 'Angkor Wat',
        description:
            'The largest religious monument in the world, known for its stunning Khmer architecture.',
        imageUrl: 'https://example.com/angkor_wat.jpg',
      ),
      Destination(
        name: 'Angkor Thom',
        description:
            'A vast temple complex and the last capital of the Khmer Empire.',
        imageUrl: 'https://example.com/angkor_thom.jpg',
      ),
      Destination(
        name: 'Ta Prohm',
        description:
            'A temple overgrown with trees, known for its picturesque ruins.',
        imageUrl: 'https://example.com/ta_prohm.jpg',
      ),
      Destination(
        name: 'Banteay Srei',
        description:
            'A 10th-century temple dedicated to the Hindu god Shiva, known for its intricate carvings.',
        imageUrl: 'https://example.com/banteay_srei.jpg',
      ),
      Destination(
        name: 'Phnom Bakheng',
        description:
            'A Hindu and Buddhist temple, popular for its sunset views over Angkor Wat.',
        imageUrl: 'https://example.com/phnom_bakheng.jpg',
      ),
    ],
    filters: [
      'Historical Sites',
      'Temples',
      'Cultural Heritage',
      'Adventure Activities',
    ],
  ),
  CambodianProvince(
    name: 'Phnom Penh',
    description:
        'The capital city, offering historical sites like the Royal Palace, National Museum, and the Killing Fields memorial.',
    destinations: [
      Destination(
        name: 'Royal Palace',
        description:
            'The royal residence of the King of Cambodia, featuring beautiful Khmer architecture.',
        imageUrl: 'https://example.com/royal_palace.jpg',
      ),
      Destination(
        name: 'National Museum of Cambodia',
        description:
            'Houses the world\'s largest collection of Khmer art, including sculptures, ceramics, and ethnographic objects.',
        imageUrl: 'https://example.com/national_museum.jpg',
      ),
      Destination(
        name: 'Killing Fields of Choeung Ek',
        description:
            'A memorial site for the victims of the Khmer Rouge regime, located just outside Phnom Penh.',
        imageUrl: 'https://example.com/killing_fields.jpg',
      ),
      Destination(
        name: 'Tuol Sleng Genocide Museum',
        description:
            'A former high school turned into a notorious prison by the Khmer Rouge, now a museum documenting their atrocities.',
        imageUrl: 'https://example.com/tuol_sleng.jpg',
      ),
      Destination(
        name: 'Wat Phnom',
        description:
            'A Buddhist temple that stands on a hill, offering a serene retreat in the bustling city.',
        imageUrl: 'https://example.com/wat_phnom.jpg',
      ),
    ],
    filters: [
      'Historical Sites',
      'Cultural Sites',
      'Museums',
      'Urban Exploration',
    ],
  ),
  CambodianProvince(
    name: 'Sihanoukville',
    description:
        'Known for its beaches, islands (like Koh Rong and Koh Rong Samloem), and vibrant nightlife.',
    destinations: [
      Destination(
        name: 'Sokha Beach',
        description:
            'A private beach known for its pristine sand and clear waters, perfect for relaxation and water activities.',
        imageUrl: 'https://example.com/sokha_beach.jpg',
      ),
      Destination(
        name: 'Otres Beach',
        description:
            'A laid-back beach with a bohemian vibe, offering beautiful sunsets and beachfront bars.',
        imageUrl: 'https://example.com/otres_beach.jpg',
      ),
      Destination(
        name: 'Koh Rong Island',
        description:
            'A popular island destination with white sandy beaches, coral reefs, and vibrant nightlife.',
        imageUrl: 'https://example.com/koh_rong.jpg',
      ),
      Destination(
        name: 'Koh Rong Samloem Island',
        description:
            'A quieter island known for its serene beaches and clear blue waters, ideal for snorkeling and diving.',
        imageUrl: 'https://example.com/koh_rong_samloem.jpg',
      ),
      Destination(
        name: 'Independence Beach',
        description:
            'A beach named after the Independence Hotel, offering a peaceful environment and stunning views.',
        imageUrl: 'https://example.com/independence_beach.jpg',
      ),
    ],
    filters: [
      'Beaches',
      'Islands',
      'Nightlife',
      'Water Activities',
    ],
  ),
  CambodianProvince(
    name: 'Battambang',
    description:
        'Known for its French colonial architecture, bamboo train (Norry), and nearby temples like Phnom Sampeau.',
    destinations: [
      Destination(
        name: 'Bamboo Train (Norry)',
        description:
            'A unique experience riding on makeshift bamboo platforms along old railway tracks.',
        imageUrl: 'https://example.com/bamboo_train.jpg',
      ),
      Destination(
        name: 'Phnom Sampeau',
        description:
            'A hilltop temple complex with caves, a pagoda, and stunning views of the surrounding countryside.',
        imageUrl: 'https://example.com/phnom_sampeau.jpg',
      ),
      Destination(
        name: 'Wat Banan',
        description:
            'An ancient temple offering picturesque views of the countryside, accessible via a steep staircase.',
        imageUrl: 'https://example.com/wat_banan.jpg',
      ),
      Destination(
        name: 'Phare Ponleu Selpak (Circus)',
        description:
            'A renowned circus school providing breathtaking performances and supporting local communities.',
        imageUrl: 'https://example.com/phare_circus.jpg',
      ),
      Destination(
        name: 'Colonial Buildings Walking Tour',
        description:
            'A tour of Battambang\'s charming colonial-era architecture, reflecting its French heritage.',
        imageUrl: 'https://example.com/colonial_tour.jpg',
      ),
    ],
    filters: [
      'Historical Sites',
      'Cultural Heritage',
      'Architecture',
      'Adventure Activities',
    ],
  ),
  CambodianProvince(
    name: 'Kampot',
    description:
        'Famous for its riverside setting, pepper plantations, and nearby Bokor Hill Station with its abandoned French colonial buildings.',
    destinations: [
      Destination(
        name: 'Bokor Hill Station',
        description:
            'An abandoned French colonial resort with stunning views and historical ruins.',
        imageUrl: 'https://example.com/bokor_hill.jpg',
      ),
      Destination(
        name: 'Kampot Pepper Farms',
        description:
            'Famous for producing high-quality pepper, these farms offer tours and tastings.',
        imageUrl: 'https://example.com/pepper_farm.jpg',
      ),
      Destination(
        name: 'Kampot Riverfront',
        description:
            'A scenic riverside area perfect for leisurely walks, boat rides, and dining.',
        imageUrl: 'https://example.com/riverfront.jpg',
      ),
      Destination(
        name: 'Phnom Chhnork Cave',
        description:
            'A limestone cave with a pre-Angkorian temple inside, offering a blend of nature and history.',
        imageUrl: 'https://example.com/phnom_chhnork.jpg',
      ),
      Destination(
        name: 'Kep Beach (nearby)',
        description:
            'A quiet beach known for its serene atmosphere and fresh seafood.',
        imageUrl: 'https://example.com/kep_beach.jpg',
      ),
    ],
    filters: [
      'Nature',
      'Scenic Views',
      'Adventure Activities',
      'Cultural Heritage',
    ],
  ),
  CambodianProvince(
    name: 'Kep',
    description:
        'Known for its seafood, especially crab, and its tranquil seaside atmosphere.',
    destinations: [
      Destination(
        name: 'Kep Beach',
        description:
            'A small beach known for its calm waters and beautiful sunsets.',
        imageUrl: 'https://example.com/kep_beach.jpg',
      ),
      Destination(
        name: 'Kep National Park',
        description:
            'A national park offering hiking trails, scenic viewpoints, and diverse wildlife.',
        imageUrl: 'https://example.com/kep_park.jpg',
      ),
      Destination(
        name: 'Crab Market',
        description:
            'A bustling market famous for its fresh seafood, especially blue crabs.',
        imageUrl: 'https://example.com/crab_market.jpg',
      ),
      Destination(
        name: 'Kep Butterfly Farm',
        description:
            'A serene garden with a variety of butterflies, flowers, and plants.',
        imageUrl: 'https://example.com/butterfly_farm.jpg',
      ),
      Destination(
        name: 'Kep Sailing Club',
        description:
            'A popular spot for sailing, kayaking, and enjoying the beautiful coastal views.',
        imageUrl: 'https://example.com/sailing_club.jpg',
      ),
    ],
    filters: [
      'Seafood',
      'Nature',
      'Relaxation',
      'Culinary Experiences',
    ],
  ),
  CambodianProvince(
    name: 'Koh Kong',
    description:
        'Offers ecotourism opportunities, including rainforest treks, waterfalls, and the Cardamom Mountains.',
    destinations: [
      Destination(
        name: 'Cardamom Mountains',
        description:
            'A mountain range known for its rich biodiversity, hiking trails, and stunning scenery.',
        imageUrl: 'https://example.com/cardamom_mountains.jpg',
      ),
      Destination(
        name: 'Chi Phat Ecotourism Village',
        description:
            'A community-based ecotourism project offering guided treks, wildlife spotting, and cultural experiences.',
        imageUrl: 'https://example.com/chi_phat.jpg',
      ),
      Destination(
        name: 'Tatai Waterfall',
        description:
            'A beautiful waterfall surrounded by lush rainforest, ideal for swimming and picnics.',
        imageUrl: 'https://example.com/tatai_waterfall.jpg',
      ),
      Destination(
        name: 'Peam Krasop Wildlife Sanctuary',
        description:
            'A mangrove sanctuary known for its rich wildlife and scenic boat tours.',
        imageUrl: 'https://example.com/peam_krasop.jpg',
      ),
      Destination(
        name: 'Botum Sakor National Park',
        description:
            'A large national park offering diverse wildlife, hiking trails, and eco-lodges.',
        imageUrl: 'https://example.com/botum_sakor.jpg',
      ),
    ],
    filters: [
      'Ecotourism',
      'Nature',
      'Adventure Activities',
      'Wildlife Viewing',
    ],
  ),
];
