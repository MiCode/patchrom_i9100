.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;
    }
.end annotation


# static fields
.field static final BOOT_WITH_TD:Ljava/lang/String; = "1"

.field static final BOOT_WITH_WCDMA:Ljava/lang/String; = "2"

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field private static final EVENT_NETWORK_STATE_CHANGED_BY_RESCAN:I = 0xfa0

.field static final HOMEZONE_CITY:I = 0x29a

.field static final HOMEZONE_HOME:I = 0x309

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_DISP_O2_HOMEZONE_TAG_LEN:I = 0xd

.field static final NETWORK_REGIST_REJECT_ACTION:Ljava/lang/String; = "com.android.server.status.regist_reject"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field public static final ROAMING_MODE_ALL_NETWORKS:I = 0x2

.field public static final ROAMING_MODE_DISABLE:I = 0x0

.field public static final ROAMING_MODE_NATIONAL_ROMING_ONLY:I = 0x1

.field static final RTS_CS:I = 0x2

.field static final RTS_IDLE:I = 0x1

.field static final RTS_PS:I = 0x3

.field static final RTS_STATUS:I = 0x0

.field static final RTS_TOKEN:Ljava/lang/String; = ";"

.field static final RTS_TOKEN_CS:Ljava/lang/String; = "CS"

.field static final RTS_TOKEN_IDLE:Ljava/lang/String; = "Idle"

.field static final RTS_TOKEN_PS:Ljava/lang/String; = "PS"

.field static final RTS_TOKEN_STATUS:Ljava/lang/String; = "Status"

.field static final RTS_VALUES_COUNT:I = 0x4

.field static final RTS_VALUE_LOC:I = 0x1

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field private static deniedDialog:Landroid/app/AlertDialog;

.field public static isSetNoserviceTimer:Z

.field private static mRescanDialog:Landroid/app/AlertDialog;

.field static final noserviceAlarmCode:I

.field public static noserviceCount:I


# instance fields
.field private IsNITZupdated:Z

.field private IsRealBootup:Z

.field private IsSIMLoadDone:Z

.field private IsShow:Z

.field IsalreadysendNITZ:Z

.field private MccNumChanged:Z

.field private NITZCount:I

.field private NetworkStateChangedByRescanDialog:Z

.field private PrevMcc:Ljava/lang/String;

.field after2min:Z

.field private bIsSimAbsent:Z

.field protected bshowDataGuard:Z

.field protected bshowSmsGuard:Z

.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curNetworkReigst:Ljava/lang/String;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsState:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mDataNationalRoamingObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field mFastDormancyStateHelper:Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHandset_Auth:Ljava/lang/String;

.field private mHandset_Reg:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLuRejCause:I

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field private mNeedToRegForSimLoaded:Z

.field mNewLuRejCause:I

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field mNewRilRegState:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field mPreferredNetworkType:I

.field private mReasonDataDenied:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRegistrationState:I

.field private mReportedGprsNoReg:Z

.field mRilRegState:I

.field private mRoamingMode:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private m_bActionLocaleChanged:Z

.field private maxTimerMS:J

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onOffLock:Z

