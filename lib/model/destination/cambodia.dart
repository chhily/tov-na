import 'package:tov_na/model/food/food.dart';

import '../activity/activity.dart';

class Food {
  final String name;
  final String description;
  final String imageUrl;

  Food({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class Activity {
  final String name;
  final String description;
  final String imageUrl;

  Activity({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class Destination {
  final String name;
  final String description;
  final String imageUrl;
  final String fullDescription;
  final String location;
  final double accommodationPrice;

  Destination({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.fullDescription,
    required this.location,
    required this.accommodationPrice,
  });
}

class CambodianProvince {
  final List<Activity> activity;
  final List<Food> food;
  final String name;
  final String description;
  final List<Destination> destinations;
  final List<String> filters;

  CambodianProvince({
    required this.name,
    required this.description,
    required this.destinations,
    required this.filters,
    this.activity = const [],
    this.food = const [],
  });
}

final List<CambodianProvince> cambodianProvinces = [
  CambodianProvince(
    activity: siemReapActivities,
    food: siemReapFoods,
    name: 'Siem Reap',
    description:
        'Famous for the Angkor Archaeological Park, including Angkor Wat, Angkor Thom, and numerous ancient temples and ruins.',
    destinations: [
      Destination(
        name: 'Angkor Wat',
        description:
            'The largest religious monument in the world, known for its stunning Khmer architecture.',
        imageUrl:
            'https://images.unsplash.com/photo-1549463601-da058868e20d?q=80&w=2070&auto=format',
        accommodationPrice: 25.0,
        fullDescription:
            'Angkor Wat is a temple complex in Cambodia and is the largest religious monument in the world, on a site measuring 162.6 hectares. Originally constructed as a Hindu temple dedicated to the god Vishnu for the Khmer Empire, it was gradually transformed into a Buddhist temple towards the end of the 12th century.',
        location: "Siem Reap, Cambodia",
      ),
      Destination(
        name: 'Angkor Thom',
        description:
            'A vast temple complex and the last capital of the Khmer Empire.',
        fullDescription:
            'Angkor Thom, located in present-day Cambodia, was the last and most enduring capital city of the Khmer Empire. It was established in the late twelfth century by King Jayavarman VII. The city is famous for its colossal stone faces and grand architecture.',
        accommodationPrice: 20.0,
        location: "Siem Reap, Cambodia",
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661924223647-40abbac077c0?q=80&w=2070&auto=format',
      ),
      Destination(
        name: 'Ta Prohm',
        fullDescription:
            'Ta Prohm is a temple at Angkor, Cambodia, built in the Bayon style largely in the late 12th and early 13th centuries and originally called Rajavihara. It was founded by the Khmer King Jayavarman VII as a Mahayana Buddhist monastery and university.',
        description:
            'A temple overgrown with trees, known for its picturesque ruins.',
        imageUrl:
            'https://images.unsplash.com/photo-1699203119570-95b2560db2f9?q=80&w=2070&auto=format',
        accommodationPrice: 18.0,
        location: 'Siem Reap, Cambodia',
      ),
      Destination(
        name: 'Banteay Srei',
        fullDescription:
            'Banteay Srei is a 10th-century Cambodian temple dedicated to the Hindu god Shiva. Located in the area of Angkor in Cambodia, it lies near the hill of Phnom Dei, 25 km north-east of the main group of temples that once belonged to the medieval capitals of Yasodharapura and Angkor Thom.',
        description:
            'A 10th-century temple dedicated to the Hindu god Shiva, known for its intricate carvings.',
        accommodationPrice: 15.0,
        location: 'Siem Reap, Cambodia',
        imageUrl:
            'https://images.unsplash.com/photo-1699181017601-3129f71a9578?q=80&w=1974&auto=format',
      ),
      Destination(
        accommodationPrice: 12.0,
        fullDescription:
            'Phnom Bakheng is a Hindu and Buddhist temple in the form of a temple mountain located in Angkor, Cambodia. Dedicated to Shiva and constructed at the end of the 9th century, it was the architectural centerpiece of a new capital Yasodharapura, centered on Phnom Bakheng.',
        name: 'Phnom Bakheng',
        description:
            'A Hindu and Buddhist temple, popular for its sunset views over Angkor Wat.',
        imageUrl:
            'https://www.wmf.org/sites/default/files/styles/project_gallery_full_size/public/projects/gallery/phnom_bakheng_afcp_2015_image_01.jpg',
        location: 'Siem Reap, Cambodia',
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
    activity: phnomPenhActivities,
    food: phnomPenhFoods,
    name: 'Phnom Penh',
    description:
        'The capital city, offering historical sites like the Royal Palace, National Museum, and the Killing Fields memorial.',
    destinations: [
      Destination(
        name: 'Royal Palace',
        fullDescription:
            'The Royal Palace in Phnom Penh is a complex of buildings which serves as the royal residence of the king of Cambodia. The palace was constructed after King Norodom relocated the royal capital from Oudong to Phnom Penh in the mid-19th century.',
        description:
            'The royal residence of the King of Cambodia, featuring beautiful Khmer architecture.',
        imageUrl: 'https://static.toiimg.com/photo/43797823.cms',
        accommodationPrice: 50.0,
        location: 'Phnom Penh, Cambodia',
      ),
      Destination(
        name: 'National Museum of Cambodia',
        description:
            'Houses the world\'s largest collection of Khmer art, including sculptures, ceramics, and ethnographic objects.',
        imageUrl:
            'https://lp-cms-production.imgix.net/2023-05/shutterstockRF135587363.jpg',
        fullDescription:
            'The National Museum of Cambodia in Phnom Penh is Cambodia\'s largest museum of cultural history and is the country\'s leading historical and archaeological museum. The museum houses one of the world\'s largest collections of Khmer art, including sculpture, ceramics, bronzes, and ethnographic objects.',
        accommodationPrice: 10.0,
        location: 'Phnom Penh, Cambodia',
      ),
      Destination(
        name: 'Tuol Sleng Genocide Museum',
        description:
            'A former high school turned into a notorious prison by the Khmer Rouge, now a museum documenting their atrocities.',
        fullDescription:
            'The Tuol Sleng Genocide Museum is a museum in Phnom Penh, the capital of Cambodia, chronicling the Cambodian genocide. The site is a former high school which was used as Security Prison 21 by the Khmer Rouge regime from its rise to power in 1975 to its fall in 1979.',
        imageUrl:
            'https://cambodianess.com/uploads/images/1599218166dp81r-000-1th06t.jpg',
        accommodationPrice: 10.0,
        location: 'Phnom Penh, Cambodia',
      ),
      Destination(
        accommodationPrice: 10.0,
        location: 'Phnom Penh, Cambodia',
        fullDescription:
            'According to legend, in 1372, a wealthy old lady named "Penh" lived on a small hill near the bank of the confluence of the four rivers. One day, when it was raining, Penh went down to the port to take a bath and saw a floating Koki tree in the river and she called the village to fish it from the water. She and the villagers took a piece of wood to scrape off the mud and in the hole of the Koki tree, there were four Buddha statues made of bronze, brass and one made of marble. Another statue was in the form of Vishnu with the hands holding a staff, a chain, a snail, and a lotus flower. Penh asked the villagers to help retrieve the Koki tree and retrieve the four treasures. Later, Penh assigned the villagers to build an artificial hill and build a small wooden temple on top of the hill to house the statues. She invited monks to bless the statues and the monks named the hermitage "Wat Phnom" which is known as to this day.',
        name: 'Wat Phnom',
        description:
            'A Buddhist temple that stands on a hill, offering a serene retreat in the bustling city.',
        imageUrl: 'https://shorturl.at/2LePM',
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
    activity: sihanoukvilleActivities,
    food: sihanoukvilleFoods,
    name: 'Sihanoukville',
    description:
        'Known for its beaches, islands (like Koh Rong and Koh Rong Samloem), and vibrant nightlife.',
    destinations: [
      Destination(
        name: 'Sokha Beach',
        fullDescription:
            "Midway between Independence and Serendipity Beaches lies Sihanoukville's prettiest stretch of sand, 1.5km-long Sokha Beach. Its fine, silicon-like sand squeaks loudly underfoot. The tiny eastern end of Sokha Beach is open to the public and is rarely crowded.",
        description:
            'A private beach known for its pristine sand and clear waters, perfect for relaxation and water activities.',
        imageUrl:
            'https://evivatour.com/wp-content/uploads/2021/09/Sokha-Beach-Resort-Sihanoukville-Cambodia.jpg',
        accommodationPrice: 30.0,
        location: 'Sihanoukville, Cambodia',
      ),
      Destination(
        fullDescription:
            "Past the southern end of Ochheuteal Beach, beyond the Phnom Som Nak Sdach (Hill of the King's Palace) headland, lies stunning Otres Beach, a seemingly infinite strip of casuarinas and blinding white sand.",
        name: 'Otres Beach',
        description:
            'A laid-back beach with a bohemian vibe, offering beautiful sunsets and beachfront bars.',
        imageUrl:
            'https://www.telegraph.co.uk/content/dam/Travel/Destinations/Asia/Cambodia/otres.jpg',
        accommodationPrice: 25.0,
        location: 'Sihanoukville, Cambodia',
      ),
      Destination(
        name: 'Koh Rong Island',
        fullDescription:
            "Koh Rong is the biggest of the islands off the coast of Sihanoukville in the Gulf of Thailand."
            " It stretches from south-east to north-west, is roughly elongate shaped and it"
            " encompasses an area of 78 km2 (30 sq mi). The terrain is predominantly hilly "
            "with a sizable mountain 316 m (1,037 ft) at the island’s north-west. "
            "The hills provide water for countless creeks and estuaries. The island’s "
            "interior is almost completely forested, concealing a number of seasonal waterfalls. "
            "Koh Rong has around 43 km (27 mi) of delicate beaches. "
            "There are no less than 23 beaches of varying length and coloration—from (predominantly)"
            "white to beige to rose-colored sands—along most of the coastline. Bays, protruding capes "
            "and impressive sandstone rock formations contribute to the island's scenic panorama. "
            "The southern coastline, exposed to the weather and open sea, is particularly spectacular, "
            "whereas the eastern coast, which faces towards the land, is characterized by a sequence of smooth hills,"
            " gently sloping towards the numerous crescent-shaped beaches, inlets and bays."
            " Several small islets and many reefs provide an abundance of natural"
            " environments for a great variety of marine life."
            " The center of the island is a flat 'belt' of sediments that joins the two hilly massifs of the south-east and north-west."
            " Here is a small savanna—the result of human activities and cultivation.",
        description:
            'A popular island destination with white sandy beaches, coral reefs, and vibrant nightlife.',
        imageUrl:
            'https://data.agatetravel.com/images/photogallery/2020/koh-rong-island-cambodia.jpg',
        accommodationPrice: 50.0,
        location: 'Sihanoukville, Cambodia',
      ),
      Destination(
        name: 'Koh Rong Samloem Island',
        fullDescription:
            "Koh Rong Sanloem (Khmer: កោះរ៉ុងសន្លឹម, Kaôh Rŏng Sânlœ̆m [kɑh.roŋ.sanlɨm]) is an island off the coast of Sihanoukville, Cambodia, 4 km (2 mi) south of Koh Rong. It is around 9 km (6 mi) long (north to south), 4 km (2 mi) wide (east to west) and 1 km (1 mi) wide at its narrowest point. Its distance from the local port of Sihanoukville is 25 km (16 mi) (beeline) and 23 km (14 mi) (beeline) from the Serendipity/Ochheuteal beach pier.[2] The word 'Sanloem'"
            " translates to: 1. drowsiness[3] and to: 2. far out and hard to discern,"
            " in a wider sense.[4] Inconsistencies on how to spell the island's name in"
            " its Latinized version date back to the 19th century. The first controversial "
            "spelling variants were issued by map makers during French rule."
            " Alternatives have since become widespread and are in common usage. "
            "Often confusion ensues as Google Maps offers the phonetically most consistent variant,"
            " whereas Google Search redirects to an alternative."
            "Koh Rong Sanloem is part of Koh Rong City and lies within Sihanoukville Province in Commune 5 (Koh Rong)."
            " It is also part of Koh Rong Marine National Park that was established in 2018."
            " Alongside its sister-island Koh Rong it has developed into a popular holiday destination for individual travelers."
            " With respect to the island's very tiny population, by 2014 the tourism sector became the core of the economy",
        description:
            'A quieter island known for its serene beaches and clear blue waters, ideal for snorkeling and diving.',
        imageUrl:
            'https://cdn.theculturetrip.com/wp-content/uploads/2021/05/2c4j3en-e1625485939998.jpg',
        accommodationPrice: 59.0,
        location: 'Sihanoukville, Cambodia',
      ),
      Destination(
        name: 'Independence Beach',
        description:
            'A beach named after the Independence Hotel, offering a peaceful environment and stunning views.',
        fullDescription:
            'Independence Beach is a quieter and more relaxed beach in Sihanoukville, Cambodia. It is known for its clean white sands, calm waters, and beautiful sunset views. The beach is less crowded than some of the other beaches in the area, making it a great place to relax and unwind.',
        imageUrl:
            'https://cf.bstatic.com/xdata/images/hotel/max1024x768/78234731.jpg?k=5144061be2a38c2c368994a219f1ffd3754faa3d92406af5f21e373e1767d674&o=&hp=1',
        accommodationPrice: 25.0,
        location: 'Sihanoukville, Cambodia',
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
    activity: battambangActivities,
    food: battambangFoods,
    name: 'Battambang',
    description:
        'Known for its French colonial architecture, bamboo train (Norry), and nearby temples like Phnom Sampeau.',
    destinations: [
      Destination(
        fullDescription:
            'The Bamboo Train in Battambang, Cambodia, is a unique and fun way to travel through the countryside on a bamboo platform placed on old railway tracks. The ride offers a scenic view of the countryside and is a popular attraction for tourists.',
        name: 'Bamboo Train (Norry)',
        description:
            'A unique experience riding on makeshift bamboo platforms along old railway tracks.',
        imageUrl:
            'https://m.psecn.photoshelter.com/img-get/I0000NVV7PX7ilME/s/1200/I0000NVV7PX7ilME.jpg',
        accommodationPrice: 5.0,
        location: 'Battambang, Cambodia',
      ),
      Destination(
        fullDescription:
            'Phnom Sampeau is a hill in Battambang, Cambodia, known for its beautiful Buddhist temple, caves, and a memorial to the victims of the Khmer Rouge. The hill offers stunning views of the surrounding countryside and is a popular destination for tourists.',
        accommodationPrice: 15.0,
        location: 'Battambang, Cambodia',
        name: 'Phnom Sampeau',
        description:
            'A hilltop temple complex with caves, a pagoda, and stunning views of the surrounding countryside.',
        imageUrl:
            'https://www.gocambodia.tours/wp-content/uploads/2016/12/On-the-top-of-Phnom-Sampeou-Mountain.jpg',
      ),
      Destination(
        fullDescription:
            'Wat Banan is an ancient temple located on a hilltop in Battambang, Cambodia. The temple offers panoramic views of the surrounding countryside and a serene atmosphere. It is a popular destination for tourists looking to explore historical sites and enjoy nature.',
        accommodationPrice: 10.0,
        location: 'Battambang, Cambodia',
        name: 'Wat Banan',
        description:
            'An ancient temple offering picturesque views of the countryside, accessible via a steep staircase.',
        imageUrl:
            'https://t3.ftcdn.net/jpg/04/25/47/16/360_F_425471641_R34VCoXjzhvqSnT6B732SVb7uDdyOggg.jpg',
      ),
      Destination(
        fullDescription: "Unavailable",
        name: 'Colonial Buildings Walking Tour',
        accommodationPrice: 10.0,
        location: 'Battambang, Cambodia',
        description:
            'A tour of Battambang\'s charming colonial-era architecture, reflecting its French heritage.',
        imageUrl: 'https://shorturl.at/vZnOS',
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
    activity: kampotActivities,
    food: kampotFoods,
    name: 'Kampot',
    description:
        'Famous for its riverside setting, pepper plantations, and nearby Bokor Hill Station with its abandoned French colonial buildings.',
    destinations: [
      Destination(
        fullDescription:
            'Bokor National Park is a national park located in Kampot, Cambodia. The park features lush forests, waterfalls, and the abandoned Bokor Hill Station. It is a popular destination for tourists looking to explore nature and enjoy outdoor activities.',
        accommodationPrice: 20.0,
        location: 'Kampot, Cambodia',
        name: 'Bokor Hill Station',
        description:
            'An abandoned French colonial resort with stunning views and historical ruins.',
        imageUrl:
            'https://www.mrlinhadventure.com/UserFiles/image/Cambodia-highlights/Bokor-National-Park1.jpg',
      ),
      Destination(
        name: 'Kampot Pepper Farms',
        fullDescription:
            'Kampot is famous for its high-quality pepper, and visiting the Kampot Pepper Plantations is a must-do activity. Learn about the production process of Kampot pepper and enjoy a tour of the plantations.',
        accommodationPrice: 10.0,
        location: 'Kampot, Cambodia',
        description:
            'Famous for producing high-quality pepper, these farms offer tours and tastings.',
        imageUrl:
            'https://www.westend61.de/images/0001748037pw/aerial-view-of-la-plantation-kampot-province-cambodia-AAEF16364.jpg',
      ),
      Destination(
        name: 'Kampot Riverfront',
        fullDescription:
            'The Kampot River is a scenic river in Kampot, Cambodia, offering boat tours, fishing, and stunning sunset views. It is a popular destination for tourists looking to relax and enjoy the natural beauty of the area.',
        accommodationPrice: 5.0,
        location: 'Kampot, Cambodia',
        description:
            'A scenic riverside area perfect for leisurely walks, boat rides, and dining.',
        imageUrl:
            'https://cf.bstatic.com/xdata/images/hotel/max1024x768/553374638.jpg?k=7bb349e37ca888152133ad76072c085f770f8388995ed5e4e8e0232f447a16d7&o=&hp=1',
      ),
      Destination(
        accommodationPrice: 5.0,
        location: 'Kampot, Cambodia',
        fullDescription: "Unavaible",
        name: 'Phnom Chhnork Cave',
        description:
            'A limestone cave with a pre-Angkorian temple inside, offering a blend of nature and history.',
        imageUrl:
            'https://travellerswithtime.com/exploring-kampot-caves-in-cambodia/p1080005-2/',
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
    activity: kepActivities,
    food: kepFoods,
    name: 'Kep',
    description:
        'Known for its seafood, especially crab, and its tranquil seaside atmosphere.',
    destinations: [
      Destination(
        name: 'Kep Beach',
        fullDescription:
            "The 1km white sandy beach is in a pretty crescent shape and is popular with those who like to relax on the beach or go for a swim. A promenade behind the beach has various dining options, with all of them serving a variety of fresh seafood and Kep's famous crab. Travellers on a boat ride to Rabbit Island.",
        location: "Kep, Cambodia",
        accommodationPrice: 10.0,
        description:
            'A small beach known for its calm waters and beautiful sunsets.',
        imageUrl:
            'https://infotainment.ams.com.kh/wp-content/uploads/2023/11/KEP-Beach.jpg',
      ),
      Destination(
        fullDescription:
            "Kep National Park (Khmer: ឧទ្យានជាតិកែប) is a national park in Cambodia's Kep Province that was established in 1993 and covers an area of 11.52 km2 (4.45 sq mi). The nearest town lies at Kep. The park includes a small mountain range and a number of hiking trails.",
        name: 'Kep National Park',
        description:
            'A national park offering hiking trails, scenic viewpoints, and diverse wildlife.',
        imageUrl:
            'https://www.cambodiadrivertour.com/files/cambodia_tour/_kep-park4-1024x768.jpg',
        accommodationPrice: 5.0,
        location: "Kep, Island",
      ),
      Destination(
        accommodationPrice: 25.0,
        location: "Kep, Island",
        fullDescription:
            'Rabbit Island covers a total area of nearly 2 square kilometers'
            ' to the South of Kep town. Being compared with many other'
            ' top-visited Cambodia tourist spots, Rabbit Island may not '
            'be as attractive as these spots. However, the island has earned '
            'its own reputation as a true gem for travelers to have a life-time'
            'journey here to cancel all the hustle and the bustle and enjoy a '
            'meaningful vacation. It is worth noticing that life on the island '
            'is quiet and even tedious a bit. Electricity and wi-fi will not be '
            'available all day long as they just run from dusk till about 10:00 pm every day.'
            ' Therefore, daily life on Rabbit Island may not suit '
            'the one who does not have a good preparation for such things happen. '
            'However, it should be a heaven for nature lovers and adventure seekers '
            'to take advantage of these times to go outside and explore the natural beauty of the Island.',
        name: 'Rabbit island',
        description: 'Rabbit Island is another popular name of Koh Tonsay.'
            ' The special feature that creates the name of the '
            'island is its bizarre shape that looks like a giant rabbit lying over the sea.',
        imageUrl:
            'https://www.bordersofadventure.com/wp-content/uploads/2020/01/Rabbit-Island-Cambodia-Kep.jpg',
      ),
      Destination(
        accommodationPrice: 5.0,
        location: "Mountain, Kep",
        fullDescription: "Fun place to get coffee",
        name: 'Kep Rope Park',
        description:
            'A popular spot for coffee, rope climbing, and enjoying the beautiful coastal views.',
        imageUrl:
            'https://kep-adventures.com/wp-content/uploads/2019/09/sunset-tour3-1.jpg',
      ),
    ],
    filters: [
      'Seafood',
      'Nature',
      'Relaxation',
      'Culinary Experiences',
      'Cafe'
    ],
  ),
  CambodianProvince(
    activity: kohKongActivities,
    food: kohKongFoods,
    name: 'Koh Kong',
    description:
        'Offers ecotourism opportunities, including rainforest treks, waterfalls, and the Cardamom Mountains.',
    destinations: [
      Destination(
        name: 'Cardamom Mountains',
        fullDescription:
            "One might imagine that the Cardamom Mountains still harbor the ghosts of the Khmer Rouge, who left this forest just over two decades ago. In the uneasy peace that followed the Cambodian Civil War, the Cardamom Mountains suffered rampant logging, poaching, and slash-and-burn agriculture as people struggled to find their way in this post-conflict era. The areas that survived that period, however, remain one of Southeast Asia’s most pristine expanses of wilderness. Two hundred million hectares of rainforest once covered southern Asia, but only about 10 million hectares are left. One-fifth of that remaining forest is in Cambodia. ",
        location: "Koh kong, Cambodia",
        accommodationPrice: 99.0,
        description:
            'A mountain range known for its rich biodiversity, hiking trails, and stunning scenery.',
        imageUrl:
            'https://www.wildlifealliance.org/wp-content/uploads/2019/07/Cardamom-Forest-Protection-Program-1.jpg',
      ),
      Destination(
        accommodationPrice: 50.99,
        location: "Koh kong, Cambodia",
        name: 'Chi Phat Ecotourism Village',
        fullDescription: "Chi Phat is mainland South East Asia's largest "
            "remaining tract of rainforest situated directly"
            " in the heart of the Cardamom Mountains. With mountains,"
            " mangroves and low land swamps on the one hand and many "
            "cultural artifacts such as burial jars and wooden coffins "
            "on the other hand, Chi Phat and its surrounding area has a"
            " variety of attractions to offer both to local and international tourists."
            " Tourists can take a walk through the forest trails and meet warm and friendly village people."
            "There is a lot of fascinating nature at Chi Phat,"
            " including mountains, waterfalls, rivers, evergreen forests, "
            "low land swamps and Malaluka swamps. "
            "Thanks to the good network of forest trails at Chi Phat tourists"
            " get the chance to watch quite a huge diversity of wildlife and birds. "
            "In addition to that, tourists can also visit a beautiful village full of warm,"
            " open people and see cultural artifacts such as burial jars and wooden coffins."
            "Activities which can be done at Chi Phat go from single and multi day mountain"
            " biking and trekking and traditional boat trips, to forest camping, wildlife and bird watching and village explorations.",
        description:
            'A community-based ecotourism project offering guided treks, wildlife spotting, and cultural experiences.',
        imageUrl:
            'https://pppenglish.sgp1.digitaloceanspaces.com/image/main/field/image/194950_369599939773197_1992576728_o.jpg',
      ),
      Destination(
        name: 'Tatai Waterfall',
        fullDescription:
            "Tatai Waterfall is a large rocky cascade located amidst a lush jungle setting in the Tatai river, Koh Kong province. Although the watefall flows all year, in the dry season it is possible to swim in the naturally formed pools at the bottom of the cascade and due to the low flow of water it is possible to walk accross the ledge. In the wet season the river flows in all its might and the watefall is more spectacular with the enraged white foamed waters running over a fall 4 meters long.",
        accommodationPrice: 19.99,
        location: "Koh kong, Cambodia",
        description:
            'A beautiful waterfall surrounded by lush rainforest, ideal for swimming and picnics.',
        imageUrl:
            'https://www.cambodiabeginsat40.com/wp-content/uploads/2022/07/JO-Tatai-16.jpg',
      ),
      Destination(
        name: 'Botum Sakor National Park',
        fullDescription:
            "Covering more than 1,700 square kilometres, 80% of which is evergreen forest, the park reaches all the way from the Cardamom Mountains to the melaleuca and"
            " mangrove swamps of the coastal flood plains, "
            "and it provides shelter for some of Asia's most critically endangered mammals."
            "Though Botum Sakor is one of the largest and most biodiverse tracts of"
            " rainforest left in Southeast Asia, it has suffered more environmental "
            "damage than some, which means that wild mammal sightings are rare."
            " Nevertheless, local conservationists are working hard to rebuild the "
            "forest and reinstate local wildlife, and your stay can even "
            "contribute to the fight against deforestation."
            " The Cardamom Camp isn’t just one of Cambodia’s most "
            "successful conservation projects, it’s a chance to sleep"
            " in safari-style tents surrounded by the sounds of the jungle,"
            " nine kilometres from the nearest town. Stay here and "
            "you’ll have plenty of opportunities to actively engage with their projects,"
            " heading out to check wildlife camera traps with the park rangers,"
            " kayaking on the rivers, and taking treks through the forest to spot porcupine, peafowl and giant squirrels.",
        accommodationPrice: 19.99,
        location: "Koh kong, Cambodia",
        description:
            'A large national park offering diverse wildlife, hiking trails, and eco-lodges.',
        imageUrl:
            'https://www.insideasiatours.com/sites/default/files/2020-10/SC_birdview_04.JPG',
      ),
    ],
    filters: [
      'Ecotourism',
      'Nature',
      'Adventure Activities',
      'Wildlife Viewing',
    ],
  ),
  CambodianProvince(
    activity: mondulkiriActivities,
    food: mondulkiriFoods,
    name: 'Mondulkiri',
    description:
        'A mountainous province known for its lush forests, waterfalls, and indigenous culture.',
    destinations: [
      Destination(
        name: 'Bou Sra Waterfall',
        description:
            'A stunning waterfall located in the forest, perfect for swimming and picnicking.',
        fullDescription:
            'Bou Sra Waterfall is a stunning waterfall located in Mondulkiri, Cambodia. The waterfall is a popular destination for tourists looking to enjoy swimming, picnicking, and the beautiful natural surroundings.',
        imageUrl:
            'https://angkorfocus.com/userfiles/thumbs/new-Bou-Sra-Waterfall.jpg',
        accommodationPrice: 10.0,
        location: 'Mondulkiri, Cambodia',
      ),
      Destination(
        name: 'Elephant Valley Project',
        description:
            'A sanctuary dedicated to the care and rehabilitation of elephants, offering tours and volunteer opportunities.',
        fullDescription:
            'The Elephant Valley Project in Mondulkiri, Cambodia, is a sanctuary dedicated to the care and rehabilitation of elephants. The project offers tours and volunteer opportunities for visitors looking to learn about elephant conservation and support the sanctuary.',
        imageUrl:
            'https://sdzsafaripark.org/elephantvalley/images/3222_SP23_EV-Landing-Page_Web-Hero_1920x1200.jpg',
        accommodationPrice: 30.0,
        location: 'Mondulkiri, Cambodia',
      ),
      Destination(
        name: 'Sen Monorom',
        description:
            'The capital of Mondulkiri, offering a blend of indigenous culture, local markets, and stunning landscapes.',
        fullDescription:
            'Sen Monorom is the capital of Mondulkiri, Cambodia, offering a blend of indigenous culture, local markets, and stunning landscapes. The city is a popular destination for tourists looking to explore the culture and natural beauty of Mondulkiri.',
        imageUrl:
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/58/da/d4/whole-building-view-from.jpg?w=600&h=400&s=1',
        accommodationPrice: 20.0,
        location: 'Mondulkiri, Cambodia',
      ),
    ],
    filters: [
      'Wildlife',
      'Nature',
      'Cultural Sites',
      'Adventure Activities',
    ],
  ),
];
