.class Lcom/android/server/enterprise/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAGS_ACCEPT_ALL_CERT:I = 0x8

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_USE_SSL:I = 0x1

.field public static final FLAGS_USE_TLS:I = 0x2

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final OFF_PEAK_SCHEDULE:Ljava/lang/String; = "offPeakSchedule"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PEAK_DAYS:Ljava/lang/String; = "peakDays"

.field public static final PEAK_END_MINUTE:Ljava/lang/String; = "peakEndMinute"

.field public static final PEAK_SCHEDULE:Ljava/lang/String; = "peakSchedule"

.field public static final PEAK_START_MINUTE:Ljava/lang/String; = "peakStartMinute"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final ROAMING_SCHEDULE:Ljava/lang/String; = "roamingSchedule"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public mId:I

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerFlags:I

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field mIsEAS:Z

.field public mNotify:Z

.field public mOffPeakSyncSchedule:I

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerFlags:I

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocolVersion:Ljava/lang/String;

.field public mRetrivalSize:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 271
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 272
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 274
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 275
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 282
    iput-object p2, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 283
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 284
    iput p4, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 288
    iput-object p5, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 289
    iput-object p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 291
    iput-object p7, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 292
    iput-object p8, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 293
    iput p9, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 297
    iput-object p10, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 298
    iput-object p11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRetrivalSize:I

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mNotify:Z

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Z)V
    .locals 3
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "isDefault"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 316
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 317
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 320
    iput-object p4, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 321
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 322
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 323
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 325
    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    .end local p5
    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 326
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 327
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 328
    iput-object p8, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 329
    iput-object p7, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 330
    iput-object p9, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 331
    iput-boolean p10, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 332
    iput-boolean p11, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 333
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 334
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 335
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 336
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 338
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 339
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 340
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 342
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 343
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 345
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 347
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 348
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 355
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 356
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 357
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 358
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRetrivalSize:I

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mNotify:Z

    .line 360
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;ZIIIIIIZ)V
    .locals 3
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "isDefault"
    .parameter "peakDays"
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "peakSyncSchedule"
    .parameter "roamingSyncSchedule"
    .parameter "retrivalSize"
    .parameter "notify"

    .prologue
    .line 368
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 370
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 373
    iput-object p4, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 374
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 375
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 376
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 377
    iput-object p2, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 378
    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    .end local p5
    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 379
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 380
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 381
    iput-object p8, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 382
    iput-object p7, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 383
    iput-object p9, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 384
    iput-boolean p10, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 385
    iput-boolean p11, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 386
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 387
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 388
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 389
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 391
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 392
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 393
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 394
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 395
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 396
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 397
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 398
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 399
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 400
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 401
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 402
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 405
    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 406
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 407
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 408
    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 409
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 410
    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 411
    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRetrivalSize:I

    .line 412
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mNotify:Z

    .line 413
    return-void
.end method
