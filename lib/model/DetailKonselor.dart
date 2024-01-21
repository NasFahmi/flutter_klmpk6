class DetailKonselor {
  int? id;
  String? nama;
  String? password;
  String? email;
  String? pendidikanTerakhir;
  String? alamat;
  String? spesialisasi;
  String? foto;
  bool? status;
  Null? createdAt;
  Null? updatedAt;

  DetailKonselor(
      {this.id,
      this.nama,
      this.password,
      this.email,
      this.pendidikanTerakhir,
      this.alamat,
      this.spesialisasi,
      this.foto,
      this.status,
      this.createdAt,
      this.updatedAt});

  DetailKonselor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    password = json['password'];
    email = json['email'];
    pendidikanTerakhir = json['pendidikan_terakhir'];
    alamat = json['alamat'];
    spesialisasi = json['spesialisasi'];
    foto = json['foto'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['password'] = this.password;
    data['email'] = this.email;
    data['pendidikan_terakhir'] = this.pendidikanTerakhir;
    data['alamat'] = this.alamat;
    data['spesialisasi'] = this.spesialisasi;
    data['foto'] = this.foto;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
