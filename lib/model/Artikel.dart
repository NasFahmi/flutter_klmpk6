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