.field onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private propertyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 241
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 250
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 283
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSetNoserviceTimer:Z

    .line 284
    sput v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->noserviceCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 9
    .parameter "phone"

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 123
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 124
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 125
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 126
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 127
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 128
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 131
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRegistrationState:I

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 194
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 195
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 196
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 199
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 221
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 222
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 233
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;

    invoke-direct {v5, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v5, Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFastDormancyStateHelper:Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;

    .line 237
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 238
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 243
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 244
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsNITZupdated:Z

    .line 245
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsRealBootup:Z

    .line 246
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    .line 251
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 256
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curNetworkReigst:Ljava/lang/String;

    .line 257
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_bActionLocaleChanged:Z

    .line 258
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bIsSimAbsent:Z

    .line 278
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    .line 285
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->maxTimerMS:J

    .line 287
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    .line 292
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    const-string v5, "0"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 349
    const-string v5, "0"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    .line 407
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 417
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 432
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 434
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    .line 3503
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3546
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 446
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 447
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 448
    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 449
    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 450
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 451
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 452
    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 454
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 456
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v5, "ServiceStateTracker"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 458
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 459
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 461
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 462
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 463
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 464
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 465
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/IccCard;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x27

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnO2HomeZoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 469
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 472
    .local v0, airplaneMode:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_national_roaming_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 475
    if-gtz v0, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 477
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 478
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 486
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v5, "data_national_roaming_mode"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 494
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 497
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 498
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFastDormancyStateHelper:Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;->registerReceiver(Landroid/content/Context;)V

    .line 514
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 517
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 532
    return-void
.end method

.method private GetTimezoneInfoUsingMcc(Ljava/lang/String;)V
    .locals 10
    .parameter "operatorNumeric"

    .prologue
    const/high16 v9, 0x2000

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2372
    if-nez p1, :cond_1

    .line 2374
    const-string v4, "GSM"

    const-string/jumbo v5, "operatorNumeric is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2379
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_2

    .line 2381
    const-string v4, "GSM"

    const-string/jumbo v5, "operatorNumeric is Invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto :goto_0

    .line 2393
    :cond_2
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, NewMcc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "111"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "999"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2399
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mcc is changed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 2401
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 2404
    const/4 v3, 0x0

    .line 2405
    .local v3, zoneId:Ljava/lang/String;
    const-string/jumbo v4, "ril.timezoneID"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2407
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZONE ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_5

    .line 2410
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 2411
    .local v2, manualTimeZone:Ljava/util/TimeZone;
    if-nez v2, :cond_4

    .line 2414
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2416
    const-string v4, "GSM"

    const-string v5, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2418
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2419
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2421
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const-string v4, ""

    const-string v5, "KOR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2422
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 2425
    :cond_4
    const-string v4, "GSM"

    const-string v5, "TIMEZONE Update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2454
    .end local v2           #manualTimeZone:Ljava/util/TimeZone;
    .end local v3           #zoneId:Ljava/lang/String;
    :goto_1
    const-string v4, ""

    const-string v5, "KOR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2455
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 2431
    .restart local v3       #zoneId:Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_7

    .line 2434
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2436
    const-string v4, "GSM"

    const-string v5, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2438
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2439
    const-string v4, "MCC"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putExtra[mcc] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2443
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 2446
    :cond_7
    const-string v4, "GSM"

    const-string v5, "Do not send , already send Intent ACTION_NITZ_SET_TIME."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2452
    .end local v3           #zoneId:Ljava/lang/String;
    :cond_8
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateFakeRoamingNRP2G()V

    return-void
.end method

.method static synthetic access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    sput-object p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private dismissDeniedDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3530
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3532
    :try_start_0
    const-string v0, "dismiss deniedDialog"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3533
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3538
    :goto_0
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 3541
    :cond_0
    return-void

    .line 3538
    :catchall_0
    move-exception v0

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    throw v0

    .line 3535
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dismissRescanDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3601
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3603
    :try_start_0
    const-string v0, "ManualSelectionReceiver"

    const-string v1, "dismissRescanDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3608
    :goto_0
    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 3611
    :cond_0
    return-void

    .line 3608
    :catchall_0
    move-exception v0

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    throw v0

    .line 3605
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private displayLUrejectcause()I
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x3

    const-wide/32 v7, 0x1d0d8

    const/16 v6, 0x6e

    const/4 v5, 0x2

    .line 3406
    const/4 v0, 0x0

    .line 3407
    .local v0, id:I
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3409
    .local v1, salesCode:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSpnDisplay(); mEmergencyOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ss.getState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRilRegState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLuRejCause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after2min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    if-nez v2, :cond_4

    .line 3415
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3416
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v9, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-ne v2, v10, :cond_2

    .line 3418
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    packed-switch v2, :pswitch_data_0

    .line 3425
    :pswitch_0
    const v0, 0x10406b7

    .line 3430
    :cond_2
    :goto_0
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3431
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v9, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-ne v2, v10, :cond_8

    .line 3433
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    sparse-switch v2, :sswitch_data_0

    .line 3474
    const v0, 0x10403df

    .line 3490
    :cond_4
    :goto_1
    return v0

    .line 3422
    :pswitch_1
    const v0, 0x10406b6

    .line 3423
    goto :goto_0

    .line 3435
    :sswitch_0
    const v0, 0x10406b2

    .line 3436
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3437
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3439
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3440
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 3445
    :sswitch_1
    const v0, 0x10406b3

    .line 3446
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3447
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3449
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3450
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 3455
    :sswitch_2
    const v0, 0x10406b4

    .line 3456
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3457
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3459
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3460
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 3465
    :sswitch_3
    const v0, 0x10406b5

    .line 3466
    goto :goto_1

    .line 3477
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v5, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-nez v2, :cond_4

    .line 3478
    :cond_9
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 3481
    const v0, 0x10403df

    goto :goto_1

    .line 3418
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3433
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xfe -> :sswitch_3
    .end sparse-switch
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2838
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 2840
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2841
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2842
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2843
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2845
    if-gez p0, :cond_0

    .line 2846
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2847
    neg-int p0, p0

    .line 2852
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 2853
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 2855
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2856
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2858
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2860
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2861
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2863
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 2849
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 2485
    move v5, p1

    .line 2486
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 2487
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 2489
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 2490
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2491
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 2492
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 2493
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 2494
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 2496
    move-object v2, v6

    .line 2501
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 2492
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3178
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 3181
    :goto_0
    return v1

    .line 3178
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3180
    :catch_0
    move-exception v0

    .line 3181
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3187
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 3190
    :goto_0
    return v1

    .line 3187
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3189
    :catch_0
    move-exception v0

    .line 3190
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 2475
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2476
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 2478
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2480
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2481
    return-object v0

    .line 2478
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2480
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private is3GDataNetType(Ljava/lang/String;)Z
    .locals 6
    .parameter "netType"

    .prologue
    const/4 v5, 0x0

    .line 3754
    const/4 v0, 0x0

    .line 3755
    .local v0, bRet:Z
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3756
    .local v1, mDataType:[Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    aget-object v2, v1, v5

    const-string v3, "UMTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v5

    const-string v3, "HSDPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v5

    const-string v3, "HSUPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v5

    const-string v3, "HSPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v5

    const-string v3, "HSPAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3758
    :cond_0
    const/4 v0, 0x1

    .line 3759
    :cond_1
    return v0
.end method

.method private isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z
    .locals 11
    .parameter "s"

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 2782
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v7, :cond_1

    .line 2795
    :cond_0
    :goto_0
    return v6

    .line 2785
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 2786
    .local v4, operatorNumeric:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    .line 2787
    .local v1, fro:[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_0

    .line 2788
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 2789
    .local v5, r:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFakeRoamingBetweenOperators - r["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], operatorNumeric["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2791
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 2788
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 2467
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 17
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    .line 2742
    const-string v14, "gsm.sim.operator.alpha"

    const-string v15, "empty"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2744
    .local v13, spn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 2745
    .local v9, onsl:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    .line 2747
    .local v10, onss:Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v3, 0x1

    .line 2748
    .local v3, equalsOnsl:Z
    :goto_0
    if-eqz v10, :cond_3

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 2750
    .local v4, equalsOnss:Z
    :goto_1
    const-string v14, "gsm.sim.operator.numeric"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2752
    .local v12, simNumeric:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 2754
    .local v11, operatorNumeric:Ljava/lang/String;
    const/4 v2, 0x1

    .line 2756
    .local v2, equalsMcc:Z
    const/4 v14, 0x0

    const/4 v15, 0x3

    :try_start_0
    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2762
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v14}, Lcom/android/internal/telephony/IccRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v5

    .line 2763
    .local v5, fho:[Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_5

    .line 2764
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v8, :cond_5

    aget-object v6, v1, v7

    .line 2765
    .local v6, h:Ljava/lang/String;
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isRoamingBetweenOperators - h["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], operatorNumeric["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2767
    :cond_0
    const/16 p1, 0x0

    .line 2776
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #h:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local p1
    :cond_1
    :goto_4
    return p1

    .line 2747
    .end local v2           #equalsMcc:Z
    .end local v3           #equalsOnsl:Z
    .end local v4           #equalsOnss:Z
    .end local v5           #fho:[Ljava/lang/String;
    .end local v11           #operatorNumeric:Ljava/lang/String;
    .end local v12           #simNumeric:Ljava/lang/String;
    .restart local p1
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2748
    .restart local v3       #equalsOnsl:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 2764
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #equalsMcc:Z
    .restart local v4       #equalsOnss:Z
    .restart local v5       #fho:[Ljava/lang/String;
    .restart local v6       #h:Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v11       #operatorNumeric:Ljava/lang/String;
    .restart local v12       #simNumeric:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2773
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #h:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_EnableRoamingIcon4NationalRoaming"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2776
    if-eqz p1, :cond_7

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    :cond_6
    const/4 v14, 0x1

    :goto_5
    move/from16 p1, v14

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 2758
    .end local v5           #fho:[Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method private onO2HomeZoneInfo(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 3348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3349
    .local v1, context:Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    move-object v2, v13

    check-cast v2, [I

    .line 3350
    .local v2, homeZoneInfo:[I
    const/4 v13, 0x0

    aget v10, v2, v13

    .line 3351
    .local v10, zone_inid:I
    const/4 v13, 0x1

    aget v12, v2, v13

    .line 3352
    .local v12, zone_type:I
    const/4 v13, 0x2

    aget v11, v2, v13

    .line 3353
    .local v11, zone_tag_present:I
    const/16 v13, 0xd

    new-array v8, v13, [B

    .line 3354
    .local v8, tempAlphaID:[B
    const-string v5, ""

    .line 3357
    .local v5, message:Ljava/lang/CharSequence;
    const/16 v6, 0x309

    .line 3358
    .local v6, notificationId:I
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 3359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Landroid/app/Notification;->when:J

    .line 3362
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3363
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v14, 0x0

    const/high16 v15, 0x1000

    invoke-static {v1, v14, v4, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    iput-object v14, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3365
    const-string/jumbo v13, "notification"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 3368
    .local v7, notificationManager:Landroid/app/NotificationManager;
    const-string v9, ""

    .line 3369
    .local v9, title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v9, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3371
    packed-switch v10, :pswitch_data_0

    .line 3400
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3375
    :pswitch_1
    if-eqz v12, :cond_0

    .line 3378
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 3379
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v13, 0xd

    if-ge v3, v13, :cond_1

    .line 3380
    add-int/lit8 v13, v3, 0x3

    aget v13, v2, v13

    int-to-byte v13, v13

    aput-byte v13, v8, v3

    .line 3379
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3382
    :cond_1
    const/4 v13, 0x0

    const/16 v14, 0xd

    invoke-static {v8, v13, v14}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 3384
    .end local v3           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v1, v9, v5, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3386
    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 3387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v14, 0x1080a25

    iput v14, v13, Landroid/app/Notification;->icon:I

    .line 3388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v7, v6, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 3389
    :cond_3
    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 3390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v14, 0x1080a24

    iput v14, v13, Landroid/app/Notification;->icon:I

    .line 3391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v7, v6, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 3397
    :pswitch_2
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2603
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 2605
    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2607
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 2608
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 2609
    .local v0, ints:[I
    aget v2, v0, v4

    .line 2611
    .local v2, state:I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 2615
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_2

    .line 2616
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2619
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 2623
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2625
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2626
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2627
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2638
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2639
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2641
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2686
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2688
    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2689
    return-void

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_6
    move v3, v4

    .line 2611
    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 2616
    goto :goto_1

    :cond_8
    move v5, v4

    .line 2619
    goto :goto_2

    .line 2628
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2629
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2630
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 2642
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2644
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2645
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2647
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2649
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2651
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2653
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2654
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2656
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2657
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2659
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2661
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2663
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2665
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2666
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2668
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2669
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2671
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2674
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2676
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2677
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2679
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2680
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2682
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onRtsIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    .line 3618
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 3620
    .local v1, rtsValue:[Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRtsIndication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.status.regist_reject"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3623
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3624
    const-string v2, "CAUSE"

    aget-object v3, v1, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3625
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3626
    return-void
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v18, v0

    .line 2528
    .local v18, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v19, 0x63

    .line 2529
    .local v19, rssi:I
    const/4 v9, -0x1

    .line 2530
    .local v9, lteSignalStrength:I
    const/4 v10, -0x1

    .line 2531
    .local v10, lteRsrp:I
    const/4 v11, -0x1

    .line 2532
    .local v11, lteRsrq:I
    const v12, 0x7fffffff

    .line 2533
    .local v12, lteRssnr:I
    const/4 v13, -0x1

    .line 2535
    .local v13, lteCqi:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2538
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2558
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    move/from16 v0, v19

    and-int/lit16 v2, v0, 0xff

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v14, 0x1

    const v15, 0xff00

    and-int v15, v15, v19

    shr-int/lit8 v15, v15, 0x8

    invoke-direct/range {v1 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2587
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2593
    :cond_0
    :goto_1
    return-void

    .line 2540
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 v17, v1

    check-cast v17, [I

    .line 2543
    .local v17, ints:[I
    move-object/from16 v0, v17

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 2544
    const/4 v1, 0x0

    aget v19, v17, v1

    .line 2545
    const/4 v1, 0x7

    aget v9, v17, v1

    .line 2546
    const/16 v1, 0x8

    aget v10, v17, v1

    .line 2547
    const/16 v1, 0x9

    aget v11, v17, v1

    .line 2548
    const/16 v1, 0xa

    aget v12, v17, v1

    .line 2549
    const/16 v1, 0xb

    aget v13, v17, v1

    goto :goto_0

    .line 2551
    :cond_2
    const-string v1, "Bogus signal strength response"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2552
    const/16 v19, 0x63

    goto :goto_0

    .line 2588
    .end local v17           #ints:[I
    :catch_0
    move-exception v16

    .line 2589
    .local v16, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SignalStrength not notified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onSprintRoamingIndicator(Z)V
    .locals 9
    .parameter "roaming"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3765
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v8, "sprint_gsm_data_guard"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v2, v5

    .line 3766
    .local v2, gsmDataGuardEnabled:Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v8, "sprint_gsm_sms_guard"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v3, v5

    .line 3767
    .local v3, gsmSmsGuardEnabled:Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_0

    .line 3768
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 3770
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3771
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3772
    .local v1, dialogIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3773
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3776
    .end local v1           #dialogIntent:Landroid/content/Intent;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_1

    .line 3778
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3779
    .local v4, intent:Landroid/content/Intent;
    const-string/jumbo v0, "roaming"

    .line 3780
    .local v0, currentRoam:Ljava/lang/String;
    const-string/jumbo v6, "status"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3781
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3783
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3784
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 3786
    .end local v0           #currentRoam:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .end local v2           #gsmDataGuardEnabled:Z
    .end local v3           #gsmSmsGuardEnabled:Z
    :cond_2
    move v2, v6

    .line 3765
    goto/16 :goto_0

    .restart local v2       #gsmDataGuardEnabled:Z
    :cond_3
    move v3, v6

    .line 3766
    goto :goto_1
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1604
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 1607
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1636
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1652
    :goto_0
    return-void

    .line 1609
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1611
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1612
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1613
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1614
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1618
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1620
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1621
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1622
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1623
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 49

    .prologue
    .line 1656
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "] newSS=["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "] oldGprs="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " newData="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " oldMaxDataCalls="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " mNewMaxDataCalls="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " oldReasonDataDenied="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " mNewReasonDataDenied="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " oldType="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " newType="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-eqz v45, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-nez v45, :cond_19

    const/16 v23, 0x1

    .line 1672
    .local v23, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-nez v45, :cond_0

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v45

    if-nez v45, :cond_1a

    .line 1674
    const-string v45, "GSM"

    const-string/jumbo v46, "pollStateDone(), STATE_IN_SERVICE but newSS.getOperatorNumeric() returned NULL"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-nez v45, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-eqz v45, :cond_1c

    const/16 v17, 0x1

    .line 1705
    .local v17, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v45, v0

    if-eqz v45, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v45, v0

    if-nez v45, :cond_1d

    const/16 v18, 0x1

    .line 1709
    .local v18, hasGprsAttached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v45, v0

    if-nez v45, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v45, v0

    if-eqz v45, :cond_1e

    const/16 v19, 0x1

    .line 1713
    .local v19, hasGprsDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v46, v0

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1f

    const/16 v22, 0x1

    .line 1715
    .local v22, hasRadioTechnologyChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_20

    const/16 v16, 0x1

    .line 1717
    .local v16, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v45

    if-nez v45, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v45

    if-eqz v45, :cond_21

    const/16 v25, 0x1

    .line 1719
    .local v25, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v45

    if-eqz v45, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v45

    if-nez v45, :cond_22

    const/16 v24, 0x1

    .line 1721
    .local v24, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_23

    const/16 v21, 0x1

    .line 1724
    .local v21, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    const/16 v46, 0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    const/16 v46, 0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_24

    const/16 v20, 0x1

    .line 1740
    .local v20, hasLimited:Z
    :goto_a
    const-string v13, ""

    .line 1741
    .local v13, dualmodeTest:Ljava/lang/String;
    const-string/jumbo v45, "ril.dualmode.test"

    const-string v46, ""

    invoke-static/range {v45 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getState()I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v46, v0

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_2

    .line 1746
    :cond_1
    const v45, 0xc3c2

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getState()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getState()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1751
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v39, v0

    .line 1752
    .local v39, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1753
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v36, v0

    .line 1758
    .local v36, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1759
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1764
    if-eqz v22, :cond_4

    .line 1765
    const/4 v9, -0x1

    .line 1766
    .local v9, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v29

    check-cast v29, Landroid/telephony/gsm/GsmCellLocation;

    .line 1767
    .local v29, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v29, :cond_3

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    .line 1768
    :cond_3
    const v45, 0xc3c0

    const/16 v46, 0x3

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1771
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "RAT switched "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " -> "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " at cell "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1777
    .end local v9           #cid:I
    .end local v29           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1780
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    .line 1782
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1787
    if-eqz v22, :cond_7

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SystemProperties.get(TelephonyProperties.PROPERTY_DATA_NETWORK_TYPE) "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "gsm.network.type"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "ServiceState.rilRadioTechnologyToString(mRilRadioTechnology) "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1798
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 1802
    :cond_5
    const-string v45, "gsm.network.type"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_7

    .line 1807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v45, v0

    rem-int/lit8 v45, v45, 0x5

    if-nez v45, :cond_6

    .line 1808
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SystemProperties.get(TelephonyProperties.PROPERTY_DATA_NETWORK_TYPE) "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "gsm.network.type"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "ServiceState.rilRadioTechnologyToString(mRilRadioTechnology) "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1813
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 1815
    const-wide/16 v45, 0x64

    invoke-static/range {v45 .. v46}, Landroid/os/SystemClock;->sleep(J)V

    .line 1817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v45, v0

    const/16 v46, 0x32

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    .line 1818
    const-string v45, "Property set count 50. So we use break"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1825
    :cond_7
    if-eqz v23, :cond_8

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1829
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " changing to false"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1832
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2050
    :cond_8
    if-eqz v16, :cond_11

    .line 2053
    const-string v45, "ATT"

    const-string/jumbo v46, "ro.csc.sales_code"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_9

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v45

    if-eqz v45, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-eqz v45, :cond_9

    .line 2057
    new-instance v27, Landroid/content/Intent;

    const-string v45, "com.android.settings.MANUAL_SELECTION_TOAST"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2058
    .local v27, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2069
    .end local v27           #intent:Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string v45, "gsm.operator.numeric"

    const-string v46, ""

    invoke-static/range {v45 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2077
    .local v34, prevOperatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    .line 2078
    .local v32, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.numeric"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v45

    const-string v46, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v45 .. v46}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_b

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v45

    const-string/jumbo v46, "phone"

    invoke-virtual/range {v45 .. v46}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    .line 2083
    .local v37, telephonyManager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v31

    .line 2084
    .local v31, operatorMccMnc:Ljava/lang/String;
    const-string v45, "gsm.sim.operator.numeric"

    const-string v46, ""

    invoke-static/range {v45 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2085
    .local v33, operatorSIM:Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v26

    .line 2088
    .local v26, imsi:Ljava/lang/String;
    if-eqz v33, :cond_a

    const-string v45, "73008"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 2089
    if-eqz v31, :cond_a

    const-string v45, "73002"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 2092
    if-eqz v26, :cond_a

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.alpha"

    const-string/jumbo v47, "vtr"

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :cond_a
    if-eqz v33, :cond_b

    const-string v45, "73007"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_b

    .line 2098
    if-eqz v31, :cond_b

    const-string v45, "73002"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_b

    .line 2101
    if-eqz v26, :cond_b

    .line 2102
    const-string v45, "7300701"

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_25

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.alpha"

    const-string v47, "Gtd_Telsur"

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    .end local v26           #imsi:Ljava/lang/String;
    .end local v31           #operatorMccMnc:Ljava/lang/String;
    .end local v33           #operatorSIM:Ljava/lang/String;
    .end local v37           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-nez v45, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v45

    if-eqz v45, :cond_27

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;)V

    .line 2130
    :cond_c
    :goto_c
    if-nez v32, :cond_28

    .line 2131
    const-string/jumbo v45, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.iso-country"

    const-string v47, ""

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2134
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2256
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v45

    if-eqz v45, :cond_35

    const-string/jumbo v45, "true"

    :goto_e
    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ISROAMING) "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "gsm.operator.isroaming"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "ss.getRoaming() "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2272
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 2276
    :cond_e
    const-string v45, "gsm.operator.isroaming"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v45

    if-eqz v45, :cond_36

    const-string/jumbo v45, "true"

    :goto_f
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_10

    .line 2281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v45, v0

    rem-int/lit8 v45, v45, 0x5

    if-nez v45, :cond_f

    .line 2282
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ISROAMING) "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "gsm.operator.isroaming"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "ss.getRoaming() "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2286
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 2289
    const-wide/16 v45, 0x64

    invoke-static/range {v45 .. v46}, Landroid/os/SystemClock;->sleep(J)V

    .line 2291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v45, v0

    const/16 v46, 0x32

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_e

    .line 2292
    const-string v45, "Property set count 50. So we use break"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2298
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2311
    .end local v32           #operatorNumeric:Ljava/lang/String;
    .end local v34           #prevOperatorNumeric:Ljava/lang/String;
    :cond_11
    if-eqz v18, :cond_12

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2315
    :cond_12
    if-eqz v19, :cond_13

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2319
    :cond_13
    if-eqz v22, :cond_14

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string/jumbo v46, "nwTypeChanged"

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2322
    const-string/jumbo v5, "settings_hedge_data_call_block"

    .line 2323
    .local v5, PROPERTY_HEDGE_DATA_CALL_BLOCK:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string/jumbo v46, "settings_hedge_data_call_block"

    invoke-static/range {v45 .. v46}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2324
    .local v12, dataCallBlock:Ljava/lang/String;
    const-string/jumbo v45, "true"

    move-object/from16 v0, v45

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_14

    .line 2325
    const-string v45, "GSM"

    const-string v46, "hasRadioTechnologyChanged sendMessage(obtainMessage(0x00042003, Phone.REASON_NW_TYPE_CHANGED))"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v45, v0

    const v46, 0x42003

    const-string/jumbo v47, "nwTypeChanged"

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2331
    .end local v5           #PROPERTY_HEDGE_DATA_CALL_BLOCK:Ljava/lang/String;
    .end local v12           #dataCallBlock:Ljava/lang/String;
    :cond_14
    if-eqz v25, :cond_15

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2345
    :cond_15
    if-eqz v24, :cond_16

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2349
    :cond_16
    if-eqz v21, :cond_17

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 2353
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getState()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v45

    if-nez v45, :cond_37

    .line 2354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v45, v0

    if-nez v45, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v45, v0

    if-nez v45, :cond_18

    .line 2355
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "gprs_register_check_period_ms"

    const v47, 0xea60

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2361
    .local v8, check_period:I
    const/16 v45, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    int-to-long v0, v8

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2367
    .end local v8           #check_period:I
    :cond_18
    :goto_10
    return-void

    .line 1667
    .end local v13           #dualmodeTest:Ljava/lang/String;
    .end local v16           #hasChanged:Z
    .end local v17           #hasDeregistered:Z
    .end local v18           #hasGprsAttached:Z
    .end local v19           #hasGprsDetached:Z
    .end local v20           #hasLimited:Z
    .end local v21           #hasLocationChanged:Z
    .end local v22           #hasRadioTechnologyChanged:Z
    .end local v23           #hasRegistered:Z
    .end local v24           #hasRoamingOff:Z
    .end local v25           #hasRoamingOn:Z
    .end local v36           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v39           #tss:Landroid/telephony/ServiceState;
    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1676
    .restart local v23       #hasRegistered:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/SIMRecords;->getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1678
    .local v14, eons:Ljava/lang/String;
    if-eqz v14, :cond_1b

    .line 1680
    const-string v45, "CMHK"

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_0

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v14, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1687
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v45

    const-string v46, "CSL"

    invoke-static/range {v45 .. v46}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_0

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v35

    .line 1689
    .local v35, spn:Ljava/lang/String;
    if-eqz v35, :cond_0

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    move-object/from16 v2, v46

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1701
    .end local v14           #eons:Ljava/lang/String;
    .end local v35           #spn:Ljava/lang/String;
    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1705
    .restart local v17       #hasDeregistered:Z
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1709
    .restart local v18       #hasGprsAttached:Z
    :cond_1e
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1713
    .restart local v19       #hasGprsDetached:Z
    :cond_1f
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 1715
    .restart local v22       #hasRadioTechnologyChanged:Z
    :cond_20
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1717
    .restart local v16       #hasChanged:Z
    :cond_21
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 1719
    .restart local v25       #hasRoamingOn:Z
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 1721
    .restart local v24       #hasRoamingOff:Z
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 1724
    .restart local v21       #hasLocationChanged:Z
    :cond_24
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 2106
    .restart local v13       #dualmodeTest:Ljava/lang/String;
    .restart local v20       #hasLimited:Z
    .restart local v26       #imsi:Ljava/lang/String;
    .restart local v31       #operatorMccMnc:Ljava/lang/String;
    .restart local v32       #operatorNumeric:Ljava/lang/String;
    .restart local v33       #operatorSIM:Ljava/lang/String;
    .restart local v34       #prevOperatorNumeric:Ljava/lang/String;
    .restart local v36       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v37       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v39       #tss:Landroid/telephony/ServiceState;
    :cond_25
    const-string v45, "7300702"

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_26

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.alpha"

    const-string v47, "Virgin"

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2110
    :cond_26
    const-string v45, "7300703"

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_b

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.alpha"

    const-string v47, "GTEL Netline"

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2125
    .end local v26           #imsi:Ljava/lang/String;
    .end local v31           #operatorMccMnc:Ljava/lang/String;
    .end local v33           #operatorSIM:Ljava/lang/String;
    .end local v37           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-eqz v45, :cond_c

    .line 2126
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_c

    .line 2136
    :cond_28
    const-string v28, ""

    .line 2137
    .local v28, iso:Ljava/lang/String;
    const/16 v45, 0x0

    const/16 v46, 0x3

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 2139
    .local v30, mcc:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 2146
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    const-string v46, "gsm.operator.iso-country"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2149
    const/16 v43, 0x0

    .line 2150
    .local v43, zone:Ljava/util/TimeZone;
    const-string v45, "452"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_2a

    .line 2151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v45, v0

    if-nez v45, :cond_2a

    const-string v45, "000"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_2a

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-nez v45, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v45

    if-eqz v45, :cond_2a

    .line 2154
    const-string/jumbo v45, "telephony.test.ignore.nitz"

    const/16 v46, 0x0

    invoke-static/range {v45 .. v46}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    if-eqz v45, :cond_2e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v45

    const-wide/16 v47, 0x1

    and-long v45, v45, v47

    const-wide/16 v47, 0x0

    cmp-long v45, v45, v47

    if-nez v45, :cond_2e

    const/16 v38, 0x1

    .line 2158
    .local v38, testOneUniqueOffsetPath:Z
    :goto_12
    invoke-static/range {v28 .. v28}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v42

    .line 2159
    .local v42, uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_29

    if-eqz v38, :cond_2f

    .line 2160
    :cond_29
    const/16 v45, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    .end local v43           #zone:Ljava/util/TimeZone;
    check-cast v43, Ljava/util/TimeZone;

    .line 2162
    .restart local v43       #zone:Ljava/util/TimeZone;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " with zone.getID="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v43 .. v43}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " testOneUniqueOffsetPath="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2166
    invoke-virtual/range {v43 .. v43}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2178
    .end local v38           #testOneUniqueOffsetPath:Z
    .end local v42           #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_2a
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45

    if-eqz v45, :cond_d

    .line 2183
    const-string/jumbo v45, "persist.sys.timezone"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2185
    .local v44, zoneName:Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' mZoneOffset="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " mZoneDst="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " iso-cc=\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' iso-cc-idx="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    sget-object v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v45, v0

    if-nez v45, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v45, v0

    if-nez v45, :cond_31

    if-eqz v44, :cond_31

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v45

    if-lez v45, :cond_31

    sget-object v45, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v45

    if-gez v45, :cond_31

    .line 2200
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v43

    .line 2201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v45, v0

    if-eqz v45, :cond_2b

    .line 2204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2205
    .local v10, ctm:J
    move-object/from16 v0, v43

    invoke-virtual {v0, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v45

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v40, v0

    .line 2207
    .local v40, tzOffset:J
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: tzOffset="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " ltod="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2210
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v45

    if-eqz v45, :cond_30

    .line 2211
    sub-long v6, v10, v40

    .line 2212
    .local v6, adj:J
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: adj ltod="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2214
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2220
    .end local v6           #adj:J
    .end local v10           #ctm:J
    .end local v40           #tzOffset:J
    :cond_2b
    :goto_14
    const-string/jumbo v45, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2238
    :cond_2c
    :goto_15
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 2240
    if-eqz v43, :cond_34

    .line 2241
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v43 .. v43}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2242
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v45

    if-eqz v45, :cond_2d

    .line 2243
    invoke-virtual/range {v43 .. v43}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2249
    :cond_2d
    invoke-virtual/range {v43 .. v43}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2140
    .end local v43           #zone:Ljava/util/TimeZone;
    .end local v44           #zoneName:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 2141
    .local v15, ex:Ljava/lang/NumberFormatException;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2142
    .end local v15           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v15

    .line 2143
    .local v15, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2154
    .end local v15           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v43       #zone:Ljava/util/TimeZone;
    :cond_2e
    const/16 v38, 0x0

    goto/16 :goto_12

    .line 2169
    .restart local v38       #testOneUniqueOffsetPath:Z
    .restart local v42       #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_2f
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "pollStateDone: there are "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " testOneUniqueOffsetPath="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\', do nothing"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2217
    .end local v38           #testOneUniqueOffsetPath:Z
    .end local v42           #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v10       #ctm:J
    .restart local v40       #tzOffset:J
    .restart local v44       #zoneName:Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v45, v0

    sub-long v45, v45, v40

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto/16 :goto_14

    .line 2221
    .end local v10           #ctm:J
    .end local v40           #tzOffset:J
    :cond_31
    const-string v45, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_32

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getState()I

    move-result v45

    if-nez v45, :cond_2c

    .line 2225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v47, v0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v43

    .line 2226
    const-string/jumbo v45, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2229
    :cond_32
    const-string v45, "452"

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_33

    .line 2230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v47, v0

    move/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v47

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v43

    .line 2231
    const-string/jumbo v45, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2233
    :cond_33
    const-string/jumbo v45, "pollStateDone: no using getTimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2251
    :cond_34
    const-string/jumbo v45, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2256
    .end local v28           #iso:Ljava/lang/String;
    .end local v30           #mcc:Ljava/lang/String;
    .end local v43           #zone:Ljava/util/TimeZone;
    .end local v44           #zoneName:Ljava/lang/String;
    :cond_35
    const-string v45, "false"

    goto/16 :goto_e

    .line 2276
    :cond_36
    const-string v45, "false"

    goto/16 :goto_f

    .line 2365
    .end local v32           #operatorNumeric:Ljava/lang/String;
    .end local v34           #prevOperatorNumeric:Ljava/lang/String;
    :cond_37
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_10
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 2505
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 2520
    :goto_0
    return-void

    .line 2513
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2514
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2519
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 2731
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2693
    packed-switch p1, :pswitch_data_0

    .line 2719
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2720
    :goto_0
    :pswitch_1
    return v0

    .line 2709
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2712
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2716
    goto :goto_0

    .line 2693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 3246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3258
    :cond_0
    :goto_0
    return-void

    .line 3251
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3254
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 3255
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3269
    :cond_0
    :goto_0
    return-void

    .line 3265
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 3199
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 3200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 3201
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 3196
    return-void
.end method

.method private sendMessageForDualmodeSilentReset()V
    .locals 4

    .prologue
    .line 3851
    const-string v0, ""

    .line 3852
    .local v0, dualmodeTest:Ljava/lang/String;
    const-string v1, ""

    .line 3853
    .local v1, simState:Ljava/lang/String;
    const-string/jumbo v2, "ril.dualmode.test"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3854
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3855
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3856
    const/16 v2, 0x73

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3857
    :cond_0
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 3231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3232
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 3233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3234
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3235
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3236
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3243
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 3210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3211
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3213
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 3214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3215
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3216
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3222
    return-void
.end method

.method private setMobileNetworkStatus()V
    .locals 8

    .prologue
    .line 3791
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3792
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3793
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v6, "mobile_network_status"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-byte v4, v5

    .line 3795
    .local v4, status:B
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMobileNetworkStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3798
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3799
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3800
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3801
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3806
    :goto_0
    if-eqz v1, :cond_0

    .line 3807
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3808
    :cond_0
    if-eqz v0, :cond_1

    .line 3809
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3814
    :cond_1
    :goto_1
    return-void

    .line 3802
    :catch_0
    move-exception v2

    .line 3803
    .local v2, e:Ljava/io/IOException;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception occured during refresh Attach APN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3811
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 3812
    .local v3, ex:Ljava/io/IOException;
    const-string v5, "LOG_TAG"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    .line 3293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3294
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3296
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 3297
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 3298
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 3299
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 3300
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3301
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3304
    const-string v1, ""

    .line 3305
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x104011d

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3306
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 3308
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 3330
    :goto_0
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3331
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3332
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3335
    const-string/jumbo v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 3338
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_1

    .line 3340
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3345
    :goto_1
    return-void

    .line 3310
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const/16 v3, 0x378

    .line 3311
    const v6, 0x104011e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3312
    goto :goto_0

    .line 3314
    :pswitch_2
    const/16 v3, 0x378

    .line 3315
    goto :goto_0

    .line 3317
    :pswitch_3
    const v6, 0x1040121

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3318
    goto :goto_0

    .line 3320
    :pswitch_4
    const v6, 0x1040120

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3321
    goto :goto_0

    .line 3323
    :pswitch_5
    const v6, 0x104011f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3324
    goto :goto_0

    .line 3343
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 3308
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final setRegAuthInfo(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    .line 365
    const-string/jumbo v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, ril:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Idle"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ril ril="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v7, ";"

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, rtsValues:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, idleValue:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 378
    .local v4, rtsIdleValue:I
    const/4 v6, 0x0

    .line 379
    .local v6, textId:I
    const/4 v1, 0x0

    .line 380
    .local v1, isCarrierSim:Z
    const/4 v2, 0x0

    .line 382
    .local v2, isRoaming:Z
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rtsIdleValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 398
    :pswitch_1
    const-string v7, "0"

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 399
    const-string v7, "0"

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 14

    .prologue
    const/4 v2, -0x1

    .line 1591
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const v11, 0x7fffffff

    const/4 v13, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v12, v2

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1593
    return-void
.end method

.method private setSilentReset()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3819
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3820
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3821
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v5, "GSM"

    const-string/jumbo v6, "ril.deviceOffReq = 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SILENT_RESETBY_DUALMODE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3824
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "GSM"

    const-string v6, "[DUALMODE] Broadcast SILENT_RESETBY_DUALMODE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3827
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string/jumbo v6, "ril.deviceOffReq"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 3829
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3830
    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 3833
    const/4 v4, 0x4

    .line 3834
    .local v4, size:I
    const/16 v5, 0x10

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3835
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3836
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3840
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 3842
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3843
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3848
    :cond_1
    :goto_1
    return-void

    .line 3837
    :catch_0
    move-exception v2

    .line 3838
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3844
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 37
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 2873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 2874
    .local v24, start:J
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " start="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " delay="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sub-long v33, v24, p2

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2882
    const/4 v5, 0x0

    .line 2886
    .local v5, IsMccChanged:Z
    const-string v32, "[NAM] Close Manual Selection Popup. Send Intent ACTION_NITZ_SET_TIME."

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2887
    new-instance v13, Landroid/content/Intent;

    const-string v32, "android.intent.action.NITZ_SET_TIME"

    move-object/from16 v0, v32

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2888
    .local v13, intent:Landroid/content/Intent;
    const/high16 v32, 0x2000

    move/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2895
    :try_start_0
    const-string v32, "GMT"

    invoke-static/range {v32 .. v32}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 2897
    .local v6, c:Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 2898
    const/16 v32, 0x10

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2900
    const-string v32, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 2901
    .local v19, nitzSubs:[Ljava/lang/String;
    const/16 v28, 0x1

    .line 2902
    .local v28, tzOffsetSign:Z
    const/16 v30, 0x0

    .line 2905
    .local v30, year:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_RIL_HandleInvalidTimezonOffset"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 2906
    const-string v32, "[/:,]"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2907
    .local v20, preNitzSubs:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 2909
    .local v11, i:I
    const/4 v11, 0x0

    :goto_0
    const/16 v32, 0x6

    move/from16 v0, v32

    if-ge v11, v0, :cond_0

    .line 2910
    aget-object v32, v20, v11

    const-string v33, "-1"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 2913
    :cond_0
    const/16 v32, 0x6

    move/from16 v0, v32

    if-ne v11, v0, :cond_4

    .line 2915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2918
    const/16 v32, 0x5

    aget-object v32, v20, v32

    const-string v33, "[+-]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2919
    .local v21, secAndTzOffset:[Ljava/lang/String;
    const/16 v32, 0x5

    aget-object v32, v20, v32

    const/16 v33, 0x2d

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v32

    if-nez v32, :cond_2

    const/16 v28, 0x1

    .line 2921
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2922
    const/4 v11, 0x0

    :goto_2
    const/16 v32, 0x6

    move/from16 v0, v32

    if-ge v11, v0, :cond_3

    .line 2923
    const/16 v32, 0x0

    aput-object v32, v19, v11

    .line 2922
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2909
    .end local v21           #secAndTzOffset:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2919
    .restart local v21       #secAndTzOffset:[Ljava/lang/String;
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 2925
    :cond_3
    const/16 v32, 0x6

    const/16 v33, 0x2

    aget-object v33, v21, v33

    aput-object v33, v19, v32

    .line 2926
    const/4 v11, 0x7

    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    if-ge v11, v0, :cond_5

    .line 2927
    add-int/lit8 v32, v11, -0x1

    aget-object v32, v20, v32

    aput-object v32, v19, v11

    .line 2926
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2930
    .end local v21           #secAndTzOffset:[Ljava/lang/String;
    :cond_4
    const/16 v32, 0x0

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v30, v0

    .line 2931
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2934
    const/16 v32, 0x1

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    .line 2935
    .local v18, month:I
    const/16 v32, 0x2

    move/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2937
    const/16 v32, 0x2

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2938
    .local v7, date:I
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 2940
    const/16 v32, 0x3

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2941
    .local v10, hour:I
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 2943
    const/16 v32, 0x4

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2944
    .local v17, minute:I
    const/16 v32, 0xc

    move/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2946
    const/16 v32, 0x5

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2947
    .local v22, second:I
    const/16 v32, 0xd

    move/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2970
    .end local v7           #date:I
    .end local v10           #hour:I
    .end local v11           #i:I
    .end local v17           #minute:I
    .end local v18           #month:I
    .end local v20           #preNitzSubs:[Ljava/lang/String;
    .end local v22           #second:I
    :cond_5
    :goto_4
    const/16 v32, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    const/16 v23, 0x1

    .line 2972
    .local v23, sign:Z
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_RIL_HandleInvalidTimezonOffset"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 2974
    const/16 v32, 0x0

    aget-object v32, v19, v32

    if-nez v32, :cond_6

    .line 2975
    move/from16 v23, v28

    .line 2980
    :cond_6
    const/16 v32, 0x6

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2982
    .local v27, tzOffset:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_13

    const/16 v32, 0x7

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2992
    .local v8, dst:I
    :goto_6
    if-eqz v23, :cond_14

    const/16 v32, 0x1

    :goto_7
    mul-int v32, v32, v27

    mul-int/lit8 v32, v32, 0xf

    mul-int/lit8 v32, v32, 0x3c

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    .line 2994
    const/16 v31, 0x0

    .line 3000
    .local v31, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_7

    .line 3001
    const/16 v32, 0x8

    aget-object v32, v19, v32

    const/16 v33, 0x21

    const/16 v34, 0x2f

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v29

    .line 3002
    .local v29, tzname:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    .line 3029
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 3030
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[NITZ] get the MCC. "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v26

    .line 3033
    .local v26, tempIso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.iso-country"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 3035
    const/16 v31, 0x0

    .line 3036
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 3043
    .end local v26           #tempIso:Ljava/lang/String;
    .end local v29           #tzname:Ljava/lang/String;
    :cond_7
    :goto_8
    const-string v32, "gsm.operator.iso-country"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3045
    .local v14, iso:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", dst = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ZoneOffset = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", Year ="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3048
    const/16 v32, 0x0

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v30, v0

    .line 3049
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[NITZ] setTimeFromNITZString: Year = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "302"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    const-string v32, "ca"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    const/16 v32, 0x7da

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const v32, -0x1499700

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    if-eqz v8, :cond_a

    :cond_8
    const/16 v32, 0x7d8

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const v32, -0x112a880

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v32, 0x1

    move/from16 v0, v32

    if-eq v8, v0, :cond_a

    :cond_9
    const/16 v32, 0x7db

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const v32, -0x1808580

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v8, v0, :cond_b

    .line 3052
    :cond_a
    const-string v32, "iso remove"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3053
    const/4 v14, 0x0

    .line 3057
    :cond_b
    if-nez v31, :cond_c

    .line 3059
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 3060
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_17

    .line 3061
    if-eqz v8, :cond_16

    const/16 v32, 0x1

    :goto_9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move/from16 v0, v27

    move/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-static {v0, v1, v2, v3, v14}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    .line 3074
    :cond_c
    :goto_a
    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v33, v0

    if-eqz v8, :cond_19

    const/16 v32, 0x1

    :goto_b
    move/from16 v0, v33

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    .line 3079
    :cond_d
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 3080
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 3081
    if-eqz v8, :cond_1a

    const/16 v32, 0x1

    :goto_c
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 3082
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 3085
    :cond_e
    if-eqz v31, :cond_10

    .line 3087
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 3089
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v32

    if-eqz v32, :cond_f

    .line 3090
    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3092
    :cond_f
    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 3095
    :cond_10
    const-string v32, "gsm.ignore-nitz"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3096
    .local v12, ignore:Ljava/lang/String;
    if-eqz v12, :cond_1b

    const-string/jumbo v32, "yes"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 3097
    const-string v32, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3174
    .end local v6           #c:Ljava/util/Calendar;
    .end local v8           #dst:I
    .end local v12           #ignore:Ljava/lang/String;
    .end local v14           #iso:Ljava/lang/String;
    .end local v19           #nitzSubs:[Ljava/lang/String;
    .end local v23           #sign:Z
    .end local v27           #tzOffset:I
    .end local v28           #tzOffsetSign:Z
    .end local v30           #year:I
    .end local v31           #zone:Ljava/util/TimeZone;
    :goto_d
    return-void

    .line 2951
    .restart local v6       #c:Ljava/util/Calendar;
    .restart local v19       #nitzSubs:[Ljava/lang/String;
    .restart local v28       #tzOffsetSign:Z
    .restart local v30       #year:I
    :cond_11
    const/16 v32, 0x0

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v30, v0

    .line 2952
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2955
    const/16 v32, 0x1

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    .line 2956
    .restart local v18       #month:I
    const/16 v32, 0x2

    move/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2958
    const/16 v32, 0x2

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2959
    .restart local v7       #date:I
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 2961
    const/16 v32, 0x3

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2962
    .restart local v10       #hour:I
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 2964
    const/16 v32, 0x4

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2965
    .restart local v17       #minute:I
    const/16 v32, 0xc

    move/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2967
    const/16 v32, 0x5

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2968
    .restart local v22       #second:I
    const/16 v32, 0xd

    move/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 3166
    .end local v6           #c:Ljava/util/Calendar;
    .end local v7           #date:I
    .end local v10           #hour:I
    .end local v17           #minute:I
    .end local v18           #month:I
    .end local v19           #nitzSubs:[Ljava/lang/String;
    .end local v22           #second:I
    .end local v28           #tzOffsetSign:Z
    .end local v30           #year:I
    :catch_0
    move-exception v9

    .line 3167
    .local v9, ex:Ljava/lang/RuntimeException;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ex="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3172
    .end local v9           #ex:Ljava/lang/RuntimeException;
    :goto_e
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_d

    .line 2970
    .restart local v6       #c:Ljava/util/Calendar;
    .restart local v19       #nitzSubs:[Ljava/lang/String;
    .restart local v28       #tzOffsetSign:Z
    .restart local v30       #year:I
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2982
    .restart local v23       #sign:Z
    .restart local v27       #tzOffset:I
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 2992
    .restart local v8       #dst:I
    :cond_14
    const/16 v32, -0x1

    goto/16 :goto_7

    .line 3038
    .restart local v29       #tzname:Ljava/lang/String;
    .restart local v31       #zone:Ljava/util/TimeZone;
    :cond_15
    :try_start_1
    const-string v32, "GSM"

    const-string v33, "[NITZ] get the TimeZone."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3061
    .end local v29           #tzname:Ljava/lang/String;
    .restart local v14       #iso:Ljava/lang/String;
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 3069
    :cond_17
    if-eqz v8, :cond_18

    const/16 v32, 0x1

    :goto_f
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    move-wide/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v31

    goto/16 :goto_a

    :cond_18
    const/16 v32, 0x0

    goto :goto_f

    .line 3074
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 3081
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_c

    .line 3102
    .restart local v12       #ignore:Ljava/lang/String;
    :cond_1b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3104
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 3105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    sub-long v15, v32, p2

    .line 3108
    .local v15, millisSinceNitzReceived:J
    const-wide/16 v32, 0x0

    cmp-long v32, v15, v32

    if-gez v32, :cond_1c

    .line 3111
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3164
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d

    .line 3118
    :cond_1c
    const-wide/32 v32, 0x7fffffff

    cmp-long v32, v15, v32

    if-lez v32, :cond_1d

    .line 3121
    :try_start_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-wide/32 v33, 0x5265c00

    div-long v33, v15, v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " days"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3164
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_d

    .line 3129
    :cond_1d
    const/16 v32, 0xe

    long-to-int v0, v15

    move/from16 v33, v0

    :try_start_6
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3132
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: Setting time of day to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " NITZ receive delay(ms): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " gained(ms): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v33, v33, v35

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " from "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 3140
    const-string v32, "GSM"

    const-string v33, "NITZ: after Setting time of day"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    .end local v15           #millisSinceNitzReceived:J
    :cond_1e
    const-string v32, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 3162
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3164
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_e

    :catchall_0
    move-exception v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v32
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method private showDeniedDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 3513
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    if-nez v1, :cond_0

    .line 3514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3516
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3517
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3518
    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3519
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 3523
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3524
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3525
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 3527
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private showRescanDialog()V
    .locals 4

    .prologue
    .line 3572
    const-string v2, "ManualSelectionReceiver"

    const-string/jumbo v3, "showRescanDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3575
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3577
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x10406b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3578
    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3580
    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3582
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3588
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 3589
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3596
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3597
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3598
    return-void
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3640
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    return-void
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 2802
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2803
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2805
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 2807
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2810
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "plmnValue"

    .prologue
    const v6, 0x10406d8

    const v5, 0x10406d7

    .line 3680
    move-object v1, p1

    .line 3681
    .local v1, mPlmn:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3683
    .local v2, mSim:Ljava/lang/String;
    const-string v3, "46000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_6

    .line 3685
    const-string v3, "gsm.network.type"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3688
    .local v0, mAct:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3689
    const-string v3, "46001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3690
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->is3GDataNetType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 3G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3750
    .end local v0           #mAct:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 3694
    .restart local v0       #mAct:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3698
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->is3GDataNetType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 3G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3702
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3707
    :cond_5
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ROAM] It is roaming state with CHINA Operators SIM card. Display registered plmn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3711
    .end local v0           #mAct:Ljava/lang/String;
    :cond_6
    const-string v3, "46692"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46601"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46688"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46697"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46693"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46699"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46689"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_d

    .line 3715
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3716
    const-string v3, "46692"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3717
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3719
    :cond_8
    const-string v3, "46601"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3720
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3722
    :cond_9
    const-string v3, "46688"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3723
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3725
    :cond_a
    const-string v3, "46689"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3726
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3728
    :cond_b
    const-string v3, "46697"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "46693"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "46699"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3729
    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3742
    :cond_d
    const-string v3, "45412"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "45413"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 3745
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3746
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private updateFakeRoamingNRP2G()V
    .locals 3

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_national_roaming_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 3279
    const-string v0, "KDW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFakeRoamingNRP2G, roamingMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 3281
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCard;->unregisterForReady(Landroid/os/Handler;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnO2HomeZoneInfo(Landroid/os/Handler;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 557
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 564
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3645
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " gprsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newGPRSState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedToRegForSimLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpnRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3677
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 567
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 2822
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 2818
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 352
    const-string v0, "REG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 361
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const-string v0, "AUTH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_1
    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_2
    const-string v0, "ESN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 582
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Received message "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] while being destroyed. Ignoring."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 586
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 947
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 609
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v22, v0

    const/16 v23, 0x10

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 612
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 615
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x111002f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 618
    .local v18, skipRestoringSelection:Z
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "skipRestoringSelection"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-nez v18, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 624
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 632
    .end local v18           #skipRestoringSelection:Z
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 637
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 644
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 648
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 649
    .local v5, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 655
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 657
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 658
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v19, v22

    check-cast v19, [Ljava/lang/String;

    .line 659
    .local v19, states:[Ljava/lang/String;
    const/4 v9, -0x1

    .line 660
    .local v9, lac:I
    const/4 v6, -0x1

    .line 661
    .local v6, cid:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 663
    const/16 v22, 0x1

    :try_start_0
    aget-object v22, v19, v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_4

    .line 664
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 666
    :cond_4
    const/16 v22, 0x2

    aget-object v22, v19, v22

    if-eqz v22, :cond_5

    const/16 v22, 0x2

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_5

    .line 667
    const/16 v22, 0x2

    aget-object v22, v19, v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 673
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 679
    .end local v6           #cid:I
    .end local v9           #lac:I
    .end local v19           #states:[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 669
    .restart local v6       #cid:I
    .restart local v9       #lac:I
    .restart local v19       #states:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 670
    .local v7, ex:Ljava/lang/NumberFormatException;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error parsing location: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 686
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #cid:I
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    .end local v9           #lac:I
    .end local v19           #states:[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 688
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 694
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 698
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 700
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    const/16 v23, 0x0

    aget-object v15, v22, v23

    check-cast v15, Ljava/lang/String;

    .line 701
    .local v15, nitzString:Ljava/lang/String;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 703
    .local v13, nitzReceiveTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 710
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v13           #nitzReceiveTime:J
    .end local v15           #nitzString:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 714
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    .line 716
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 723
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 727
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 729
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xf

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 735
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 737
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const/16 v22, 0x15

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 738
    .local v12, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 742
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #message:Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 743
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 744
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    invoke-static/range {v22 .. v22}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v22

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 746
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 751
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 753
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 754
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 755
    const-string v17, ""

    .line 756
    .local v17, resetProp:Ljava/lang/String;
    const-string/jumbo v22, "ril.dualmode.network-reset"

    const-string v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 795
    .end local v17           #resetProp:Ljava/lang/String;
    :goto_2
    const/16 v22, 0x14

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 796
    .restart local v12       #message:Landroid/os/Message;
    const/16 v20, 0x7

    .line 801
    .local v20, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 790
    .end local v12           #message:Landroid/os/Message;
    .end local v20           #toggledNetworkType:I
    :cond_7
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 805
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v22

    if-nez v22, :cond_8

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v10

    check-cast v10, Landroid/telephony/gsm/GsmCellLocation;

    .line 811
    .local v10, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v23, 0xc3bb

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v24, v22

    const/16 v25, 0x1

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v22

    :goto_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 813
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 815
    .end local v10           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 811
    .restart local v10       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_9
    const/16 v22, -0x1

    goto :goto_3

    .line 822
    .end local v10           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_10
    const-string v22, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 825
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 827
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 832
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    const-string v22, "GSM"

    const-string v23, "O2 Homezone info"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 835
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onO2HomeZoneInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 840
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    const-string v22, "GSM"

    const-string v23, "EVENT_LU_REJECT_CAUSE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 844
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dismissDeniedDialog()V

    .line 845
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 852
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 853
    .local v16, operatorNumeric:Ljava/lang/String;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[EVENT_CHECK_MULTI_TIME_ZONE] -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, NewMcc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "000"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "111"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "001"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "999"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 858
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Mcc is changed : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " --> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 860
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 863
    const/16 v21, 0x0

    .line 864
    .local v21, zoneId:Ljava/lang/String;
    const-string/jumbo v22, "ril.timezoneID"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 866
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ZONE ID : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz v21, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 868
    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 869
    .local v11, manualTimeZone:Ljava/util/TimeZone;
    if-nez v11, :cond_b

    .line 870
    const-string v22, "GSM"

    const-string v23, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v8, Landroid/content/Intent;

    const-string v22, "android.intent.action.MCC_SET_TIME"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v8, intent:Landroid/content/Intent;
    const/high16 v22, 0x2000

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 874
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 877
    .end local v8           #intent:Landroid/content/Intent;
    :cond_b
    const-string v22, "GSM"

    const-string v23, "TIMEZONE Update"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string/jumbo v22, "persist.sys.timezone"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 897
    .end local v11           #manualTimeZone:Ljava/util/TimeZone;
    .end local v21           #zoneId:Ljava/lang/String;
    :goto_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 881
    .restart local v21       #zoneId:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsalreadysendNITZ:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    if-nez v22, :cond_d

    .line 883
    const-string v22, "GSM"

    const-string v23, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v8, Landroid/content/Intent;

    const-string v22, "android.intent.action.MCC_SET_TIME"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .restart local v8       #intent:Landroid/content/Intent;
    const/high16 v22, 0x2000

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 886
    const-string v22, "MCC"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "putExtra[mcc] : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 891
    .end local v8           #intent:Landroid/content/Intent;
    :cond_d
    const-string v22, "GSM"

    const-string v23, "Do not send , already send Intent ACTION_NITZ_SET_TIME."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 895
    .end local v21           #zoneId:Ljava/lang/String;
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto :goto_4

    .line 903
    .end local v4           #NewMcc:Ljava/lang/String;
    .end local v16           #operatorNumeric:Ljava/lang/String;
    :sswitch_14
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 910
    :sswitch_15
    const-string v22, "GSM"

    const-string v23, "Rts indication Recived"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 912
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRtsIndication(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 918
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v22, "GSM"

    const-string v23, "[DUALMODE] Handle Message No Service Timer"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    sget v22, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->noserviceCount:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->noserviceCount:I

    .line 920
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSetNoserviceTimer:Z

    .line 922
    const-string v22, "GSM"

    const-string v23, "[DUALMODE] Timeout!, Cancel timer"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    .line 925
    const-string v22, "[DUALMODE] Alarm should be canceled."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 932
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 933
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 934
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[DUALMODE] Acquire wakelock! :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 936
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    .line 938
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSilentReset()V

    goto/16 :goto_0

    .line 929
    :cond_10
    const-string v22, "[DUALMODE] Already canceled."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 586
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_a
        0x11 -> :sswitch_1
        0x12 -> :sswitch_b
        0x13 -> :sswitch_e
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_f
        0x17 -> :sswitch_10
        0x27 -> :sswitch_11
        0x6e -> :sswitch_12
        0x6f -> :sswitch_15
        0x70 -> :sswitch_13
        0x73 -> :sswitch_16
        0xfa0 -> :sswitch_14
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 22
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1347
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1350
    const/4 v5, 0x0

    .line 1352
    .local v5, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1353
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 1356
    :cond_2
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-ne v5, v0, :cond_3

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1362
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1368
    :cond_4
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 1369
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1513
    .end local v5           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    add-int/lit8 v20, v20, -0x1

    aput v20, v18, v19

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-nez v18, :cond_0

    .line 1525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    :cond_6
    const/4 v14, 0x1

    .line 1531
    .local v14, roaming:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataConnectionTracker;->isDisconnected()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1534
    const/4 v14, 0x0

    .line 1538
    :cond_7
    const-string v18, "gsm.sim.operator.numeric"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1540
    .local v9, numeric:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1544
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1545
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KDW, mRoamingMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1548
    const-string v18, "Data Roaming mode is not \'disable\'."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1550
    const/4 v14, 0x0

    .line 1562
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1563
    const/4 v14, 0x1

    .line 1583
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1585
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1373
    .end local v9           #numeric:Ljava/lang/String;
    .end local v14           #roaming:Z
    :cond_a
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1375
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1376
    .local v16, states:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 1377
    .local v8, lac:I
    const/4 v3, -0x1

    .line 1378
    .local v3, cid:I
    const/4 v13, -0x1

    .line 1379
    .local v13, regState:I
    const/4 v12, -0x1

    .line 1380
    .local v12, reasonRegStateDenied:I
    const/4 v11, -0x1

    .line 1381
    .local v11, psc:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v18, :cond_d

    .line 1383
    const/16 v18, 0x0

    :try_start_1
    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1384
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 1385
    const/16 v18, 0x1

    aget-object v18, v16, v18

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_b

    .line 1386
    const/16 v18, 0x1

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 1388
    :cond_b
    const/16 v18, 0x2

    aget-object v18, v16, v18

    if-eqz v18, :cond_c

    const/16 v18, 0x2

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    .line 1389
    const/16 v18, 0x2

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1392
    :cond_c
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 1393
    const/16 v18, 0xe

    aget-object v18, v16, v18

    if-eqz v18, :cond_d

    const/16 v18, 0xe

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_d

    .line 1394
    const/16 v18, 0xe

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 1412
    :cond_d
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1440
    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v13, v0, :cond_e

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v13, v0, :cond_e

    const/16 v18, 0xd

    move/from16 v0, v18

    if-eq v13, v0, :cond_e

    const/16 v18, 0xe

    move/from16 v0, v18

    if-ne v13, v0, :cond_f

    .line 1441
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1447
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1509
    .end local v3           #cid:I
    .end local v8           #lac:I
    .end local v11           #psc:I
    .end local v12           #reasonRegStateDenied:I
    .end local v13           #regState:I
    .end local v16           #states:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1510
    .local v6, ex:Ljava/lang/RuntimeException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1407
    .end local v6           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v8       #lac:I
    .restart local v11       #psc:I
    .restart local v12       #reasonRegStateDenied:I
    .restart local v13       #regState:I
    .restart local v16       #states:[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1408
    .local v6, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error parsing RegistrationState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1443
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_5

    .line 1452
    .end local v3           #cid:I
    .end local v8           #lac:I
    .end local v11           #psc:I
    .end local v12           #reasonRegStateDenied:I
    .end local v13           #regState:I
    .end local v16           #states:[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1454
    .restart local v16       #states:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1455
    .local v17, type:I
    const/4 v13, -0x1

    .line 1456
    .restart local v13       #regState:I
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1457
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1458
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v18, :cond_12

    .line 1460
    const/16 v18, 0x0

    :try_start_4
    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1463
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_10

    const/16 v18, 0x3

    aget-object v18, v16, v18

    if-eqz v18, :cond_10

    .line 1464
    const/16 v18, 0x3

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1466
    :cond_10
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v13, v0, :cond_11

    .line 1467
    const/16 v18, 0x4

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1469
    :cond_11
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 1470
    const/16 v18, 0x5

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1476
    :cond_12
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1477
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1478
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    goto/16 :goto_1

    .line 1472
    :catch_2
    move-exception v6

    .line 1473
    .restart local v6       #ex:Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 1483
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .end local v13           #regState:I
    .end local v16           #states:[Ljava/lang/String;
    .end local v17           #type:I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1485
    .local v10, opNames:[Ljava/lang/String;
    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v20, 0x1

    aget-object v20, v10, v20

    const/16 v21, 0x2

    aget-object v21, v10, v21

    invoke-virtual/range {v18 .. v21}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1491
    .end local v10           #opNames:[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v0, v18

    check-cast v0, [I

    move-object v7, v0

    .line 1495
    .local v7, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    aget v18, v7, v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 1497
    const-string v18, ""

    const-string v19, "KOR"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v18

    if-nez v18, :cond_5

    .line 1499
    const-string/jumbo v18, "update manual selection mode to auto."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1501
    .local v15, sp:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1502
    .local v4, e:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v18, "network_selection_key"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1503
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1495
    .end local v4           #e:Landroid/content/SharedPreferences$Editor;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    :cond_13
    const/16 v18, 0x0

    goto :goto_7

    .line 1525
    .end local v7           #ints:[I
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1553
    .restart local v9       #numeric:Ljava/lang/String;
    .restart local v14       #roaming:Z
    :cond_15
    const-string v18, "Data Roaming mode is \'disable\'. Do not apply fake roaming."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1556
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1557
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1373
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1010
    return-void
.end method

.method protected hangupBeforeDeactivePDP()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1020
    :cond_0
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    .line 2830
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3631
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3636
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 11

    .prologue
    const/high16 v10, 0x1000

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 955
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_EnableCallBlock4TDF"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 956
    const-string/jumbo v5, "ril.block4TDF"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, tdfBlock:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TDF Flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 959
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 961
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 998
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #tdfBlock:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 966
    .restart local v4       #tdfBlock:Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/FactoryApp/cblkftdf"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 972
    :goto_1
    if-eqz v4, :cond_2

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 973
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .restart local v2       #i:Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 975
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 976
    const-string/jumbo v5, "ril.block4TDF"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v9, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 967
    .end local v2           #i:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 968
    .local v1, e:Ljava/io/IOException;
    const-string v4, "OFF"

    .line 969
    const-string v5, "GSM"

    const-string v6, "Cannot open file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 983
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #tdfBlock:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v6, :cond_4

    .line 985
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 993
    :cond_3
    :goto_2
    const-string/jumbo v5, "sys.deviceOffReq"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, shutdownFlag:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 995
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v9, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 986
    .end local v3           #shutdownFlag:Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 988
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 989
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V

    goto :goto_2
.end method

.method protected updateSpnDisplay()V
    .locals 23

    .prologue
    .line 1024
    const-string v2, "isValidPlmn"

    .line 1025
    .local v2, EXTRA_IS_VALID_PLMN:Ljava/lang/String;
    const/4 v7, 0x1

    .line 1026
    .local v7, isValidPlmn:Z
    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1027
    .local v14, salesCode:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1028
    .local v3, id:I
    const/4 v6, 0x0

    .line 1029
    .local v6, isShowCSL:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1053
    const/4 v12, 0x0

    .line 1055
    .local v12, plmn_withoutSIM:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1056
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040403

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1060
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateSpnDisplay: without SIM - plmn=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 1063
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v5, intent:Landroid/content/Intent;
    const/high16 v19, 0x2000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1065
    const-string/jumbo v19, "showSpn"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1066
    const-string/jumbo v19, "spn"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string/jumbo v19, "showPlmn"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1068
    const-string/jumbo v19, "plmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1071
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1337
    .end local v12           #plmn_withoutSIM:Ljava/lang/String;
    :goto_0
    return-void

    .line 1078
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/IccRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v13

    .line 1081
    .local v13, rule:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v17

    .line 1082
    .local v17, spn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    .line 1089
    .local v11, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1090
    const/4 v11, 0x0

    .line 1093
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 1095
    .local v18, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, imsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 1097
    .local v9, operatorMccMnc:Ljava/lang/String;
    const-string v19, "gsm.sim.operator.numeric"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1100
    .local v10, operatorSIM:Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string v19, "73008"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1101
    if-eqz v9, :cond_4

    const-string v19, "73002"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1104
    if-eqz v4, :cond_4

    .line 1105
    const-string/jumbo v11, "vtr"

    .line 1109
    :cond_4
    if-eqz v10, :cond_5

    const-string v19, "73007"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1110
    if-eqz v9, :cond_5

    const-string v19, "73002"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1113
    if-eqz v4, :cond_5

    .line 1114
    const-string v19, "7300701"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1116
    const-string v11, "Gtd_Telsur"

    .line 1242
    .end local v4           #imsi:Ljava/lang/String;
    .end local v9           #operatorMccMnc:Ljava/lang/String;
    .end local v10           #operatorSIM:Ljava/lang/String;
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1243
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040403

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1245
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateSpnDisplay: emergency only and radio is on plmn=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1249
    :cond_6
    const-string v19, "CHN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "TGY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "BRI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CTC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CWT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "FET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "TWM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CHZ"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CHU"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1251
    :cond_7
    const-string v19, "gsm.sim.operator.numeric"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1252
    .local v8, mOperatorSim:Ljava/lang/String;
    const/4 v13, 0x2

    .line 1253
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1254
    if-eqz v8, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 1255
    const-string v19, "45400"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "45402"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "45410"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "45418"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_8
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1257
    const/4 v13, 0x1

    .line 1263
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateSpnDisplay : updateChinaSpnDisplay() rule : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1267
    .end local v8           #mOperatorSim:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1334
    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1335
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1336
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    goto/16 :goto_0

    .line 1118
    .restart local v4       #imsi:Ljava/lang/String;
    .restart local v9       #operatorMccMnc:Ljava/lang/String;
    .restart local v10       #operatorSIM:Ljava/lang/String;
    .restart local v18       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    const-string v19, "7300702"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1120
    const-string v11, "Virgin"

    goto/16 :goto_1

    .line 1122
    :cond_b
    const-string v19, "7300703"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1124
    const-string v11, "GTEL Netline"

    goto/16 :goto_1

    .line 1260
    .end local v4           #imsi:Ljava/lang/String;
    .end local v9           #operatorMccMnc:Ljava/lang/String;
    .end local v10           #operatorSIM:Ljava/lang/String;
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v8       #mOperatorSim:Ljava/lang/String;
    :cond_c
    const/4 v13, 0x2

    .line 1261
    const/4 v6, 0x1

    goto :goto_2

    .line 1271
    .end local v8           #mOperatorSim:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    and-int/lit8 v19, v13, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v16, 0x1

    .line 1274
    .local v16, showSpn:Z
    :goto_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    :cond_e
    const/4 v15, 0x1

    .line 1286
    .local v15, showPlmn:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-eqz v19, :cond_13

    .line 1287
    const/4 v15, 0x1

    .line 1288
    const/16 v16, 0x0

    .line 1290
    const/4 v13, 0x0

    .line 1291
    const/16 v17, 0x0

    .line 1293
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_f

    .line 1294
    const-string v19, "GSM"

    const-string v20, "if(plmn != null && plmn.length() == 0)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v11, 0x0

    .line 1310
    :cond_f
    :goto_6
    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1311
    const-string v19, "GSM"

    const-string/jumbo v20, "spn string == plmn string, showing only plmn-pnn"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 v15, 0x1

    .line 1313
    const/16 v16, 0x0

    .line 1317
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v11, v20, v21

    const/16 v21, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v17, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1321
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v19, 0x2000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1323
    const-string/jumbo v19, "showSpn"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    const-string/jumbo v19, "spn"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string/jumbo v19, "showPlmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1326
    const-string/jumbo v19, "plmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_3

    .line 1271
    .end local v5           #intent:Landroid/content/Intent;
    .end local v15           #showPlmn:Z
    .end local v16           #showSpn:Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1274
    .restart local v16       #showSpn:Z
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1300
    .restart local v15       #showPlmn:Z
    :cond_13
    const-string v19, "CSL"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    if-eqz v15, :cond_f

    if-nez v16, :cond_f

    if-nez v6, :cond_f

    .line 1301
    const/4 v15, 0x1

    .line 1302
    const/16 v16, 0x0

    .line 1304
    const/4 v13, 0x0

    .line 1305
    const/16 v17, 0x0

    .line 1306
    const/4 v11, 0x0

    goto/16 :goto_6
.end method
