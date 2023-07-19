class Taxpayer {
  int id = 0;
  int bin = 0;
  String status = '';
  String name = '';
  int commissionerId = 0;
  int divId = 0;
  int circleId = 0;
  int regTypeId = 0;
  int sectorId = 0;
  int taxTypeId = 0;
  int ownershipTypeId = 0;
  int econTypeId = 0;
  String email = '';
  String mobileNo = '';
  String address = '';
  int userId = 0;

  Taxpayer();

  Taxpayer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bin = json['bin'];
    status = json['status'];
    name = json['name'];
    commissionerId = json['commissioner_id'];
    divId = json['div_id'];
    circleId = json['circle_id'];
    regTypeId = json['reg_type_id'];
    sectorId = json['sector_id'];
    taxTypeId = json['tax_type_id'];
    ownershipTypeId = json['ownership_type_id'];
    econTypeId = json['econ_type_id'];
    email = json['email'];
    mobileNo = json['mobile_no'];
    address = json['address'];
    userId = json['user_id'];
  }
}
