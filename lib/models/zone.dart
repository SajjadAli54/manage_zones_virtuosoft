class Zone {
  final int regionId;
  final List<dynamic> areasDto; // Adjust type as necessary
  final String type;
  final int id;
  final bool status;
  final String title;
  final String createdBy;
  final String updatedBy;
  final DateTime createdOn;
  final DateTime updatedOn;

  Zone({
    required this.regionId,
    required this.areasDto,
    required this.type,
    required this.id,
    required this.status,
    required this.title,
    required this.createdBy,
    required this.updatedBy,
    required this.createdOn,
    required this.updatedOn,
  });

  factory Zone.fromJson(Map<String, dynamic> json) {
    return Zone(
      regionId: json['regionId'] as int,
      areasDto: json['areasDto'] as List<dynamic>, // Adjust type as necessary
      type: json['type'] as String,
      id: json['id'] as int,
      status: json['status'] as bool,
      title: json['title'] as String,
      createdBy: json['createdBy'] as String,
      updatedBy: json['updatedBy'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      updatedOn: DateTime.parse(json['updatedOn'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'regionId': regionId,
      'areasDto': areasDto, // Adjust if areasDto contains complex objects
      'type': type,
      'id': id,
      'status': status,
      'title': title,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'createdOn': createdOn.toIso8601String(),
      'updatedUpon': updatedOn.toIso8601String(),
    };
  }
}
