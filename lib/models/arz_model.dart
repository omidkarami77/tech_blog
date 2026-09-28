/// مدل هر آیتم نرخ ارز که از API دریافت می‌شود.
class ArzModel {
  const ArzModel({
    required this.id,
    required this.title,
    required this.price,
    required this.changes,
    required this.status,
  });

  final String id;
  final String title;
  final String price;
  final String changes;
  final String status;

  factory ArzModel.fromJson(Map<String, dynamic> json) {
    return ArzModel(
      id: json['id']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      price: json['price']?.toString() ?? '',
      changes: json['changes']?.toString() ?? '',
      status: json['status']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'changes': changes,
      'status': status,
    };
  }
}
