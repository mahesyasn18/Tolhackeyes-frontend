class infoperjalananModel {
  late int reward;
  late int jarak;
  late int jumlah_penumpang;
  late bool status_perjalanan;
  late String tanggal;

  infoperjalananModel({
    required this.reward,
    required this.jarak,
    required this.jumlah_penumpang,
    required this.status_perjalanan,
    required this.tanggal,
  });

  infoperjalananModel.fromJson(Map<String, dynamic> json) {
    reward = json['reward'];
    jarak = json['jarak'];
    jumlah_penumpang = json['jumlah_penumpang'];
    status_perjalanan = json['status_perjalanan'];
    tanggal = json['tanggal'];
  }

  Map<String, dynamic> toJson() {
    return {
      'reward': reward,
      'jarak': jarak,
      'jumlah_penumpang': jumlah_penumpang,
      'status_perjalanan': status_perjalanan,
      'tanggal': tanggal,
    };
  }
}
