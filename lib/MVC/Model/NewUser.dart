class NewUser {
  String password, full_name, email, gender;
  String DOB;
  BigInt phone, CNIC;
  bool active;
  NewUser(
      {required this.gender,
      required this.full_name,
      required this.phone,
      required this.password,
      required this.CNIC,
      required this.DOB,
      required this.email,
      required this.active
      }
      );
      
}
