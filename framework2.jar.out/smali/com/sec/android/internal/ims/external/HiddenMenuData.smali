.class public Lcom/sec/android/internal/ims/external/HiddenMenuData;
.super Ljava/lang/Object;
.source "HiddenMenuData.java"


# static fields
.field public static final DefaultmAccessNwInfo:Ljava/lang/String; = ""

.field public static final DefaultmAlwaysOn:Ljava/lang/String; = "1"

.field public static final DefaultmAudioCodecMode:Ljava/lang/String; = "octet-aligned"

.field public static final DefaultmAudioFirst:Ljava/lang/String; = ""

.field public static final DefaultmAudioPort:Ljava/lang/String; = "7010"

.field public static final DefaultmAutoTest:Ljava/lang/String; = "Normal Mode"

.field public static final DefaultmBitRate:Ljava/lang/String; = "512000"

.field public static final DefaultmCurrDispFormat:Ljava/lang/String; = "vga"

.field public static final DefaultmCurrLatchedNw:Ljava/lang/String; = "LTE"

.field public static final DefaultmDynamicBitRate:Ljava/lang/String; = "1"

.field public static final DefaultmEnableQos:Ljava/lang/String; = "1"

.field public static final DefaultmFrameRate:Ljava/lang/String; = "15"

.field public static final DefaultmLoopback:Ljava/lang/String; = "End To End Call"

.field public static final DefaultmPrefAudioCodec:Ljava/lang/String; = "AMR,EVRC"

.field public static final DefaultmPrefCscfDns:Ljava/lang/String; = "pcscf.lgtims.co.kr"

.field public static final DefaultmPrefCscfDnsforWiFi:Ljava/lang/String; = "abc.sktelecom.com"

.field public static final DefaultmPrefCscfDomain:Ljava/lang/String; = "lgt.co.kr"

.field public static final DefaultmPrefCscfIp:Ljava/lang/String; = "10.160.62.75"

.field public static final DefaultmPrefCscfPort:Ljava/lang/String; = "5060"

.field public static final DefaultmPrefCscfPortforLTE:Ljava/lang/String; = "5060"

.field public static final DefaultmPrefCscfPortforWiFi:Ljava/lang/String; = "5060"

.field public static final DefaultmPrefNwType:Ljava/lang/String; = "1"

.field public static final DefaultmPrefVideoCodec:Ljava/lang/String; = "H263,MPEG4"

.field public static final DefaultmPrefXdmDns:Ljava/lang/String; = "100"

.field public static final DefaultmPrefXdmIp:Ljava/lang/String; = "0"

.field public static final DefaultmPrefXdmIpforWiFi:Ljava/lang/String; = "0"

.field public static final DefaultmPrivateUserIdentity:Ljava/lang/String; = "1"

.field public static final DefaultmPublicUserIdentity:Ljava/lang/String; = "1000"

.field public static final DefaultmQosAware:Ljava/lang/String; = ""

.field public static final DefaultmRegisterTimer:Ljava/lang/String; = "600000"

.field public static final DefaultmSessionExpire:Ljava/lang/String; = "180"

.field public static final DefaultmSubscriberTimer:Ljava/lang/String; = "600000"

.field public static final DefaultmVTDebugging:Ljava/lang/String; = ""

.field public static final DefaultmVideoPort:Ljava/lang/String; = "7012"

.field public static final DefaultmVideoProfile:Ljava/lang/String; = ""


# instance fields
.field public mAccessNwInfoVal:Ljava/lang/String;

.field public mAlwaysOnVal:Ljava/lang/String;

.field public mAudioCodecModeVal:Ljava/lang/String;

.field public mAudioFirstVal:Ljava/lang/String;

.field public mAudioPortVal:Ljava/lang/String;

.field public mAutoTestVal:Ljava/lang/String;

.field public mBitRateVal:Ljava/lang/String;

.field public mBuildTypeVal:Ljava/lang/String;

.field public mCurrDispFormatVal:Ljava/lang/String;

.field public mCurrLatchedNwVal:Ljava/lang/String;

.field public mDynamicBitRateVal:Ljava/lang/String;

.field public mEnableQosVal:Ljava/lang/String;

.field public mFrameRateVal:Ljava/lang/String;

.field public mLoopbackVal:Ljava/lang/String;

.field public mPrefAudioCodecVal:Ljava/lang/String;

.field public mPrefCscfDnsVal:Ljava/lang/String;

.field public mPrefCscfDnsforWiFiVal:Ljava/lang/String;

.field public mPrefCscfDomainVal:Ljava/lang/String;

.field public mPrefCscfIpVal:Ljava/lang/String;

.field public mPrefCscfPortVal:Ljava/lang/String;

.field public mPrefCscfPortforLTEVal:Ljava/lang/String;

.field public mPrefCscfPortforWiFiVal:Ljava/lang/String;

.field public mPrefNwTypeVal:Ljava/lang/String;

.field public mPrefVideoCodecVal:Ljava/lang/String;

.field public mPrefXdmDnsVal:Ljava/lang/String;

.field public mPrefXdmIpVal:Ljava/lang/String;

.field public mPrefXdmIpforWiFiVal:Ljava/lang/String;

.field public mPrivateUserIdentityVal:Ljava/lang/String;

.field public mPublicUserIdentityVal:Ljava/lang/String;

.field public mQosAwareVal:Ljava/lang/String;

.field public mRegisterTimerVal:Ljava/lang/String;

.field public mSessionExpireVal:Ljava/lang/String;

.field public mSubscriberTimerVal:Ljava/lang/String;

.field public mVTDebuggingVal:Ljava/lang/String;

.field public mVideoPortVal:Ljava/lang/String;

.field public mVideoProfileVal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuData;->settoDefaultValues()V

    .line 199
    return-void
.end method


# virtual methods
.method public settoDefaultValues()V
    .locals 1

    .prologue
    .line 205
    const-string v0, "pcscf.lgtims.co.kr"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 207
    const-string v0, "10.160.62.75"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 209
    const-string v0, "lgt.co.kr"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    .line 211
    const-string v0, "5060"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 213
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    .line 215
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    .line 217
    const-string v0, "AMR,EVRC"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 219
    const-string v0, "H263,MPEG4"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 221
    const-string v0, "End To End Call"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    .line 223
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 225
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    .line 227
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    .line 229
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    .line 231
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    .line 233
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    .line 235
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    .line 237
    const-string v0, "100"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildTypeVal:Ljava/lang/String;

    .line 241
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefNwTypeVal:Ljava/lang/String;

    .line 243
    const-string v0, "LTE"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 249
    const-string v0, "vga"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 251
    const-string v0, "15"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    .line 253
    const-string v0, "512000"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 255
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDynamicBitRateVal:Ljava/lang/String;

    .line 258
    const-string v0, "octet-aligned"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioCodecModeVal:Ljava/lang/String;

    .line 262
    const-string v0, "1000"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 264
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 266
    const-string v0, "600000"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRegisterTimerVal:Ljava/lang/String;

    .line 268
    const-string v0, "600000"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSubscriberTimerVal:Ljava/lang/String;

    .line 270
    const-string v0, "180"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSessionExpireVal:Ljava/lang/String;

    .line 272
    const-string v0, "7010"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioPortVal:Ljava/lang/String;

    .line 274
    const-string v0, "7012"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoPortVal:Ljava/lang/String;

    .line 276
    const-string v0, "abc.sktelecom.com"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 278
    const-string v0, "5060"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    .line 280
    const-string v0, "5060"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    .line 282
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    .line 285
    return-void
.end method
