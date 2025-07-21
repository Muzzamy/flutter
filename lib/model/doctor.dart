class Doctor {
  String name;
  String spe;
  String? mobile;
  String? clinicTime;
  String clinicAddress;
  String? fee;
  String? imagePath;

  Doctor({
    required this.name,
    required this.spe,
    this.mobile,
    this.clinicTime,
    required this.clinicAddress,
    this.fee,
    this.imagePath

});
}