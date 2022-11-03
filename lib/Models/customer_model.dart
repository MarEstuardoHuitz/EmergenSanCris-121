import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thinkcreative_technologies/Configs/db_keys.dart';

class CustomerModel {
  final String platform;
  final String firebaseuid;
  final String id;
  final int userLoginType;
  final String nickname;
  final String searchKey;
  final String phone;
  final String email;
  final String password;
  final String phoneRaw;
  final String countryCode;
  final String photoUrl;
  final String aboutMe;
  final String actionmessage;
  final String currentDeviceID;
  final String privateKey;
  final String publicKey;
  final String accountstatus;
  final int audioCallMade;
  final int videoCallMade;
  final int audioCallRecieved;
  final int videoCallRecieved;
  final int groupsCreated;
  final int authenticationType;
  final String passcode;
  final int totalvisitsANDROID;
  final int totalvisitsIOS;
  final int joinedOn;
  final int lastLogin;
  final int lastOnline;
  final int lastNotificationSeen;
  var lastSeen;
  final bool isNotificationStringsMulitilanguageEnabled;
  final Map notificationStringsMap;
  final Map kycMap;
  final Map geoMap;
  final Map deviceDetails;
  final int lastVerified;
  final Map twoFactorVerification;
  final int userTypeIndex;
  final int totalRepliesInTickets;
  final List<dynamic> ratings;
  final List<dynamic> phonenumbervariants;
  final List<dynamic> hidden;
  final List<dynamic> locked;
  final List<dynamic> notificationTokens;

  final List<dynamic> quickReplies;
//--extra for future scalability
  String? accountcreatedby = '';
  String? userexString2 = '';
  String? userexString3 = '';
  String? userexString4 = '';
  String? userexString5 = '';
  String? userexString6 = '';
  String? userexString7 = '';
  String? userexString8 = '';
  String? userexString9 = '';
  String? userexString10 = '';
  String? userexString11 = '';
  String? userexString12 = '';
  String? userexString13 = '';
  String? userexString14 = '';
  bool? userexBool1 = false;
  bool? userexBool2 = false;
  bool? userexBool3 = false;
  bool? userexBool5 = false;
  bool? userexBool6 = false;
  bool? userexBool7 = true;
  bool? userexBool8 = true;
  bool? userexBool11 = true;
  bool? userexBool12 = true;
  List<dynamic> rolesassigned = [];
  List<dynamic>? userexList2 = [];
  List<dynamic>? userexList3 = [];
  List<dynamic>? userexList4 = [];
  List<dynamic>? userexList5 = [];
  List<dynamic>? userexList6 = [];
  List<dynamic>? userexList7 = [];
  int? userexInt1 = 0;
  int? userexInt2 = 0;
  int? userexInt3 = 0;
  int? userexInt4 = 0;
  int? userexInt5 = 0;
  int? userexInt6 = 0;
  double? userexDouble1 = 0.001;
  double? userexDouble2 = 0.001;
  double? userexDouble3 = 0.001;
  double? userexDouble4 = 0.001;
  double? userexDouble5 = 0.001;
  Map? userexMap2 = {};
  Map? userexMap3 = {};
  Map? userexMap1 = {};
  Map? userexMap4 = {};
  Map? userexMap5 = {};
  CustomerModel({
    required this.platform,
    required this.firebaseuid,
    required this.id,
    required this.userLoginType,
    required this.nickname,
    required this.searchKey,
    required this.phone,
    required this.email,
    required this.password,
    required this.phoneRaw,
    required this.countryCode,
    required this.photoUrl,
    required this.aboutMe,
    required this.actionmessage,
    required this.currentDeviceID,
    required this.privateKey,
    required this.publicKey,
    required this.accountstatus,
    required this.audioCallMade,
    required this.videoCallMade,
    required this.audioCallRecieved,
    required this.videoCallRecieved,
    required this.groupsCreated,
    required this.authenticationType,
    required this.passcode,
    required this.totalvisitsANDROID,
    required this.totalvisitsIOS,
    required this.joinedOn,
    required this.lastLogin,
    required this.lastOnline,
    required this.lastNotificationSeen,
    required this.lastSeen,
    required this.isNotificationStringsMulitilanguageEnabled,
    required this.notificationStringsMap,
    required this.kycMap,
    required this.geoMap,
    required this.phonenumbervariants,
    required this.hidden,
    required this.locked,
    required this.notificationTokens,
    required this.deviceDetails,
    required this.lastVerified,
    required this.twoFactorVerification,
    required this.userTypeIndex,
    required this.totalRepliesInTickets,
    required this.ratings,
    required this.quickReplies,
    //----
    this.accountcreatedby = '',
    this.userexString2 = '',
    this.userexString3 = '',
    this.userexString4 = '',
    this.userexString5 = '',
    this.userexString6 = '',
    this.userexString7 = '',
    this.userexString8 = '',
    this.userexString9 = '',
    this.userexString10 = '',
    this.userexString11 = '',
    this.userexString12 = '',
    this.userexString13 = '',
    this.userexString14 = '',
    this.userexBool1 = false,
    this.userexBool2 = false,
    this.userexBool3 = false,
    this.userexBool5 = false,
    this.userexBool6 = false,
    this.userexBool7 = true,
    this.userexBool8 = true,
    this.userexBool11 = true,
    this.userexBool12 = true,
    required this.rolesassigned,
    this.userexList2 = const [],
    this.userexList3 = const [],
    this.userexList4 = const [],
    this.userexList5 = const [],
    this.userexList6 = const [],
    this.userexList7 = const [],
    this.userexInt1 = 0,
    this.userexInt2 = 0,
    this.userexInt3 = 0,
    this.userexInt4 = 0,
    this.userexInt5 = 0,
    this.userexInt6 = 0,
    this.userexDouble1 = 0.001,
    this.userexDouble2 = 0.001,
    this.userexDouble3 = 0.001,
    this.userexDouble4 = 0.001,
    this.userexDouble5 = 0.001,
    this.userexMap2 = const {},
    this.userexMap3 = const {},
    this.userexMap1 = const {},
    this.userexMap4 = const {},
    this.userexMap5 = const {},
  });

