
// class ExpenSh {
//   List<Data>? data;
//
//   ExpenSh({this.data});
//
//   ExpenSh.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Data {
//   int? expid;
//   String? expname;
//   int? accid;
//   Null? exptype;
//   int? parentexid;
//   int? chartcode;
//   String? chartname;
//   String? parentgroupname;
//
//   Data(
//       {this.expid,
//         this.expname,
//         this.accid,
//         this.exptype,
//         this.parentexid,
//         this.chartcode,
//         this.chartname,
//         this.parentgroupname});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     expid = json['expid'];
//     expname = json['expname'];
//     accid = json['accid'];
//     exptype = json['exptype'];
//     parentexid = json['parentexid'];
//     chartcode = json['chartcode'];
//     chartname = json['chartname'];
//     parentgroupname = json['parentgroupname'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['expid'] = this.expid;
//     data['expname'] = this.expname;
//     data['accid'] = this.accid;
//     data['exptype'] = this.exptype;
//     data['parentexid'] = this.parentexid;
//     data['chartcode'] = this.chartcode;
//     data['chartname'] = this.chartname;
//     data['parentgroupname'] = this.parentgroupname;
//     return data;
//   }
// }
class SaveExpensesModeil {
  Errors? errors;
  String? type;
  String? title;
  int? status;
  String? traceId;

  SaveExpensesModeil({this.errors, this.type, this.title, this.status, this.traceId});

  SaveExpensesModeil.fromJson(Map<String, dynamic> json) {
    errors =
    json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
    type = json['type'];
    title = json['title'];
    status = json['status'];
    traceId = json['traceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.errors != null) {
      data['errors'] = this.errors!.toJson();
    }
    data['type'] = this.type;
    data['title'] = this.title;
    data['status'] = this.status;
    data['traceId'] = this.traceId;
    return data;
  }
}

class Errors {
  List<String>? expensesRequestDte;

  Errors({this.expensesRequestDte});

  Errors.fromJson(Map<String, dynamic> json) {
    expensesRequestDte = json['expensesRequest.dte'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expensesRequest.dte'] = this.expensesRequestDte;
    return data;
  }
}
