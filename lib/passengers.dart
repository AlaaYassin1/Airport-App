class Passenger {
  String? gender;
  Name name;
  Coordinates? coordinates;
  String image;

  Passenger(
      {this.gender, required this.name, this.coordinates, required this.image});
}

class Name {
  String? title;
  String first;
  String last;

  Name({this.title, required this.first, required this.last});
}

class Coordinates {
  String latitude;
  String longitude;

  Coordinates({required this.latitude, required this.longitude});
}

//api : https://randomuser.me/api/
List<Passenger> data = [
  Passenger(
    gender: "male",
    name: Name(
      first: "Rad",
      last: "Borisikevich",
    ),
    image: "https://randomuser.me/api/portraits/men/78.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Holly",
      last: "Evans",
    ),
    image: "https://randomuser.me/api/portraits/women/93.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Hannah",
      last: "Patel",
    ),
    image: "https://randomuser.me/api/portraits/women/25.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Nelly",
      last: "Mesa",
    ),
    image: "https://randomuser.me/api/portraits/women/35.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Alexander",
      last: "Clark",
    ),
    image: "https://randomuser.me/api/portraits/men/94.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Yvonne",
      last: "Ferguson",
    ),
    image: "https://randomuser.me/api/portraits/women/50.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Faith",
      last: "Gibson",
    ),
    image: "https://randomuser.me/api/portraits/women/5.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Sofia",
      last: "Farragher",
    ),
    image: "https://randomuser.me/api/portraits/women/17.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Akhila",
      last: "Dhamdhame",
    ),
    image: "https://randomuser.me/api/portraits/women/52.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Istvan",
      last: "Höpfner",
    ),
    image: "https://randomuser.me/api/portraits/men/12.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Savannah",
      last: "Moore",
    ),
    image: "https://randomuser.me/api/portraits/women/20.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Constance",
      last: "Scott",
    ),
    image: "https://randomuser.me/api/portraits/women/4.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Ian",
      last: "Wright",
    ),
    image: "https://randomuser.me/api/portraits/men/71.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Kadir",
      last: "Poçan",
    ),
    image: "https://randomuser.me/api/portraits/men/23.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Isaac",
      last: "Iglesias",
    ),
    image: "https://randomuser.me/api/portraits/men/39.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Izaäk",
      last: "Mous",
    ),
    image: "https://randomuser.me/api/portraits/men/81.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Elif",
      last: "Adıvar",
    ),
    image: "https://randomuser.me/api/portraits/women/94.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Zlatko",
      last: "StanićStanković",
    ),
    image: "https://randomuser.me/api/portraits/men/82.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Addison",
      last: "Côté",
    ),
    image: "https://randomuser.me/api/portraits/women/39.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Dorothe",
      last: "Schlömer",
    ),
    image: "https://randomuser.me/api/portraits/women/95.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Lenni",
      last: "Sakala",
    ),
    image: "https://randomuser.me/api/portraits/men/48.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Vivan",
      last: "Holt",
    ),
    image: "https://randomuser.me/api/portraits/women/59.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Dzvenimira",
      last: "Chmelik",
    ),
    image: "https://randomuser.me/api/portraits/women/9.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Monica",
      last: "Meyer",
    ),
    image: "https://randomuser.me/api/portraits/women/27.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Giorgio",
      last: "Schenk",
    ),
    image: "https://randomuser.me/api/portraits/men/13.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "André",
      last: "Koslowski",
    ),
    image: "https://randomuser.me/api/portraits/men/60.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Ostromira",
      last: "Mihaylenko",
    ),
    image: "https://randomuser.me/api/portraits/women/91.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Martín",
      last: "Lozano",
    ),
    image: "https://randomuser.me/api/portraits/men/20.jpg",
  ),
  Passenger(
    gender: "female",
    name: Name(
      first: "Boleslava",
      last: "Slisarenko",
    ),
    image: "https://randomuser.me/api/portraits/women/1.jpg",
  ),
  Passenger(
    gender: "male",
    name: Name(
      first: "Jordan",
      last: "Anderson",
    ),
    image: "https://randomuser.me/api/portraits/men/49.jpg",
  ),
];
