class Home {
  List<Artikel>? artikel;
  List<Konselor>? konselor;

  Home({this.artikel, this.konselor});

  Home.fromJson(Map<String, dynamic> json) {
    if (json['artikel'] != null) {
      artikel = <Artikel>[];
      json['artikel'].forEach((v) {
        artikel!.add(new Artikel.fromJson(v));
      });
    }
    if (json['konselor'] != null) {
      konselor = <Konselor>[];
      json['konselor'].forEach((v) {
        konselor!.add(new Konselor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artikel != null) {
      data['artikel'] = this.artikel!.map((v) => v.toJson()).toList();
    }
    if (this.konselor != null) {
      data['konselor'] = this.konselor!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Artikel {
  int? id;
  String? gambar;
  String? judul;
  String? deskripsi;
  String? link;
  String? createdAt;
  String? updatedAt;

  Artikel(
      {this.id,
      this.gambar,
      this.judul,
      this.deskripsi,
      this.link,
      this.createdAt,
      this.updatedAt});

  Artikel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gambar = json['gambar'];
    judul = json['judul'];
    deskripsi = json['deskripsi'];
    link = json['link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['gambar'] = this.gambar;
    data['judul'] = this.judul;
    data['deskripsi'] = this.deskripsi;
    data['link'] = this.link;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Konselor {
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

  Konselor(
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

  Konselor.fromJson(Map<String, dynamic> json) {
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