  CustomerModel copyWith({
    final String? platform,
    final String? firebaseuid,
    final String? id,
    final int? userLoginType,
    final String? nickname,
    final String? searchKey,
    final String? phone,
    final String? email,
    final String? password,
    final String? phoneRaw,
    final String? countryCode,
    final String? photoUrl,
    final String? aboutMe,
    final String? actionmessage,
    final String? currentDeviceID,
    final String? privateKey,
    final String? publicKey,
    final String? accountstatus,
    final int? audioCallMade,
    final int? videoCallMade,
    final int? audioCallRecieved,
    final int? videoCallRecieved,
    final int? groupsCreated,
    final int? authenticationType,
    final String? passcode,
    final int? totalvisitsANDROID,
    final int? totalvisitsIOS,
    final int? joinedOn,
    final int? lastLogin,
    final int? lastOnline,
    final int? lastNotificationSeen,
    var lastSeen,
    final bool? isNotificationStringsMulitilanguageEnabled,
    final Map? notificationStringsMap,
    final Map? kycMap,
    final Map? geoMap,
    final Map? deviceDetails,
    final int? lastVerified,
    final Map? twoFactorVerification,
    final int? userTypeIndex,
    final int? totalRepliesInTickets,
    final List<dynamic>? ratings,
    final List<dynamic>? phonenumbervariants,
    final List<dynamic>? hidden,
    final List<dynamic>? locked,
    final List<dynamic>? notificationTokens,
    final List<dynamic>? quickReplies,
    //--
    final String? accountcreatedby,
    final String? userexString2,
    final String? userexString3,
    final String? userexString4,
    final String? userexString5,
    final String? userexString6,
    final String? userexString7,
    final String? userexString8,
    final String? userexString9,
    final String? userexString10,
    final String? userexString11,
    final String? userexString12,
    final String? userexString13,
    final String? userexString14,
    final String? userexString15,
    final bool? userexBool1,
    final bool? userexBool2,
    final bool? userexBool3,
    final bool? userexBool8,
    final bool? userexBool5,
    final bool? userexBool6,
    final bool? userexBool7,
    final bool? userexBool11,
    final bool? userexBool12,
    final List<dynamic>? rolesassigned,
    final List<dynamic>? userexList2,
    final List<dynamic>? userexList3,
    final List<dynamic>? userexList4,
    final List<dynamic>? userexList5,
    final List<dynamic>? userexList6,
    final List<dynamic>? userexList7,
    final int? userexInt1,
    final int? userexInt2,
    final int? userexInt3,
    final int? userexInt4,
    final int? userexInt5,
    final int? userexInt6,
    final double? userexDouble1,
    final double? userexDouble2,
    final double? userexDouble3,
    final double? userexDouble5,
    final double? userexDouble6,
    final double? userexDouble7,
    final double? userexDouble8,
    final Map? userexMap2,
    final Map? userexMap3,
    final Map? userexMap1,
    final Map? userexMap4,
    final Map? userexMap5,
  }) {
    return CustomerModel(
      platform: platform ?? this.platform,
      id: id ?? this.id,
      firebaseuid: firebaseuid ?? this.firebaseuid,
      userLoginType: userLoginType ?? this.userLoginType,
      nickname: nickname ?? this.nickname,
      searchKey: searchKey ?? this.searchKey,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneRaw: phoneRaw ?? this.phoneRaw,
      countryCode: countryCode ?? this.countryCode,
      photoUrl: photoUrl ?? this.photoUrl,
      aboutMe: aboutMe ?? this.aboutMe,
      actionmessage: actionmessage ?? this.actionmessage,
      currentDeviceID: currentDeviceID ?? this.currentDeviceID,
      privateKey: privateKey ?? this.privateKey,
      publicKey: publicKey ?? this.publicKey,
      accountstatus: accountstatus ?? this.accountstatus,
      audioCallMade: audioCallMade ?? this.audioCallMade,
      videoCallMade: videoCallMade ?? this.videoCallMade,
      audioCallRecieved: audioCallRecieved ?? this.audioCallRecieved,
      videoCallRecieved: videoCallRecieved ?? this.videoCallRecieved,
      groupsCreated: groupsCreated ?? this.groupsCreated,
      authenticationType: authenticationType ?? this.authenticationType,
      passcode: passcode ?? this.passcode,
      totalvisitsANDROID: totalvisitsANDROID ?? this.totalvisitsANDROID,
      totalvisitsIOS: totalvisitsIOS ?? this.totalvisitsIOS,
      joinedOn: joinedOn ?? this.joinedOn,
      lastSeen: lastSeen ?? this.lastSeen,
      lastLogin: lastLogin ?? this.lastLogin,
      lastOnline: lastOnline ?? this.lastOnline,
      lastNotificationSeen: lastNotificationSeen ?? this.lastNotificationSeen,
      isNotificationStringsMulitilanguageEnabled:
          isNotificationStringsMulitilanguageEnabled ??
              this.isNotificationStringsMulitilanguageEnabled,
      notificationStringsMap:
          notificationStringsMap ?? this.notificationStringsMap,
      kycMap: kycMap ?? this.kycMap,
      geoMap: geoMap ?? this.geoMap,
      phonenumbervariants: phonenumbervariants ?? this.phonenumbervariants,
      hidden: hidden ?? this.hidden,
      locked: locked ?? this.locked,
      notificationTokens: notificationTokens ?? this.notificationTokens,
      deviceDetails: deviceDetails ?? this.deviceDetails,
      lastVerified: lastVerified ?? this.lastVerified,
      twoFactorVerification:
          twoFactorVerification ?? this.twoFactorVerification,
      userTypeIndex: userTypeIndex ?? this.userTypeIndex,
      totalRepliesInTickets:
          totalRepliesInTickets ?? this.totalRepliesInTickets,
      ratings: ratings ?? this.ratings,
      quickReplies: quickReplies ?? this.quickReplies,
      //--
      accountcreatedby: accountcreatedby ?? this.accountcreatedby,
      userexString2: userexString2 ?? this.userexString2,
      userexString3: userexString3 ?? this.userexString3,
      userexString4: userexString4 ?? this.userexString4,
      userexString5: userexString5 ?? this.userexString5,
      userexString6: userexString6 ?? this.userexString6,
      userexString7: userexString7 ?? this.userexString7,
      userexString8: userexString8 ?? this.userexString8,
      userexString9: userexString9 ?? this.userexString9,
      userexString10: userexString10 ?? this.userexString10,
      userexString11: userexString11 ?? this.userexString11,
      userexString12: userexString12 ?? this.userexString12,
      userexString13: userexString13 ?? this.userexString13,
      userexString14: userexString14 ?? this.userexString14,
      userexBool1: userexBool1 ?? this.userexBool1,
      userexBool2: userexBool2 ?? this.userexBool2,
      userexBool3: userexBool3 ?? this.userexBool3,
      userexBool5: userexBool5 ?? this.userexBool5,
      userexBool6: userexBool6 ?? this.userexBool6,
      userexBool7: userexBool7 ?? this.userexBool7,
      userexBool8: userexBool8 ?? this.userexBool8,
      userexBool11: userexBool11 ?? this.userexBool11,
      userexBool12: userexBool12 ?? this.userexBool12,
      rolesassigned: rolesassigned ?? this.rolesassigned,
      userexList2: userexList2 ?? this.userexList2,
      userexList3: userexList3 ?? this.userexList3,
      userexList4: userexList4 ?? this.userexList4,
      userexList5: userexList5 ?? this.userexList5,
      userexList6: userexList6 ?? this.userexList6,
      userexList7: userexList7 ?? this.userexList7,
      userexInt1: userexInt1 ?? this.userexInt1,
      userexInt2: userexInt2 ?? this.userexInt2,
      userexInt3: userexInt3 ?? this.userexInt3,
      userexInt4: userexInt4 ?? this.userexInt4,
      userexInt5: userexInt5 ?? this.userexInt5,
      userexInt6: userexInt6 ?? this.userexInt6,
      userexDouble1: userexDouble1 ?? this.userexDouble1,
      userexDouble2: userexDouble2 ?? this.userexDouble2,
      userexDouble3: userexDouble3 ?? this.userexDouble3,
      userexDouble4: userexDouble4 ?? this.userexDouble4,
      userexDouble5: userexDouble5 ?? this.userexDouble5,
      userexMap2: userexMap2 ?? this.userexMap2,
      userexMap3: userexMap3 ?? this.userexMap3,
      userexMap1: userexMap1 ?? this.userexMap1,
      userexMap4: userexMap4 ?? this.userexMap4,
      userexMap5: userexMap5 ?? this.userexMap5,
    );
  }

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      platform: json[Dbkeys.platform],
      userLoginType: json[Dbkeys.userLoginType],
      firebaseuid: json[Dbkeys.firebaseuid],
      id: json[Dbkeys.id],
      nickname: json[Dbkeys.nickname],
      searchKey: json[Dbkeys.searchKey],
      phone: json[Dbkeys.phone],
      email: json[Dbkeys.email],
      password: json[Dbkeys.password],
      phoneRaw: json[Dbkeys.phoneRaw],
      countryCode: json[Dbkeys.countryCode],
      photoUrl: json[Dbkeys.photoUrl],
      aboutMe: json[Dbkeys.aboutMe],
      actionmessage: json[Dbkeys.actionmessage],
      currentDeviceID: json[Dbkeys.currentDeviceID],
      privateKey: json[Dbkeys.privateKey],
      publicKey: json[Dbkeys.publicKey],
      accountstatus: json[Dbkeys.accountstatus],
      audioCallMade: json[Dbkeys.audioCallMade],
      videoCallMade: json[Dbkeys.videoCallMade],
      audioCallRecieved: json[Dbkeys.audioCallRecieved],
      videoCallRecieved: json[Dbkeys.videoCallRecieved],
      groupsCreated: json[Dbkeys.groupsCreated],
      authenticationType: json[Dbkeys.authenticationType],
      passcode: json[Dbkeys.passcode],
      totalvisitsANDROID: json[Dbkeys.totalvisitsANDROID],
      totalvisitsIOS: json[Dbkeys.totalvisitsIOS],
      joinedOn: json[Dbkeys.joinedOn],
      lastSeen: json[Dbkeys.lastSeen],
      lastLogin: json[Dbkeys.lastLogin],
      lastOnline: json[Dbkeys.lastOnline],
      lastNotificationSeen: json[Dbkeys.lastNotificationSeen],
      isNotificationStringsMulitilanguageEnabled:
          json[Dbkeys.isNotificationStringsMulitilanguageEnabled],
      notificationStringsMap: json[Dbkeys.notificationStringsMap],
      kycMap: json[Dbkeys.kycMap],
      geoMap: json[Dbkeys.geoMap],
      phonenumbervariants: json[Dbkeys.phonenumbervariants],
      hidden: json[Dbkeys.hidden],
      locked: json[Dbkeys.locked],
      notificationTokens: json[Dbkeys.notificationTokens],
      deviceDetails: json[Dbkeys.deviceDetails],
      lastVerified: json[Dbkeys.lastVerified],
      twoFactorVerification: json[Dbkeys.twoFactorVerification],
      userTypeIndex: json[Dbkeys.userTypeIndex],
      totalRepliesInTickets: json[Dbkeys.totalRepliesInTickets],
      ratings: json[Dbkeys.ratings],
      quickReplies: json[Dbkeys.quickReplies],
      //--
      accountcreatedby: json[Dbkeys.accountcreatedby],
      userexString2: json[Dbkeys.userexString2],
      userexString3: json[Dbkeys.userexString3],
      userexString4: json[Dbkeys.userexString4],
      userexString5: json[Dbkeys.userexString5],
      userexString6: json[Dbkeys.userexString6],
      userexString7: json[Dbkeys.userexString7],
      userexString8: json[Dbkeys.userexString8],
      userexString9: json[Dbkeys.userexString9],
      userexString10: json[Dbkeys.userexString10],
      userexString11: json[Dbkeys.userexString11],
      userexString12: json[Dbkeys.userexString12],
      userexString13: json[Dbkeys.userexString13],
      userexString14: json[Dbkeys.userexString14],
      userexBool1: json[Dbkeys.userexBool1],
      userexBool2: json[Dbkeys.userexBool2],
      userexBool3: json[Dbkeys.userexBool3],
      userexBool5: json[Dbkeys.userexBool5],
      userexBool6: json[Dbkeys.userexBool6],
      userexBool7: json[Dbkeys.userexBool7],
      userexBool8: json[Dbkeys.userexBool8],
      userexBool11: json[Dbkeys.userexBool11],
      userexBool12: json[Dbkeys.userexBool12],
      rolesassigned: json[Dbkeys.rolesassigned],
      userexList2: json[Dbkeys.userexList2],
      userexList3: json[Dbkeys.userexList3],
      userexList4: json[Dbkeys.userexList4],
      userexList5: json[Dbkeys.userexList5],
      userexList6: json[Dbkeys.userexList6],
      userexList7: json[Dbkeys.userexList7],
      userexInt1: json[Dbkeys.userexInt1],
      userexInt2: json[Dbkeys.userexInt2],
      userexInt3: json[Dbkeys.userexInt3],
      userexInt4: json[Dbkeys.userexInt4],
      userexInt5: json[Dbkeys.userexInt5],
      userexInt6: json[Dbkeys.userexInt6],
      userexDouble1: json[Dbkeys.userexDouble1],
      userexDouble2: json[Dbkeys.userexDouble2],
      userexDouble3: json[Dbkeys.userexDouble3],
      userexDouble4: json[Dbkeys.userexDouble4],
      userexDouble5: json[Dbkeys.userexDouble5],
      userexMap2: json[Dbkeys.userexMap2],
      userexMap3: json[Dbkeys.userexMap3],
      userexMap1: json[Dbkeys.userexMap1],
      userexMap4: json[Dbkeys.userexMap4],
      userexMap5: json[Dbkeys.userexMap5],
    );
  }
  factory CustomerModel.fromSnapshot(DocumentSnapshot doc) {
    return CustomerModel(
      platform: doc[Dbkeys.platform],
      userLoginType: doc[Dbkeys.userLoginType],
      firebaseuid: doc[Dbkeys.firebaseuid],
      id: doc[Dbkeys.id],
      nickname: doc[Dbkeys.nickname],
      searchKey: doc[Dbkeys.searchKey],
      phone: doc[Dbkeys.phone],
      email: doc[Dbkeys.email],
      password: doc[Dbkeys.password],
      phoneRaw: doc[Dbkeys.phoneRaw],
      countryCode: doc[Dbkeys.countryCode],
      photoUrl: doc[Dbkeys.photoUrl],
      aboutMe: doc[Dbkeys.aboutMe],
      actionmessage: doc[Dbkeys.actionmessage],
      currentDeviceID: doc[Dbkeys.currentDeviceID],
      privateKey: doc[Dbkeys.privateKey],
      publicKey: doc[Dbkeys.publicKey],
      accountstatus: doc[Dbkeys.accountstatus],
      audioCallMade: doc[Dbkeys.audioCallMade],
      videoCallMade: doc[Dbkeys.videoCallMade],
      audioCallRecieved: doc[Dbkeys.audioCallRecieved],
      videoCallRecieved: doc[Dbkeys.videoCallRecieved],
      groupsCreated: doc[Dbkeys.groupsCreated],
      authenticationType: doc[Dbkeys.authenticationType],
      passcode: doc[Dbkeys.passcode],
      totalvisitsANDROID: doc[Dbkeys.totalvisitsANDROID],
      totalvisitsIOS: doc[Dbkeys.totalvisitsIOS],
      joinedOn: doc[Dbkeys.joinedOn],
      lastSeen: doc[Dbkeys.lastSeen],
      lastLogin: doc[Dbkeys.lastLogin],
      lastOnline: doc[Dbkeys.lastOnline],
      lastNotificationSeen: doc[Dbkeys.lastNotificationSeen],
      isNotificationStringsMulitilanguageEnabled:
          doc[Dbkeys.isNotificationStringsMulitilanguageEnabled],
      notificationStringsMap: doc[Dbkeys.notificationStringsMap],
      kycMap: doc[Dbkeys.kycMap],
      geoMap: doc[Dbkeys.geoMap],
      phonenumbervariants: doc[Dbkeys.phonenumbervariants],
      hidden: doc[Dbkeys.hidden],
      locked: doc[Dbkeys.locked],
      notificationTokens: doc[Dbkeys.notificationTokens],
      deviceDetails: doc[Dbkeys.deviceDetails],
      lastVerified: doc[Dbkeys.lastVerified],
      twoFactorVerification: doc[Dbkeys.twoFactorVerification],
      userTypeIndex: doc[Dbkeys.userTypeIndex],
      totalRepliesInTickets: doc[Dbkeys.totalRepliesInTickets],
      ratings: doc[Dbkeys.ratings],
      quickReplies: doc[Dbkeys.quickReplies],
      //--
      accountcreatedby: doc[Dbkeys.accountcreatedby],
      userexString2: doc[Dbkeys.userexString2],
      userexString3: doc[Dbkeys.userexString3],
      userexString4: doc[Dbkeys.userexString4],
      userexString5: doc[Dbkeys.userexString5],
      userexString6: doc[Dbkeys.userexString6],
      userexString7: doc[Dbkeys.userexString7],
      userexString8: doc[Dbkeys.userexString8],
      userexString9: doc[Dbkeys.userexString9],
      userexString10: doc[Dbkeys.userexString10],
      userexString11: doc[Dbkeys.userexString11],
      userexString12: doc[Dbkeys.userexString12],
      userexString13: doc[Dbkeys.userexString13],
      userexString14: doc[Dbkeys.userexString14],
      userexBool1: doc[Dbkeys.userexBool1],
      userexBool2: doc[Dbkeys.userexBool2],
      userexBool3: doc[Dbkeys.userexBool3],
      userexBool5: doc[Dbkeys.userexBool5],
      userexBool6: doc[Dbkeys.userexBool6],
      userexBool7: doc[Dbkeys.userexBool7],
      userexBool8: doc[Dbkeys.userexBool8],
      userexBool11: doc[Dbkeys.userexBool11],
      userexBool12: doc[Dbkeys.userexBool12],
      rolesassigned: doc[Dbkeys.rolesassigned],
      userexList2: doc[Dbkeys.userexList2],
      userexList3: doc[Dbkeys.userexList3],
      userexList4: doc[Dbkeys.userexList4],
      userexList5: doc[Dbkeys.userexList5],
      userexList6: doc[Dbkeys.userexList6],
      userexList7: doc[Dbkeys.userexList7],
      userexInt1: doc[Dbkeys.userexInt1],
      userexInt2: doc[Dbkeys.userexInt2],
      userexInt3: doc[Dbkeys.userexInt3],
      userexInt4: doc[Dbkeys.userexInt4],
      userexInt5: doc[Dbkeys.userexInt5],
      userexInt6: doc[Dbkeys.userexInt6],
      userexDouble1: doc[Dbkeys.userexDouble1],
      userexDouble2: doc[Dbkeys.userexDouble2],
      userexDouble3: doc[Dbkeys.userexDouble3],
      userexDouble4: doc[Dbkeys.userexDouble4],
      userexDouble5: doc[Dbkeys.userexDouble5],
      userexMap2: doc[Dbkeys.userexMap2],
      userexMap3: doc[Dbkeys.userexMap3],
      userexMap1: doc[Dbkeys.userexMap1],
      userexMap4: doc[Dbkeys.userexMap4],
      userexMap5: doc[Dbkeys.userexMap5],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      Dbkeys.platform: platform,
      Dbkeys.nickname: nickname,
      Dbkeys.userLoginType: userLoginType,
      Dbkeys.firebaseuid: firebaseuid,
      Dbkeys.id: id,
      Dbkeys.searchKey: searchKey,
      Dbkeys.phone: phone,
      Dbkeys.email: email,
      Dbkeys.password: password,
      Dbkeys.phoneRaw: phoneRaw,
      Dbkeys.countryCode: countryCode,
      Dbkeys.photoUrl: photoUrl,
      Dbkeys.aboutMe: aboutMe,
      Dbkeys.actionmessage: actionmessage,
      Dbkeys.currentDeviceID: currentDeviceID,
      Dbkeys.privateKey: privateKey,
      Dbkeys.publicKey: publicKey,
      Dbkeys.accountstatus: accountstatus,
      Dbkeys.audioCallMade: audioCallMade,
      Dbkeys.videoCallMade: videoCallMade,
      Dbkeys.audioCallRecieved: audioCallRecieved,
      Dbkeys.videoCallRecieved: videoCallRecieved,
      Dbkeys.groupsCreated: groupsCreated,
      Dbkeys.authenticationType: authenticationType,
      Dbkeys.passcode: passcode,
      Dbkeys.totalvisitsANDROID: totalvisitsANDROID,
      Dbkeys.totalvisitsIOS: totalvisitsIOS,
      Dbkeys.joinedOn: joinedOn,
      Dbkeys.lastLogin: lastLogin,
      Dbkeys.lastOnline: lastOnline,
      Dbkeys.lastSeen: lastSeen,
      Dbkeys.lastNotificationSeen: lastNotificationSeen,
      Dbkeys.isNotificationStringsMulitilanguageEnabled:
          isNotificationStringsMulitilanguageEnabled,
      Dbkeys.notificationStringsMap: notificationStringsMap,
      Dbkeys.kycMap: kycMap,
      Dbkeys.geoMap: geoMap,
      Dbkeys.phonenumbervariants: phonenumbervariants,
      Dbkeys.hidden: hidden,
      Dbkeys.locked: locked,
      Dbkeys.notificationTokens: notificationTokens,
      Dbkeys.deviceDetails: deviceDetails,
      Dbkeys.lastVerified: lastVerified,
      Dbkeys.twoFactorVerification: twoFactorVerification,
      Dbkeys.userTypeIndex: userTypeIndex,
      Dbkeys.totalRepliesInTickets: totalRepliesInTickets,
      Dbkeys.ratings: ratings,
      Dbkeys.quickReplies: quickReplies,
      //--
      Dbkeys.accountcreatedby: accountcreatedby,
      Dbkeys.userexString2: userexString2,
      Dbkeys.userexString3: userexString3,
      Dbkeys.userexString4: userexString4,
      Dbkeys.userexString5: userexString5,
      Dbkeys.userexString6: userexString6,
      Dbkeys.userexString7: userexString7,
      Dbkeys.userexString8: userexString8,
      Dbkeys.userexString9: userexString9,
      Dbkeys.userexString10: userexString10,
      Dbkeys.userexString11: userexString11,
      Dbkeys.userexString12: userexString12,
      Dbkeys.userexString13: userexString13,
      Dbkeys.userexString14: userexString14,
      Dbkeys.userexBool1: userexBool1,
      Dbkeys.userexBool2: userexBool2,
      Dbkeys.userexBool3: userexBool3,
      Dbkeys.userexBool5: userexBool5,
      Dbkeys.userexBool6: userexBool6,
      Dbkeys.userexBool7: userexBool7,
      Dbkeys.userexBool8: userexBool8,
      Dbkeys.userexBool11: userexBool11,
      Dbkeys.userexBool12: userexBool12,
      Dbkeys.rolesassigned: rolesassigned,
      Dbkeys.userexList2: userexList2,
      Dbkeys.userexList3: userexList3,
      Dbkeys.userexList4: userexList4,
      Dbkeys.userexList5: userexList5,
      Dbkeys.userexList6: userexList6,
      Dbkeys.userexList7: userexList7,
      Dbkeys.userexInt1: userexInt1,
      Dbkeys.userexInt2: userexInt2,
      Dbkeys.userexInt3: userexInt3,
      Dbkeys.userexInt4: userexInt4,
      Dbkeys.userexInt5: userexInt5,
      Dbkeys.userexInt6: userexInt6,
      Dbkeys.userexDouble1: userexDouble1,
      Dbkeys.userexDouble2: userexDouble2,
      Dbkeys.userexDouble3: userexDouble3,
      Dbkeys.userexDouble4: userexDouble4,
      Dbkeys.userexDouble5: userexDouble5,
      Dbkeys.userexMap2: userexMap2,
      Dbkeys.userexMap3: userexMap3,
      Dbkeys.userexMap1: userexMap1,
      Dbkeys.userexMap4: userexMap4,
      Dbkeys.userexMap5: userexMap5,
    };
  }
}
