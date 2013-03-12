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
    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 276
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
    .line 281
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 287
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 288
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 289
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 291
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 295
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 299
    iput-object p2, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 301
    iput p4, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 305
    iput-object p5, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 306
    iput-object p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 308
    iput-object p7, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 309
    iput-object p8, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 310
    iput p9, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 314
    iput-object p10, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 315
    iput-object p11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRetrivalSize:I

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mNotify:Z

    .line 325
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
    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 333
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 336
    iput-object p4, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 337
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 338
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 339
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 341
    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    .end local p5
    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 348
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 350
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 351
    iput-object p8, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 352
    iput-object p7, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 353
    iput-object p9, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 354
    iput-boolean p10, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 355
    iput-boolean p11, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 356
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 357
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 358
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 359
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 361
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 362
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 363
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 365
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 366
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 367
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 368
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 370
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 371
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 375
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 376
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 377
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 378
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 379
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 381
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRetrivalSize:I

    .line 382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mNotify:Z

    .line 383
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
    .line 391
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 394
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 397
    iput-object p4, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 398
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 399
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 400
    iput-object p1, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 401
    iput-object p2, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 402
    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    .end local p5
    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 409
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 411
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 412
    iput-object p8, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 413
    iput-object p7, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 414
    iput-object p9, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 415
    iput-boolean p10, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 416
    iput-boolean p11, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 417
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 418
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 419
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 420
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 422
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 423
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 424
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 426
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 427
    iput-object p12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 428
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 429
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 430
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 431
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 432
    iput-object p3, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 436
    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 437
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 438
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 439
    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 440
    iput p6, p0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 441
    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 442
    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mRetrivalSize:I

    .line 443
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mNotify:Z

    .line 444
    return-void
.end method
