class UserModel {
  final String? displayName;
  final String? email;
  final bool? emailVerified;
  final bool? isAnonymous;
  final UserMetadata? metadata;
  final String? phoneNumber;
  final String? photoURL;
  final List<UserInfo>? providerData;
  final String? refreshToken;
  final String? tenantId;
  final String? uid;

  UserModel({
    this.displayName,
    this.email,
    this.emailVerified,
    this.isAnonymous,
    this.metadata,
    this.phoneNumber,
    this.photoURL,
    this.providerData,
    this.refreshToken,
    this.tenantId,
    this.uid,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      displayName: json['displayName'],
      email: json['email'],
      emailVerified: json['emailVerified'],
      isAnonymous: json['isAnonymous'],
      metadata: UserMetadata.fromJson(json['metadata']),
      phoneNumber: json['phoneNumber'],
      photoURL: json['photoURL'],
      providerData: List<UserInfo>.from(json['providerData'].map((x) => UserInfo.fromJson(x))),
      refreshToken: json['refreshToken'],
      tenantId: json['tenantId'],
      uid: json['uid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'emailVerified': emailVerified,
      'isAnonymous': isAnonymous,
      'metadata': metadata?.toJson(),
      'phoneNumber': phoneNumber,
      'photoURL': photoURL,
      'providerData': providerData?.map((x) => x.toJson()).toList(),
      'refreshToken': refreshToken,
      'tenantId': tenantId,
      'uid': uid,
    };
  }
}

class UserMetadata {
  final String? creationTime;
  final String? lastSignInTime;

  UserMetadata({
    this.creationTime,
    this.lastSignInTime,
  });

  factory UserMetadata.fromJson(Map<String, dynamic> json) {
    return UserMetadata(
      creationTime: json['creationTime'],
      lastSignInTime: json['lastSignInTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'creationTime': creationTime,
      'lastSignInTime': lastSignInTime,
    };
  }
}

class UserInfo {
  final String? displayName;
  final String? email;
  final String? phoneNumber;
  final String? photoURL;
  final String? providerId;
  final String? uid;

  UserInfo({
    this.displayName,
    this.email,
    this.phoneNumber,
    this.photoURL,
    this.providerId,
    this.uid,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      displayName: json['displayName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      photoURL: json['photoURL'],
      providerId: json['providerId'],
      uid: json['uid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'phoneNumber': phoneNumber,
      'photoURL': photoURL,
      'providerId': providerId,
      'uid': uid,
    };
  }
}
