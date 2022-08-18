
///Class representation of api_route table
///table structure:
///id - NonNullable String
///name - NonNullable String
///image_url - NonNullable String
///entityStatus - NonNullable int
///type - NonNullable int
///date - NonNullable date
class ClimbingRouteEntity {
  ///creates an ClimbingRouteEntity entity
  ClimbingRouteEntity({
    this.id,
    this.name,
    this.imageUrl,
    this.entityStatus,
    this.type,
    this.date,
  });

  ///Create an ClimbingRouteEntity given a row.assoc() map
  factory ClimbingRouteEntity.fromRowAssoc(Map<String, String?> json) {
    return ClimbingRouteEntity(
      id: json['id'],
      entityStatus: json['entityStatus'] == null
          ? null
          : int.tryParse(json['entityStatus']!),
      type: json['type'] == null ? null : int.tryParse(json['type']!),
      date: json['date'] == null ? null : DateTime.tryParse(json['date']!),
      name: json['name'],
      imageUrl: json['imageUrl'],
    );
  }

  ///Create an ClimbingRouteEntity given a valid json string
  factory ClimbingRouteEntity.fromJson(Map<String, dynamic> json) {
    return ClimbingRouteEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  ///Converts an instance of [ClimbingRouteEntity] to json string
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'entityStatus': entityStatus,
      'type': type,
      'date': date.toString(),
    };
  }

  ///Id of the user in GUID format
  final String? id;

  ///0 - Deleted, 1- Active
  final int? entityStatus;

  ///0 - Boulder, 1 - Lead
  final int? type;

  ///0 - Deleted, 1- Active
  final DateTime? date;

  ///User name
  final String? name;

  ///Route image
  final String? imageUrl;
}
