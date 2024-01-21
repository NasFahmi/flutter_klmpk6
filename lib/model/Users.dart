class Users {
  User? user;
  String? token;

  Users({this.user, this.token});

  Users.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? nama;
  int? jenisKelamin;
  String? alamat;
  String? email;
  Null? createdAt;
  Null? updatedAt;

  User(
      {this.id,
      this.nama,
      this.jenisKelamin,
      this.alamat,
      this.email,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    jenisKelamin = json['jenis_kelamin'];
    alamat = json['alamat'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['jenis_kelamin'] = this.jenisKelamin;
    data['alamat'] = this.alamat;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
