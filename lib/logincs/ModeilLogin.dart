class LoginModel {
  String? token;
  Null? refreshToken;
  List<Userproperty>? userproperty;
  List<Company>? company;
  List<Settings>? settings;
  List<Modules>? modules;
  List<Posprop>? posprop;
  List<Compoptions>? compoptions;
  List<String>? notifications;
  List<Smandata>? smandata;
  List<Hrsetting>? hrsetting;
  List<EmployeeRequset>? employeeRequset;
  List<TourPermission>? tourPermission;

  LoginModel(
      {this.token,
        this.refreshToken,
        this.userproperty,
        this.company,
        this.settings,
        this.modules,
        this.posprop,
        this.compoptions,
        this.notifications,
        this.smandata,
        this.hrsetting,
        this.employeeRequset,
        this.tourPermission});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
    if (json['userproperty'] != null) {
      userproperty = <Userproperty>[];
      json['userproperty'].forEach((v) {
        userproperty!.add(new Userproperty.fromJson(v));
      });
    }
    if (json['company'] != null) {
      company = <Company>[];
      json['company'].forEach((v) {
        company!.add(new Company.fromJson(v));
      });
    }
    if (json['settings'] != null) {
      settings = <Settings>[];
      json['settings'].forEach((v) {
        settings!.add(new Settings.fromJson(v));
      });
    }
    if (json['modules'] != null) {
      modules = <Modules>[];
      json['modules'].forEach((v) {
        modules!.add(new Modules.fromJson(v));
      });
    }
    if (json['posprop'] != null) {
      posprop = <Posprop>[];
      json['posprop'].forEach((v) {
        posprop!.add(new Posprop.fromJson(v));
      });
    }
    if (json['compoptions'] != null) {
      compoptions = <Compoptions>[];
      json['compoptions'].forEach((v) {
        compoptions!.add(new Compoptions.fromJson(v));
      });
    }
    if (json['notifications'] != null) {
      notifications = <String>[];
      json['notifications'].forEach((v) {
        notifications!.add(String.fromCharCode(v));
      });
    }
    if (json['smandata'] != null) {
      smandata = <Smandata>[];
      json['smandata'].forEach((v) {
        smandata!.add(new Smandata.fromJson(v));
      });
    }
    if (json['hrsetting'] != null) {
      hrsetting = <Hrsetting>[];
      json['hrsetting'].forEach((v) {
        hrsetting!.add(new Hrsetting.fromJson(v));
      });
    }
    if (json['employeeRequset'] != null) {
      employeeRequset = <EmployeeRequset>[];
      json['employeeRequset'].forEach((v) {
        employeeRequset!.add(new EmployeeRequset.fromJson(v));
      });
    }
    if (json['tour_permission'] != null) {
      tourPermission = <TourPermission>[];
      json['tour_permission'].forEach((v) {
        tourPermission!.add(new TourPermission.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['refreshToken'] = this.refreshToken;
    if (this.userproperty != null) {
      data['userproperty'] = this.userproperty!.map((v) => v.toJson()).toList();
    }
    if (this.company != null) {
      data['company'] = this.company!.map((v) => v.toJson()).toList();
    }
    if (this.settings != null) {
      data['settings'] = this.settings!.map((v) => v.toJson()).toList();
    }
    if (this.modules != null) {
      data['modules'] = this.modules!.map((v) => v.toJson()).toList();
    }
    if (this.posprop != null) {
      data['posprop'] = this.posprop!.map((v) => v.toJson()).toList();
    }
    if (this.compoptions != null) {
      data['compoptions'] = this.compoptions!.map((v) => v.toJson()).toList();
    }

    if (this.smandata != null) {
      data['smandata'] = this.smandata!.map((v) => v.toJson()).toList();
    }
    if (this.hrsetting != null) {
      data['hrsetting'] = this.hrsetting!.map((v) => v.toJson()).toList();
    }
    if (this.employeeRequset != null) {
      data['employeeRequset'] =
          this.employeeRequset!.map((v) => v.toJson()).toList();
    }
    if (this.tourPermission != null) {
      data['tour_permission'] =
          this.tourPermission!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Userproperty {
  String? userid;
  String? userName;
  Null? udiscperitem;
  int? uyearid;
  String? uyear;
  int? rlevel;
  String? rlevelname;
  int? empid;
  String? usammary;
  String? empname;
  int? branchid;
  String? branchname;
  int? ccid;
  String? ccname;
  bool? multiplesprice;
  String? username;
  int? id;
  String? password;
  int? compenyId;
  String? emailaddress;
  Null? compenyUserid;
  String? pincode;
  String? compenypath;
  String? countycode;

  Userproperty(
      {this.userid,
        this.userName,
        this.udiscperitem,
        this.uyearid,
        this.uyear,
        this.rlevel,
        this.rlevelname,
        this.empid,
        this.usammary,
        this.empname,
        this.branchid,
        this.branchname,
        this.ccid,
        this.ccname,
        this.multiplesprice,
        this.username,
        this.id,
        this.password,
        this.compenyId,
        this.emailaddress,
        this.compenyUserid,
        this.pincode,
        this.compenypath,
        this.countycode});

  Userproperty.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    userName = json['UserName'];
    udiscperitem = json['udiscperitem'];
    uyearid = json['uyearid'];
    uyear = json['uyear'];
    rlevel = json['rlevel'];
    rlevelname = json['rlevelname'];
    empid = json['empid'];
    usammary = json['usammary'];
    empname = json['empname'];
    branchid = json['branchid'];
    branchname = json['branchname'];
    ccid = json['ccid'];
    ccname = json['ccname'];
    multiplesprice = json['multiplesprice'];
    username = json['username'];
    id = json['id'];
    password = json['password'];
    compenyId = json['compeny_id'];
    emailaddress = json['emailaddress'];
    compenyUserid = json['compeny_userid'];
    pincode = json['pincode'];
    compenypath = json['compenypath'];
    countycode = json['countycode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['UserName'] = this.userName;
    data['udiscperitem'] = this.udiscperitem;
    data['uyearid'] = this.uyearid;
    data['uyear'] = this.uyear;
    data['rlevel'] = this.rlevel;
    data['rlevelname'] = this.rlevelname;
    data['empid'] = this.empid;
    data['usammary'] = this.usammary;
    data['empname'] = this.empname;
    data['branchid'] = this.branchid;
    data['branchname'] = this.branchname;
    data['ccid'] = this.ccid;
    data['ccname'] = this.ccname;
    data['multiplesprice'] = this.multiplesprice;
    data['username'] = this.username;
    data['id'] = this.id;
    data['password'] = this.password;
    data['compeny_id'] = this.compenyId;
    data['emailaddress'] = this.emailaddress;
    data['compeny_userid'] = this.compenyUserid;
    data['pincode'] = this.pincode;
    data['compenypath'] = this.compenypath;
    data['countycode'] = this.countycode;
    return data;
  }
}

class Company {
  int? compid;
  String? compname;
  String? compact;
  String? compyear;
  Null? complegal;
  String? comptel;
  String? compmob;
  String? compweb;
  Null? compemail;
  String? compadd;
  Null? compmanager;
  String? compvatno;
  Null? compnotes;
  String? complogo;

  Company(
      {this.compid,
        this.compname,
        this.compact,
        this.compyear,
        this.complegal,
        this.comptel,
        this.compmob,
        this.compweb,
        this.compemail,
        this.compadd,
        this.compmanager,
        this.compvatno,
        this.compnotes,
        this.complogo});

  Company.fromJson(Map<String, dynamic> json) {
    compid = json['compid'];
    compname = json['compname'];
    compact = json['compact'];
    compyear = json['compyear'];
    complegal = json['complegal'];
    comptel = json['comptel'];
    compmob = json['compmob'];
    compweb = json['compweb'];
    compemail = json['compemail'];
    compadd = json['compadd'];
    compmanager = json['compmanager'];
    compvatno = json['compvatno'];
    compnotes = json['compnotes'];
    complogo = json['complogo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compid'] = this.compid;
    data['compname'] = this.compname;
    data['compact'] = this.compact;
    data['compyear'] = this.compyear;
    data['complegal'] = this.complegal;
    data['comptel'] = this.comptel;
    data['compmob'] = this.compmob;
    data['compweb'] = this.compweb;
    data['compemail'] = this.compemail;
    data['compadd'] = this.compadd;
    data['compmanager'] = this.compmanager;
    data['compvatno'] = this.compvatno;
    data['compnotes'] = this.compnotes;
    data['complogo'] = this.complogo;
    return data;
  }
}

class Settings {
  Null? chartlvl;
  double? vat;
  int? vattype;
  Null? allowing;
  int? costcalc;
  bool? autoemp;
  bool? autoitem;
  int? printno;
  bool? sprice;
  bool? wpitem;
  Null? wpitemdigit;
  bool? posAdditionalStatement;
  Null? segday;
  Null? segperiod;
  Null? slackRateid;
  Null? slackrateName;
  int? predecessorratio;
  int? userlimit;
  bool? automaticpoststock;
  Null? automaticpostacc;
  bool? showpayinmobcash;
  bool? brancheslimit;
  Null? sitemsbranch;
  Null? invDiscQty;
  Null? pinvAddQty;
  int? expDateNotification;
  bool? asyncCodesAuto;
  bool? asyncTransAuto;
  int? timeingunit;
  int? timeunit;
  double? deliveryPercent;
  Null? permissiononday;
  Null? permissiononmounth;

  Settings(
      {this.chartlvl,
        this.vat,
        this.vattype,
        this.allowing,
        this.costcalc,
        this.autoemp,
        this.autoitem,
        this.printno,
        this.sprice,
        this.wpitem,
        this.wpitemdigit,
        this.posAdditionalStatement,
        this.segday,
        this.segperiod,
        this.slackRateid,
        this.slackrateName,
        this.predecessorratio,
        this.userlimit,
        this.automaticpoststock,
        this.automaticpostacc,
        this.showpayinmobcash,
        this.brancheslimit,
        this.sitemsbranch,
        this.invDiscQty,
        this.pinvAddQty,
        this.expDateNotification,
        this.asyncCodesAuto,
        this.asyncTransAuto,
        this.timeingunit,
        this.timeunit,
        this.deliveryPercent,
        this.permissiononday,
        this.permissiononmounth});

  Settings.fromJson(Map<String, dynamic> json) {
    chartlvl = json['chartlvl'];
    vat = json['vat'];
    vattype = json['vattype'];
    allowing = json['allowing'];
    costcalc = json['costcalc'];
    autoemp = json['autoemp'];
    autoitem = json['autoitem'];
    printno = json['printno'];
    sprice = json['sprice'];
    wpitem = json['wpitem'];
    wpitemdigit = json['wpitemdigit'];
    posAdditionalStatement = json['pos_additional_statement'];
    segday = json['segday'];
    segperiod = json['segperiod'];
    slackRateid = json['slack_rateid'];
    slackrateName = json['slackrate_name'];
    predecessorratio = json['predecessorratio'];
    userlimit = json['userlimit'];
    automaticpoststock = json['automaticpoststock'];
    automaticpostacc = json['automaticpostacc'];
    showpayinmobcash = json['showpayinmobcash'];
    brancheslimit = json['brancheslimit'];
    sitemsbranch = json['sitemsbranch'];
    invDiscQty = json['inv_disc_qty'];
    pinvAddQty = json['pinv_add_qty'];
    expDateNotification = json['exp_date_notification'];
    asyncCodesAuto = json['async_codes_auto'];
    asyncTransAuto = json['async_trans_auto'];
    timeingunit = json['timeingunit'];
    timeunit = json['timeunit'];
    deliveryPercent = json['delivery_percent'];
    permissiononday = json['permissiononday'];
    permissiononmounth = json['permissiononmounth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chartlvl'] = this.chartlvl;
    data['vat'] = this.vat;
    data['vattype'] = this.vattype;
    data['allowing'] = this.allowing;
    data['costcalc'] = this.costcalc;
    data['autoemp'] = this.autoemp;
    data['autoitem'] = this.autoitem;
    data['printno'] = this.printno;
    data['sprice'] = this.sprice;
    data['wpitem'] = this.wpitem;
    data['wpitemdigit'] = this.wpitemdigit;
    data['pos_additional_statement'] = this.posAdditionalStatement;
    data['segday'] = this.segday;
    data['segperiod'] = this.segperiod;
    data['slack_rateid'] = this.slackRateid;
    data['slackrate_name'] = this.slackrateName;
    data['predecessorratio'] = this.predecessorratio;
    data['userlimit'] = this.userlimit;
    data['automaticpoststock'] = this.automaticpoststock;
    data['automaticpostacc'] = this.automaticpostacc;
    data['showpayinmobcash'] = this.showpayinmobcash;
    data['brancheslimit'] = this.brancheslimit;
    data['sitemsbranch'] = this.sitemsbranch;
    data['inv_disc_qty'] = this.invDiscQty;
    data['pinv_add_qty'] = this.pinvAddQty;
    data['exp_date_notification'] = this.expDateNotification;
    data['async_codes_auto'] = this.asyncCodesAuto;
    data['async_trans_auto'] = this.asyncTransAuto;
    data['timeingunit'] = this.timeingunit;
    data['timeunit'] = this.timeunit;
    data['delivery_percent'] = this.deliveryPercent;
    data['permissiononday'] = this.permissiononday;
    data['permissiononmounth'] = this.permissiononmounth;
    return data;
  }
}

class Modules {
  String? modules;

  Modules({this.modules});

  Modules.fromJson(Map<String, dynamic> json) {
    modules = json['modules'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['modules'] = this.modules;
    return data;
  }
}

class Posprop {
  bool? items;
  bool? customers;
  bool? invoice;
  bool? rtninvoice;
  bool? payable;
  bool? recevable;
  bool? account;
  bool? cashier;
  bool? adduser;
  bool? userspermesion;
  bool? closeRep;
  bool? reprint;
  bool? delevary;
  bool? takeaway;
  bool? hall;
  bool? closeorder;
  bool? updateorder;
  bool? guest;
  bool? delevarytraking;
  bool? connectionsetting;
  bool? printerSetting;
  bool? closedayeshifts;
  bool? ketchien;
  bool? distributionpage;
  bool? currentorders;
  bool? ordersoperations;
  bool? deliverycost;

  Posprop(
      {this.items,
        this.customers,
        this.invoice,
        this.rtninvoice,
        this.payable,
        this.recevable,
        this.account,
        this.cashier,
        this.adduser,
        this.userspermesion,
        this.closeRep,
        this.reprint,
        this.delevary,
        this.takeaway,
        this.hall,
        this.closeorder,
        this.updateorder,
        this.guest,
        this.delevarytraking,
        this.connectionsetting,
        this.printerSetting,
        this.closedayeshifts,
        this.ketchien,
        this.distributionpage,
        this.currentorders,
        this.ordersoperations,
        this.deliverycost});

  Posprop.fromJson(Map<String, dynamic> json) {
    items = json['items'];
    customers = json['customers'];
    invoice = json['invoice'];
    rtninvoice = json['rtninvoice'];
    payable = json['payable'];
    recevable = json['recevable'];
    account = json['account'];
    cashier = json['cashier'];
    adduser = json['adduser'];
    userspermesion = json['userspermesion'];
    closeRep = json['close_rep'];
    reprint = json['reprint'];
    delevary = json['delevary'];
    takeaway = json['takeaway'];
    hall = json['hall'];
    closeorder = json['closeorder'];
    updateorder = json['updateorder'];
    guest = json['guest'];
    delevarytraking = json['delevarytraking'];
    connectionsetting = json['connectionsetting'];
    printerSetting = json['printer_setting'];
    closedayeshifts = json['closedayeshifts'];
    ketchien = json['ketchien'];
    distributionpage = json['distributionpage'];
    currentorders = json['currentorders'];
    ordersoperations = json['ordersoperations'];
    deliverycost = json['deliverycost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['items'] = this.items;
    data['customers'] = this.customers;
    data['invoice'] = this.invoice;
    data['rtninvoice'] = this.rtninvoice;
    data['payable'] = this.payable;
    data['recevable'] = this.recevable;
    data['account'] = this.account;
    data['cashier'] = this.cashier;
    data['adduser'] = this.adduser;
    data['userspermesion'] = this.userspermesion;
    data['close_rep'] = this.closeRep;
    data['reprint'] = this.reprint;
    data['delevary'] = this.delevary;
    data['takeaway'] = this.takeaway;
    data['hall'] = this.hall;
    data['closeorder'] = this.closeorder;
    data['updateorder'] = this.updateorder;
    data['guest'] = this.guest;
    data['delevarytraking'] = this.delevarytraking;
    data['connectionsetting'] = this.connectionsetting;
    data['printer_setting'] = this.printerSetting;
    data['closedayeshifts'] = this.closedayeshifts;
    data['ketchien'] = this.ketchien;
    data['distributionpage'] = this.distributionpage;
    data['currentorders'] = this.currentorders;
    data['ordersoperations'] = this.ordersoperations;
    data['deliverycost'] = this.deliverycost;
    return data;
  }
}

class Compoptions {
  bool? haspos;
  bool? hasmobileapp;

  Compoptions({this.haspos, this.hasmobileapp});

  Compoptions.fromJson(Map<String, dynamic> json) {
    haspos = json['haspos'];
    hasmobileapp = json['hasmobileapp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['haspos'] = this.haspos;
    data['hasmobileapp'] = this.hasmobileapp;
    return data;
  }
}

class Smandata {
  int? smanid;
  String? smanname;

  Smandata({this.smanid, this.smanname});

  Smandata.fromJson(Map<String, dynamic> json) {
    smanid = json['smanid'];
    smanname = json['smanname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['smanid'] = this.smanid;
    data['smanname'] = this.smanname;
    return data;
  }
}

class Hrsetting {
  int? id;
  String? userid;
  int? empid;
  bool? requestVacation;
  bool? requestLoan;
  bool? requestCustody;
  bool? requestManualattend;
  bool? addvcation;
  bool? addloan;
  bool? addcustody;
  bool? addallowexpenses;
  bool? addallowleave;
  bool? addmanualattend;
  bool? requestAllowleave;
  bool? requestExpenses;
  int? docEndPeriod;
  bool? requestPunch;
  bool? addpunch;
  bool? automaticattend;
  bool? empcustodypay;
  bool? emplinkcontract;
  bool? movecustodydepartment;
  bool? paymentoutsalary;
  bool? reccustody;

  Hrsetting(
      {this.id,
        this.userid,
        this.empid,
        this.requestVacation,
        this.requestLoan,
        this.requestCustody,
        this.requestManualattend,
        this.addvcation,
        this.addloan,
        this.addcustody,
        this.addallowexpenses,
        this.addallowleave,
        this.addmanualattend,
        this.requestAllowleave,
        this.requestExpenses,
        this.docEndPeriod,
        this.requestPunch,
        this.addpunch,
        this.automaticattend,
        this.empcustodypay,
        this.emplinkcontract,
        this.movecustodydepartment,
        this.paymentoutsalary,
        this.reccustody});

  Hrsetting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    empid = json['empid'];
    requestVacation = json['request_vacation'];
    requestLoan = json['request_loan'];
    requestCustody = json['request_custody'];
    requestManualattend = json['request_manualattend'];
    addvcation = json['addvcation'];
    addloan = json['addloan'];
    addcustody = json['addcustody'];
    addallowexpenses = json['addallowexpenses'];
    addallowleave = json['addallowleave'];
    addmanualattend = json['addmanualattend'];
    requestAllowleave = json['request_allowleave'];
    requestExpenses = json['request_expenses'];
    docEndPeriod = json['doc_end_period'];
    requestPunch = json['request_punch'];
    addpunch = json['addpunch'];
    automaticattend = json['automaticattend'];
    empcustodypay = json['empcustodypay'];
    emplinkcontract = json['emplinkcontract'];
    movecustodydepartment = json['movecustodydepartment'];
    paymentoutsalary = json['paymentoutsalary'];
    reccustody = json['reccustody'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userid'] = this.userid;
    data['empid'] = this.empid;
    data['request_vacation'] = this.requestVacation;
    data['request_loan'] = this.requestLoan;
    data['request_custody'] = this.requestCustody;
    data['request_manualattend'] = this.requestManualattend;
    data['addvcation'] = this.addvcation;
    data['addloan'] = this.addloan;
    data['addcustody'] = this.addcustody;
    data['addallowexpenses'] = this.addallowexpenses;
    data['addallowleave'] = this.addallowleave;
    data['addmanualattend'] = this.addmanualattend;
    data['request_allowleave'] = this.requestAllowleave;
    data['request_expenses'] = this.requestExpenses;
    data['doc_end_period'] = this.docEndPeriod;
    data['request_punch'] = this.requestPunch;
    data['addpunch'] = this.addpunch;
    data['automaticattend'] = this.automaticattend;
    data['empcustodypay'] = this.empcustodypay;
    data['emplinkcontract'] = this.emplinkcontract;
    data['movecustodydepartment'] = this.movecustodydepartment;
    data['paymentoutsalary'] = this.paymentoutsalary;
    data['reccustody'] = this.reccustody;
    return data;
  }
}

class EmployeeRequset {
  Null? vacationrequest;
  Null? loanrequest;
  Null? custodyrequest;
  Null? leaverequest;

  EmployeeRequset(
      {this.vacationrequest,
        this.loanrequest,
        this.custodyrequest,
        this.leaverequest});

  EmployeeRequset.fromJson(Map<String, dynamic> json) {
    vacationrequest = json['vacationrequest'];
    loanrequest = json['loanrequest'];
    custodyrequest = json['custodyrequest'];
    leaverequest = json['leaverequest'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vacationrequest'] = this.vacationrequest;
    data['loanrequest'] = this.loanrequest;
    data['custodyrequest'] = this.custodyrequest;
    data['leaverequest'] = this.leaverequest;
    return data;
  }
}

class TourPermission {
  int? id;
  String? userid;
  int? editTrip;
  int? closeTrip;
  int? approvelTrip;
  int? isAReceptionist;
  int? branchid;

  TourPermission(
      {this.id,
        this.userid,
        this.editTrip,
        this.closeTrip,
        this.approvelTrip,
        this.isAReceptionist,
        this.branchid});

  TourPermission.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    editTrip = json['edit_Trip'];
    closeTrip = json['close_Trip'];
    approvelTrip = json['approvel_Trip'];
    isAReceptionist = json['is_a_receptionist'];
    branchid = json['branchid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userid'] = this.userid;
    data['edit_Trip'] = this.editTrip;
    data['close_Trip'] = this.closeTrip;
    data['approvel_Trip'] = this.approvelTrip;
    data['is_a_receptionist'] = this.isAReceptionist;
    data['branchid'] = this.branchid;
    return data;
  }
}