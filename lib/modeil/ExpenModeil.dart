// class Expens {
//   List<Data>? data;
//
//   Expens({this.data});
//
//   Expens.fromJson(Map<String, dynamic> json) {
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
//   int? empid;
//   String? empcode;
//   String? empname;
//   String? empmob;
//   String? embemail;
//   String? empadd;
//   String? empidno;
//   String? empbdate;
//   String? emppic;
//   String? empnotes;
//   String? eduname;
//   int? branchid;
//   String? branchname;
//   int? ccid;
//   String? ccname;
//   int? nationid;
//   String? nationname;
//   int? nationtype;
//   int? jobid;
//   String? jobname;
//   int? jobtype;
//   Null? empstatus;
//   Null? empstatusname;
//   int? basicsalary;
//   Null? housing;
//   Null? allowncebsalary;
//   int? insursalary;
//   String? empworkdate;
//   int? paytypeid;
//   String? paytypename;
//   int? paychartid;
//   String? empbankname;
//   String? empbankid;
//   int? annualvaction;
//   int? empchatid;
//   String? employeemanager;
//   int? departmentid;
//   Null? hasovertime;
//   int? vacationrequest;
//   int? loanrequest;
//   int? custodyrequest;
//   int? leaverequest;
//   Null? workhours;
//   Null? attendtime;
//   Null? leavetime;
//   Null? fingerlat;
//   Null? fingerlong;
//   String? mac;
//   int? attendPolicyId;
//   int? jobTypeId;
//   Null? vatValue;
//   String? fingerprintTypeName;
//   String? jobTypeName;
//   int? fingerprintTypeId;
//   Null? salaryitemid;
//   Null? salaryitemname;
//   int? overtimePolicy;
//   int? latePolicy;
//   int? absencePolicy;
//   int? vacationPolicy;
//   int? jobLevelId;
//   int? insuranceid;
//   String? macaddress;
//   Null? status;
//   int? empgender;
//   int? empreligion;
//   String? chartcodename;
//
//   Data(
//       {this.empid,
//         this.empcode,
//         this.empname,
//         this.empmob,
//         this.embemail,
//         this.empadd,
//         this.empidno,
//         this.empbdate,
//         this.emppic,
//         this.empnotes,
//         this.eduname,
//         this.branchid,
//         this.branchname,
//         this.ccid,
//         this.ccname,
//         this.nationid,
//         this.nationname,
//         this.nationtype,
//         this.jobid,
//         this.jobname,
//         this.jobtype,
//         this.empstatus,
//         this.empstatusname,
//         this.basicsalary,
//         this.housing,
//         this.allowncebsalary,
//         this.insursalary,
//         this.empworkdate,
//         this.paytypeid,
//         this.paytypename,
//         this.paychartid,
//         this.empbankname,
//         this.empbankid,
//         this.annualvaction,
//         this.empchatid,
//         this.employeemanager,
//         this.departmentid,
//         this.hasovertime,
//         this.vacationrequest,
//         this.loanrequest,
//         this.custodyrequest,
//         this.leaverequest,
//         this.workhours,
//         this.attendtime,
//         this.leavetime,
//         this.fingerlat,
//         this.fingerlong,
//         this.mac,
//         this.attendPolicyId,
//         this.jobTypeId,
//         this.vatValue,
//         this.fingerprintTypeName,
//         this.jobTypeName,
//         this.fingerprintTypeId,
//         this.salaryitemid,
//         this.salaryitemname,
//         this.overtimePolicy,
//         this.latePolicy,
//         this.absencePolicy,
//         this.vacationPolicy,
//         this.jobLevelId,
//         this.insuranceid,
//         this.macaddress,
//         this.status,
//         this.empgender,
//         this.empreligion,
//         this.chartcodename});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     empid = json['empid'];
//     empcode = json['empcode'];
//     empname = json['empname'];
//     empmob = json['empmob'];
//     embemail = json['embemail'];
//     empadd = json['empadd'];
//     empidno = json['empidno'];
//     empbdate = json['empbdate'];
//     emppic = json['emppic'];
//     empnotes = json['empnotes'];
//     eduname = json['eduname'];
//     branchid = json['branchid'];
//     branchname = json['branchname'];
//     ccid = json['ccid'];
//     ccname = json['ccname'];
//     nationid = json['nationid'];
//     nationname = json['nationname'];
//     nationtype = json['nationtype'];
//     jobid = json['jobid'];
//     jobname = json['jobname'];
//     jobtype = json['jobtype'];
//     empstatus = json['empstatus'];
//     empstatusname = json['empstatusname'];
//     basicsalary = json['basicsalary'];
//     housing = json['housing'];
//     allowncebsalary = json['allowncebsalary'];
//     insursalary = json['insursalary'];
//     empworkdate = json['empworkdate'];
//     paytypeid = json['paytypeid'];
//     paytypename = json['paytypename'];
//     paychartid = json['paychartid'];
//     empbankname = json['empbankname'];
//     empbankid = json['empbankid'];
//     annualvaction = json['annualvaction'];
//     empchatid = json['empchatid'];
//     employeemanager = json['employeemanager'];
//     departmentid = json['departmentid'];
//     hasovertime = json['hasovertime'];
//     vacationrequest = json['vacationrequest'];
//     loanrequest = json['loanrequest'];
//     custodyrequest = json['custodyrequest'];
//     leaverequest = json['leaverequest'];
//     workhours = json['workhours'];
//     attendtime = json['attendtime'];
//     leavetime = json['leavetime'];
//     fingerlat = json['fingerlat'];
//     fingerlong = json['fingerlong'];
//     mac = json['mac'];
//     attendPolicyId = json['attend_policy_id'];
//     jobTypeId = json['job_type_id'];
//     vatValue = json['vat_value'];
//     fingerprintTypeName = json['fingerprint_type_name'];
//     jobTypeName = json['job_type_name'];
//     fingerprintTypeId = json['fingerprint_type_id'];
//     salaryitemid = json['salaryitemid'];
//     salaryitemname = json['salaryitemname'];
//     overtimePolicy = json['overtime_policy'];
//     latePolicy = json['late_policy'];
//     absencePolicy = json['absence_policy'];
//     vacationPolicy = json['vacation_policy'];
//     jobLevelId = json['job_level_id'];
//     insuranceid = json['insuranceid'];
//     macaddress = json['macaddress'];
//     status = json['status'];
//     empgender = json['empgender'];
//     empreligion = json['empreligion'];
//     chartcodename = json['chartcodename'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['empid'] = this.empid;
//     data['empcode'] = this.empcode;
//     data['empname'] = this.empname;
//     data['empmob'] = this.empmob;
//     data['embemail'] = this.embemail;
//     data['empadd'] = this.empadd;
//     data['empidno'] = this.empidno;
//     data['empbdate'] = this.empbdate;
//     data['emppic'] = this.emppic;
//     data['empnotes'] = this.empnotes;
//     data['eduname'] = this.eduname;
//     data['branchid'] = this.branchid;
//     data['branchname'] = this.branchname;
//     data['ccid'] = this.ccid;
//     data['ccname'] = this.ccname;
//     data['nationid'] = this.nationid;
//     data['nationname'] = this.nationname;
//     data['nationtype'] = this.nationtype;
//     data['jobid'] = this.jobid;
//     data['jobname'] = this.jobname;
//     data['jobtype'] = this.jobtype;
//     data['empstatus'] = this.empstatus;
//     data['empstatusname'] = this.empstatusname;
//     data['basicsalary'] = this.basicsalary;
//     data['housing'] = this.housing;
//     data['allowncebsalary'] = this.allowncebsalary;
//     data['insursalary'] = this.insursalary;
//     data['empworkdate'] = this.empworkdate;
//     data['paytypeid'] = this.paytypeid;
//     data['paytypename'] = this.paytypename;
//     data['paychartid'] = this.paychartid;
//     data['empbankname'] = this.empbankname;
//     data['empbankid'] = this.empbankid;
//     data['annualvaction'] = this.annualvaction;
//     data['empchatid'] = this.empchatid;
//     data['employeemanager'] = this.employeemanager;
//     data['departmentid'] = this.departmentid;
//     data['hasovertime'] = this.hasovertime;
//     data['vacationrequest'] = this.vacationrequest;
//     data['loanrequest'] = this.loanrequest;
//     data['custodyrequest'] = this.custodyrequest;
//     data['leaverequest'] = this.leaverequest;
//     data['workhours'] = this.workhours;
//     data['attendtime'] = this.attendtime;
//     data['leavetime'] = this.leavetime;
//     data['fingerlat'] = this.fingerlat;
//     data['fingerlong'] = this.fingerlong;
//     data['mac'] = this.mac;
//     data['attend_policy_id'] = this.attendPolicyId;
//     data['job_type_id'] = this.jobTypeId;
//     data['vat_value'] = this.vatValue;
//     data['fingerprint_type_name'] = this.fingerprintTypeName;
//     data['job_type_name'] = this.jobTypeName;
//     data['fingerprint_type_id'] = this.fingerprintTypeId;
//     data['salaryitemid'] = this.salaryitemid;
//     data['salaryitemname'] = this.salaryitemname;
//     data['overtime_policy'] = this.overtimePolicy;
//     data['late_policy'] = this.latePolicy;
//     data['absence_policy'] = this.absencePolicy;
//     data['vacation_policy'] = this.vacationPolicy;
//     data['job_level_id'] = this.jobLevelId;
//     data['insuranceid'] = this.insuranceid;
//     data['macaddress'] = this.macaddress;
//     data['status'] = this.status;
//     data['empgender'] = this.empgender;
//     data['empreligion'] = this.empreligion;
//     data['chartcodename'] = this.chartcodename;
//     return data;
//   }
// }
class ExpensesTypesModil {
  List<Data>? data;

  ExpensesTypesModil({this.data});

  ExpensesTypesModil.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? expid;
  String? expname;
  int? accid;
  Null? exptype;
  int? parentexid;
  int? chartcode;
  String? chartname;
  String? parentgroupname;

  Data(
      {this.expid,
        this.expname,
        this.accid,
        this.exptype,
        this.parentexid,
        this.chartcode,
        this.chartname,
        this.parentgroupname});

  Data.fromJson(Map<String, dynamic> json) {
    expid = json['expid'];
    expname = json['expname'];
    accid = json['accid'];
    exptype = json['exptype'];
    parentexid = json['parentexid'];
    chartcode = json['chartcode'];
    chartname = json['chartname'];
    parentgroupname = json['parentgroupname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expid'] = this.expid;
    data['expname'] = this.expname;
    data['accid'] = this.accid;
    data['exptype'] = this.exptype;
    data['parentexid'] = this.parentexid;
    data['chartcode'] = this.chartcode;
    data['chartname'] = this.chartname;
    data['parentgroupname'] = this.parentgroupname;
    return data;
  }
}