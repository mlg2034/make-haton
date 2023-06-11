import 'package:firebase_auth/firebase_auth.dart' as fb;

///GENERATED WITH ChatGTP

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
  final String uid;

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
    required this.uid,
  });

  factory UserModel.fromFirebase(fb.User user) {
    return UserModel(
      displayName: user.displayName,
      email: user.email,
      emailVerified: user.emailVerified,
      isAnonymous: user.isAnonymous,
      metadata: UserMetadata.fromFBUserMetadata(user.metadata),
      phoneNumber: user.phoneNumber,
      photoURL: user.photoURL,
      providerData: List<UserInfo>.from(user.providerData.map((x) => UserInfo.fromFBUserInfo(x))),
      refreshToken: user.refreshToken,
      tenantId: user.tenantId,
      uid: user.uid,
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
  final DateTime? creationTime;
  final DateTime? lastSignInTime;

  UserMetadata({
    this.creationTime,
    this.lastSignInTime,
  });

  factory UserMetadata.fromFBUserMetadata(fb.UserMetadata meta) {
    return UserMetadata(
      creationTime: meta.creationTime,
      lastSignInTime: meta.lastSignInTime,
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
  final String providerId;
  final String? uid;

  UserInfo({
    this.displayName,
    this.email,
    this.phoneNumber,
    this.photoURL,
    required this.providerId,
    this.uid,
  });

  factory UserInfo.fromFBUserInfo(fb.UserInfo info) {
    return UserInfo(
      displayName: info.displayName,
      email: info.email,
      phoneNumber: info.phoneNumber,
      photoURL: info.photoURL,
      providerId: info.providerId,
      uid: info.uid,
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
