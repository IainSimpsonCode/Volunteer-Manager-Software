class Volunteer {
  String name;
  String school;
  int yearGroup;
  String studentNumber;

  Volunteer({
    required this.name,
    required this.school,
    required this.yearGroup,
    required this.studentNumber,
  });
}

List<String> names = [
  "Iain",
  "Emma",
  "Oliver",
  "Sophia",
  "Liam",
  "Isabella",
  "Noah",
  "Mia",
  "William",
  "Charlotte",
  "James",
  "Amelia",
  "Benjamin",
  "Harper",
  "Lucas",
  "Evelyn",
  "Henry",
  "Abigail",
  "Alexander",
  "Ella",
  "Michael",
  "Avery",
  "Daniel",
  "Scarlett",
  "Matthew",
  "Grace",
  "Sebastian",
  "Chloe",
  "Jack",
  "Zoey",
  "Samuel",
  "Riley",
  "David",
  "Victoria",
  "Joseph",
  "Aria",
  "Carter",
  "Lily",
  "Owen",
  "Aubrey",
  "Wyatt",
  "Addison",
  "John",
  "Eleanor",
  "Dylan",
  "Nora",
  "Luke",
  "Hannah",
  "Gabriel",
  "Lillian"
];

List<String> schools = [
  "Engineering and Computing",
  "Arts and Media",
  "Law and Policing",
  "Medicine and Dentistry",
  "Vet Med"
];

List<Volunteer> generateVolunteers() {
  List<Volunteer> volunteers = [];
  int studentNumber = 1234;

  for (int i = 0; i < names.length; i++) {
    String school = schools[i ~/ 10];
    int yearGroup = (i % 3) + 1; // Random year group between 1 and 3

    volunteers.add(
      Volunteer(
        name: names[i],
        school: school,
        yearGroup: yearGroup,
        studentNumber: "G$studentNumber",
      ),
    );

    studentNumber++;
  }

  return volunteers;
}
