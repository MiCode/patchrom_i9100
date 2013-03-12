.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field private static final DELIMITER:B = 0xbt

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0xc

.field protected static final EVENT_REASSEMBLE_TIMEOUT:I = 0x17

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_STOP_REASSEMBLE:I = 0x18

.field static final EVENT_STOP_SENDING:I = 0x7

.field private static final LAST_SENT_MSG_EXTRA:Ljava/lang/String; = "LastSentMsg"

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MAX_SEND_RETRIES_SPR:I = 0x1

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final REASSEMBLE_TIMEOUT:I = 0x493e0

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final SMS_GARBAGE_COLLECTION_TIME:J = 0x927c0L

.field public static Sim_Smsc:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "SMS"

.field protected static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static gcf_flag:Z = false

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"

.field protected static final mRawUri:Landroid/net/Uri;

.field private static sConcatenatedRef:I

.field private static sReassembleRef:I


# instance fields
.field protected final EVENT_GET_SMSC_DONE:I

.field protected final EVENT_SMS_DEVICE_READY:I

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationID:Ljava/lang/String;

.field private mApplicationName:Ljava/lang/String;

.field private mApplicationSpecificData:[B

.field protected final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mCommand:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected mIsDisposed:Z

.field private mPendingTrackerCount:I

.field protected final mPhone:Lcom/android/internal/telephony/Phone;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUI:Ljava/lang/String;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 143
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    const-string/jumbo v1, "reference_number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    const-string v1, "destination_port"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    .line 188
    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    .line 200
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 224
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 228
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sReassembleRef:I

    .line 258
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    .line 260
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 179
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->EVENT_SMS_DEVICE_READY:I

    .line 180
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->EVENT_GET_SMSC_DONE:I

    .line 246
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsDisposed:Z

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2469
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 304
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 307
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 308
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 309
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 316
    const-string/jumbo v0, "telephony.sms.receive"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 318
    const-string/jumbo v0, "telephony.sms.send"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 320
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsReceiveDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsSendDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    :cond_0
    move v0, v2

    .line 316
    goto :goto_0

    :cond_1
    move v1, v2

    .line 318
    goto :goto_1
.end method

.method private broadcastCbSettingsAvailable()V
    .locals 3

    .prologue
    .line 1112
    const-string v1, "SMS"

    const-string v2, "[CB] broadcastCbSettingsAvailable method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1115
    return-void
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 581
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 582
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 583
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .parameter "tracker"

    .prologue
    const/4 v2, 0x5

    .line 2198
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v2, :cond_2

    .line 2201
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 2202
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 2209
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 2211
    :cond_1
    const/4 v1, 0x1

    .line 2214
    :goto_1
    return v1

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMS"

    const-string v2, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2213
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 2214
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "appPackage"

    .prologue
    .line 2223
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2225
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2226
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 2229
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :goto_0
    return-object p1

    .line 2227
    .restart local p1
    :catch_0
    move-exception v1

    .line 2228
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 275
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static getNextReassembleRef()I
    .locals 1

    .prologue
    .line 279
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sReassembleRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sReassembleRef:I

    .line 280
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sReassembleRef:I

    return v0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 2392
    if-nez p1, :cond_0

    .line 2394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2395
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2396
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2397
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2399
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2400
    return-void
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .parameter "tracker"

    .prologue
    .line 2349
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2351
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2352
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2354
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2355
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2356
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2359
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 2360
    .local v10, ss:I
    if-eqz v10, :cond_1

    .line 2361
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 2362
    const/4 v9, 0x0

    .line 2363
    .local v9, sentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 2364
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2366
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 2361
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6           #count:I
    .end local v7           #i:I
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 2371
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2372
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method public abstract checkImeiTrackerMessage(Ljava/lang/String;)Z
.end method

.method public abstract clearDuplicatedCbMessages()V
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 597
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 601
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"
    .parameter "resultReceiver"

    .prologue
    const/4 v6, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 629
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 8
    .parameter "intent"
    .parameter "permission"
    .parameter "isVailedSUPLHeader"

    .prologue
    const/4 v6, 0x0

    .line 607
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 609
    if-eqz p3, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 612
    :cond_0
    return-void
.end method

.method protected dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .parameter "componentName"
    .parameter "appdirectedSMS"

    .prologue
    .line 1406
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAppDirectedSMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1410
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1411
    const-string/jumbo v1, "parameters"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1412
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1413
    return-void
.end method

.method protected dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "componentName"
    .parameter "appdirectedSMS"
    .parameter "originaddress"

    .prologue
    .line 1424
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAppDirectedSMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1428
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1429
    const-string/jumbo v1, "parameters"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    const-string/jumbo v1, "originator"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1432
    return-void
.end method

.method protected dispatchAppDirectedSMS(Ljava/lang/String;)V
    .locals 4
    .parameter "appdirectedSMS"

    .prologue
    .line 1416
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAppDirectedSMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "parameters"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method protected dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 2499
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2501
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2502
    const-string v1, "SMS"

    const-string v2, "Dispatching emergency SMS CB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2510
    :goto_0
    return-void

    .line 2505
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2506
    .restart local v0       #intent:Landroid/content/Intent;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2507
    const-string v1, "SMS"

    const-string v2, "Dispatching SMS CB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchKTToAppManagerPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 1531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1533
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchPdusToKTAppManager PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PORT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1535
    const-string/jumbo v1, "port_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method protected dispatchKTToLbsServicePdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 1540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKTToLbsServicePdus PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PORT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1544
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1546
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method protected dispatchLGTFOTAPdus([[B)V
    .locals 4
    .parameter "pdus"

    .prologue
    .line 1554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PUSH_CONFIRM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disptchLGTFOTAPdus PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1559
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1560
    return-void
.end method

.method protected dispatchLGTMsgAppPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "teleService"

    .prologue
    .line 1780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1781
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1782
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1783
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1784
    return-void
.end method

.method protected dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 3
    .parameter "smsb"
    .parameter "teleService"

    .prologue
    .line 1578
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 1579
    .local v0, pdus:[[B
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1581
    sparse-switch p2, :sswitch_data_0

    .line 1599
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchLGTUnknownTIDPdus(Ljava/lang/String;I)V

    .line 1602
    :goto_0
    return-void

    .line 1583
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchLGTFOTAPdus([[B)V

    goto :goto_0

    .line 1596
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_0

    .line 1581
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1003 -> :sswitch_1
        0x7f40 -> :sswitch_1
        0xc00a -> :sswitch_1
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_1
        0xc263 -> :sswitch_1
        0xc265 -> :sswitch_1
        0xc267 -> :sswitch_1
        0xc277 -> :sswitch_0
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected dispatchLGTUnknownTIDPdus(Ljava/lang/String;I)V
    .locals 4
    .parameter "body"
    .parameter "teleService"

    .prologue
    .line 1563
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.lgt.action.APM_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disptchLGTUnknownTIDPdus PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1567
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1570
    return-void
.end method

.method protected dispatchLGUMMSNotitication([BILjava/lang/String;)I
    .locals 29
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 1608
    const/16 v17, 0x0

    .line 1610
    .local v17, index:I
    const/16 v25, 0x0

    .line 1611
    .local v25, sourcePort:I
    const/4 v13, 0x0

    .line 1613
    .local v13, destinationPort:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .local v18, index:I
    aget-byte v19, p1, v17

    .line 1614
    .local v19, msgType:I
    if-eqz v19, :cond_1

    .line 1615
    const-string v3, "SMS"

    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v3, 0x1

    move/from16 v17, v18

    .line 1731
    .end local v18           #index:I
    .restart local v17       #index:I
    :cond_0
    :goto_0
    return v3

    .line 1618
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_1
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v26, p1, v18

    .line 1619
    .local v26, totalSegments:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v23, p1, v17

    .line 1622
    .local v23, segment:I
    if-nez v23, :cond_e

    .line 1624
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v25, v3, 0x8

    .line 1625
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v17

    and-int/lit16 v3, v3, 0xff

    or-int v25, v25, v3

    .line 1626
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v13, v3, 0x8

    .line 1627
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v17

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v13, v3

    move/from16 v17, v18

    .line 1631
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_1
    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reference_number ="

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v28, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1633
    const-string v3, " AND address = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v7, v3

    .line 1636
    .local v7, whereArgs:[Ljava/lang/String;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dst-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", segment# = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/16 v22, 0x0

    check-cast v22, [[B

    .line 1641
    .local v22, pdus:[[B
    const/4 v9, 0x0

    .line 1643
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1644
    const-string/jumbo v3, "pdu"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1645
    .local v21, pduColumn:I
    const-string/jumbo v3, "sequence"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1646
    .local v24, sequenceColumn:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1647
    .local v10, cursorCount:I
    const/4 v11, 0x0

    .line 1648
    .local v11, cursorSequence:I
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "segment count in db!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    .line 1650
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1651
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v11, v3

    .line 1652
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "segment in db!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    .line 1654
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received duplicated segment!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    const/4 v3, 0x1

    .line 1704
    if-eqz v9, :cond_0

    .end local v10           #cursorCount:I
    .end local v11           #cursorSequence:I
    .end local v16           #i:I
    .end local v21           #pduColumn:I
    .end local v24           #sequenceColumn:I
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1649
    .restart local v10       #cursorCount:I
    .restart local v11       #cursorSequence:I
    .restart local v16       #i:I
    .restart local v21       #pduColumn:I
    .restart local v24       #sequenceColumn:I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1658
    :cond_3
    add-int/lit8 v3, v26, -0x1

    if-eq v10, v3, :cond_4

    .line 1660
    :try_start_1
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1661
    .local v27, values:Landroid/content/ContentValues;
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1662
    const-string/jumbo v3, "pdu"

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const-string v3, "address"

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const-string/jumbo v3, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1665
    const-string v3, "count"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1666
    const-string/jumbo v3, "sequence"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    const-string v3, "destination_port"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1671
    const/4 v3, 0x1

    .line 1704
    if-eqz v9, :cond_0

    goto :goto_3

    .line 1674
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_4
    move/from16 v0, v26

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 1675
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1676
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v10, :cond_6

    .line 1677
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v11, v3

    .line 1679
    if-nez v11, :cond_5

    .line 1680
    const-string v3, "destination_port"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1681
    .local v14, destinationPortColumn:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v13, v3

    .line 1683
    .end local v14           #destinationPortColumn:I
    :cond_5
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v22, v11

    .line 1685
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1676
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1689
    :cond_6
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v0, v10, :cond_9

    .line 1690
    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 1691
    aget-object v3, v22, v16

    if-eqz v3, :cond_7

    aget-object v3, v22, v16

    array-length v3, v3

    if-nez v3, :cond_8

    .line 1692
    :cond_7
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received duplicated segment!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v3, 0x1

    .line 1704
    if-eqz v9, :cond_0

    goto/16 :goto_3

    .line 1689
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1699
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1704
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1708
    :cond_a
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1709
    .local v20, output:Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 1711
    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1713
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v17

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1709
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1700
    .end local v10           #cursorCount:I
    .end local v11           #cursorSequence:I
    .end local v16           #i:I
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    .end local v21           #pduColumn:I
    .end local v24           #sequenceColumn:I
    :catch_0
    move-exception v15

    .line 1701
    .local v15, e:Landroid/database/SQLException;
    :try_start_2
    const-string v3, "SMS"

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1702
    const/4 v3, 0x2

    .line 1704
    if-eqz v9, :cond_0

    goto/16 :goto_3

    .end local v15           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3

    .line 1715
    .restart local v10       #cursorCount:I
    .restart local v11       #cursorSequence:I
    .restart local v16       #i:I
    .restart local v20       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #pduColumn:I
    .restart local v24       #sequenceColumn:I
    :cond_c
    aget-object v3, v22, v16

    const/4 v4, 0x0

    aget-object v5, v22, v16

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7

    .line 1719
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 1721
    .local v12, datagram:[B
    packed-switch v13, :pswitch_data_0

    .line 1727
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v22, v0

    .line 1728
    const/4 v3, 0x0

    aput-object v12, v22, v3

    .line 1730
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1731
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1724
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_0

    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #cursorCount:I
    .end local v11           #cursorSequence:I
    .end local v12           #datagram:[B
    .end local v16           #i:I
    .end local v17           #index:I
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    .end local v21           #pduColumn:I
    .end local v22           #pdus:[[B
    .end local v24           #sequenceColumn:I
    .end local v28           #where:Ljava/lang/StringBuilder;
    .restart local v18       #index:I
    :cond_e
    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_1

    .line 1721
    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 17
    .parameter "sms"

    .prologue
    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 845
    .local v16, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    const-string v1, "SMS"

    const-string v2, "Discard duplicated message."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 848
    const/4 v1, -0x1

    .line 985
    :goto_0
    return v1

    .line 852
    :cond_0
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_7

    .line 854
    :cond_1
    const/4 v1, 0x1

    new-array v13, v1, [[B

    .line 855
    .local v13, pdus:[[B
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v13, v1

    .line 857
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_3

    .line 858
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v2, 0xb84

    if-ne v1, v2, :cond_2

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushAddress(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v1

    goto :goto_0

    .line 911
    :cond_2
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 947
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 930
    :cond_3
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 931
    .local v15, sales_code:Ljava/lang/String;
    if-eqz v15, :cond_6

    const-string v1, "INU"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "INS"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 932
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->checkImeiTrackerMessage(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 933
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v12, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 936
    const/16 v1, 0x20

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 940
    .end local v12           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_1

    .line 944
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_1

    .line 950
    .end local v13           #pdus:[[B
    .end local v15           #sales_code:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 951
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 985
    .local v14, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    if-eqz v14, :cond_8

    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    const/4 v9, -0x1

    goto :goto_2
.end method

.method protected dispatchPatternLockMessagePdus([[B)Z
    .locals 34
    .parameter "pdus"

    .prologue
    .line 994
    const/4 v4, 0x0

    .line 996
    .local v4, bHandled:Z
    :try_start_0
    const-string v31, "SMS"

    const-string v32, "dispatchPatternLockMessagePdus()"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    move-object/from16 v19, v0

    .line 998
    .local v19, msgs:[Landroid/telephony/SmsMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .local v6, body:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_2

    .line 1000
    const/16 v31, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 1001
    aget-object v31, p1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v31

    aput-object v31, v19, v11

    .line 1005
    :goto_1
    aget-object v31, v19, v11

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    aget-object v31, p1, v11

    invoke-static/range {v31 .. v31}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v31

    aput-object v31, v19, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1093
    .end local v6           #body:Ljava/lang/StringBuilder;
    .end local v11           #i:I
    .end local v19           #msgs:[Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v10

    .line 1094
    .local v10, e:Ljava/lang/Exception;
    const-string v31, "SMS"

    const-string v32, "Can\'t send intent ACTION_LOCKPATTERN_CLEAR "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v4

    .line 1008
    .restart local v6       #body:Ljava/lang/StringBuilder;
    .restart local v11       #i:I
    .restart local v19       #msgs:[Landroid/telephony/SmsMessage;
    :cond_2
    const/16 v31, 0x0

    :try_start_1
    aget-object v31, v19, v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v22

    .line 1009
    .local v22, sendAddr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    .line 1010
    .local v26, szEnOutBuf:Ljava/lang/String;
    const/16 v28, 0x0

    .line 1011
    .local v28, szIndexMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1014
    .local v5, bLockPatternMsg:Z
    :try_start_2
    const-string v31, "BBEFBCBAB8F0B9D9C0CFB4E5C4C420BEC8B3BB20B8DEBDC3C1F6C0D4B4CFB4D92E203A20"

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v24

    .line 1015
    .local v24, str:[B
    new-instance v29, Ljava/lang/String;

    const-string v31, "EUC_KR"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1016
    .end local v28           #szIndexMsg:Ljava/lang/String;
    .local v29, szIndexMsg:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    move-object/from16 v28, v29

    .line 1021
    .end local v24           #str:[B
    .end local v29           #szIndexMsg:Ljava/lang/String;
    .restart local v28       #szIndexMsg:Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_1

    :try_start_4
    const-string v31, "15883366"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    if-eqz v5, :cond_1

    .line 1022
    const/4 v4, 0x1

    .line 1024
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v13

    .line 1025
    .local v13, len_szIndexMsg:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1026
    .local v7, data:[B
    new-instance v27, Ljava/lang/String;

    const-string v31, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1028
    .local v27, szEnOutBufUTF8:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/mosecurity/SecMoSecurity;->SSMOBILE_Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1030
    .local v25, szDeOutBuf:Ljava/lang/String;
    if-eqz v25, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v31

    if-gtz v31, :cond_4

    :cond_3
    new-instance v31, Ljava/lang/Exception;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Exception;-><init>()V

    throw v31

    .line 1017
    .end local v7           #data:[B
    .end local v13           #len_szIndexMsg:I
    .end local v25           #szDeOutBuf:Ljava/lang/String;
    .end local v27           #szEnOutBufUTF8:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1018
    .restart local v10       #e:Ljava/lang/Exception;
    :goto_4
    const-string v31, "SMS"

    const-string v32, "dispatchSecUnlockScreenPdus EUC_KR converting error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1032
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #data:[B
    .restart local v13       #len_szIndexMsg:I
    .restart local v25       #szDeOutBuf:Ljava/lang/String;
    .restart local v27       #szEnOutBufUTF8:Ljava/lang/String;
    :cond_4
    const-string v31, "\\|"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1040
    .local v23, splitBuf:[Ljava/lang/String;
    new-instance v14, Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v14, mCalendar:Landroid/text/format/Time;
    const-wide/16 v15, 0x0

    .line 1042
    .local v15, millismCalendar:J
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 1043
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    .line 1046
    new-instance v30, Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v30, tsDeOutBuf:Landroid/text/format/Time;
    const-wide/16 v17, 0x0

    .line 1048
    .local v17, millismTsDeOutBuf:J
    const-wide/16 v8, 0x0

    .line 1050
    .local v8, diffTime:J
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x0

    const/16 v33, 0x4

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 1051
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x4

    const/16 v33, 0x6

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1052
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x6

    const/16 v33, 0x8

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1053
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x8

    const/16 v33, 0xa

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1054
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0xa

    const/16 v33, 0xc

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1055
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0xc

    const/16 v33, 0xe

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1057
    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    .line 1060
    sub-long v8, v15, v17

    .line 1062
    const-string v31, "SMS"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "PatternLock   result:   millismCalendar: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " millismTsDeOutBuf: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const-wide/16 v31, 0x0

    cmp-long v31, v8, v31

    if-gez v31, :cond_5

    neg-long v8, v8

    .line 1066
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v20

    .line 1069
    .local v20, msisdnNumber:Ljava/lang/String;
    if-nez v20, :cond_6

    .line 1070
    const-string v31, "SMS"

    const-string/jumbo v32, "missing MSISDN number."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v31, Ljava/lang/Exception;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Exception;-><init>()V

    throw v31

    .line 1074
    :cond_6
    const-string v31, "+82"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 1075
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "0"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1080
    .local v21, myNumber:Ljava/lang/String;
    :goto_5
    const-string v31, "SMS"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "msisdnNumber: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " myNumber: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " splitBuf[1]: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v23, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-wide/32 v31, 0x493e0

    cmp-long v31, v8, v31

    if-gez v31, :cond_8

    const/16 v31, 0x1

    aget-object v31, v23, v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1084
    const-string v3, "com.sec.android.LockPattern.CLEAR"

    .line 1085
    .local v3, ACTION_LOCKPATTERN_CLEAR:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v31, "com.sec.android.LockPattern.CLEAR"

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v12, intent:Landroid/content/Intent;
    const/16 v31, 0x20

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1088
    const-string v31, "SMS"

    const-string/jumbo v32, "send intent ACTION_LOCKPATTERN_CLEAR "

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1077
    .end local v3           #ACTION_LOCKPATTERN_CLEAR:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v21           #myNumber:Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v20

    .restart local v21       #myNumber:Ljava/lang/String;
    goto :goto_5

    .line 1090
    :cond_8
    new-instance v31, Ljava/lang/Exception;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Exception;-><init>()V

    throw v31
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1017
    .end local v7           #data:[B
    .end local v8           #diffTime:J
    .end local v13           #len_szIndexMsg:I
    .end local v14           #mCalendar:Landroid/text/format/Time;
    .end local v15           #millismCalendar:J
    .end local v17           #millismTsDeOutBuf:J
    .end local v20           #msisdnNumber:Ljava/lang/String;
    .end local v21           #myNumber:Ljava/lang/String;
    .end local v23           #splitBuf:[Ljava/lang/String;
    .end local v25           #szDeOutBuf:Ljava/lang/String;
    .end local v27           #szEnOutBufUTF8:Ljava/lang/String;
    .end local v28           #szIndexMsg:Ljava/lang/String;
    .end local v30           #tsDeOutBuf:Landroid/text/format/Time;
    .restart local v24       #str:[B
    .restart local v29       #szIndexMsg:Ljava/lang/String;
    :catch_2
    move-exception v10

    move-object/from16 v28, v29

    .end local v29           #szIndexMsg:Ljava/lang/String;
    .restart local v28       #szIndexMsg:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    .line 1387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1389
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method protected dispatchPdus([[BZ)V
    .locals 2
    .parameter "pdus"
    .parameter "reassembleTimeout"

    .prologue
    .line 1394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1396
    const-string/jumbo v1, "reassembleTimeout"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1397
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1442
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1443
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1444
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1446
    return-void
.end method

.method protected dispatchSKTAndroidCommonSMSPushPdus([[B)Z
    .locals 11
    .parameter "pdus"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xb

    .line 1473
    array-length v7, p1

    new-array v5, v7, [Landroid/telephony/SmsMessage;

    .line 1474
    .local v5, msgs:[Landroid/telephony/SmsMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1475
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 1476
    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 1477
    aget-object v7, p1, v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v8

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v5, v4

    .line 1481
    :goto_1
    aget-object v7, v5, v4

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1479
    :cond_0
    aget-object v7, p1, v4

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v5, v4

    goto :goto_1

    .line 1484
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, SKTCommonPushData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1487
    .local v6, startIndex:I
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1488
    .local v3, dlmtIndex:I
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUI:Ljava/lang/String;

    .line 1490
    add-int/lit8 v6, v3, 0x1

    .line 1491
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1492
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplicationName:Ljava/lang/String;

    .line 1494
    add-int/lit8 v6, v3, 0x1

    .line 1495
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1496
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCommand:Ljava/lang/String;

    .line 1498
    add-int/lit8 v6, v3, 0x1

    .line 1499
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1500
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplicationID:Ljava/lang/String;

    .line 1502
    add-int/lit8 v6, v3, 0x1

    .line 1503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplicationSpecificData:[B

    .line 1505
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchSKTAndroidCommonSMSPushPdus  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.skt.push.SMS_PUSH"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v2, commonPushIntent:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const-string v7, "aid"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const-string v7, "AID"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string/jumbo v7, "msg_body"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    const-string v7, "SMSPushSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IN : [ Send Intent(action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to APP(Broadcast)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const-string v7, "SMSPushSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@#   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to APP(Broadcast)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1521
    const/4 v7, 0x0

    invoke-virtual {p0, v10, v10, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1523
    return v10
.end method

.method protected dispatchSKTFOTAPortAddressedPdus([B)V
    .locals 5
    .parameter "rawPdu"

    .prologue
    const/4 v4, 0x1

    .line 1451
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSKTFOTAPortAddressedPdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v0, intentWapPush:Landroid/content/Intent;
    const-string v1, "SMS"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string v1, "DMAGENT"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1457
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1461
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1462
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1464
    return-void
.end method

.method protected abstract dispatchSmsServiceCenter(Ljava/lang/String;)V
.end method

.method public abstract dispose()V
.end method

.method protected disptchLGTTeleservicePdus(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 3
    .parameter "smsb"
    .parameter "teleService"

    .prologue
    .line 1740
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 1741
    .local v0, pdus:[[B
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1743
    sparse-switch p2, :sswitch_data_0

    .line 1774
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchLGTUnknownTIDPdus(Ljava/lang/String;I)V

    .line 1777
    :goto_0
    return-void

    .line 1745
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchLGTFOTAPdus([[B)V

    goto :goto_0

    .line 1771
    :sswitch_1
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchLGTMsgAppPdus([[BI)V

    goto :goto_0

    .line 1743
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_1
        0x1005 -> :sswitch_1
        0x7f40 -> :sswitch_1
        0xc001 -> :sswitch_1
        0xc00a -> :sswitch_1
        0xc00b -> :sswitch_1
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_1
        0xc015 -> :sswitch_1
        0xc02a -> :sswitch_1
        0xc250 -> :sswitch_1
        0xc258 -> :sswitch_1
        0xc263 -> :sswitch_1
        0xc264 -> :sswitch_1
        0xc265 -> :sswitch_1
        0xc266 -> :sswitch_1
        0xc267 -> :sswitch_1
        0xc268 -> :sswitch_1
        0xc277 -> :sswitch_0
        0xf6fe -> :sswitch_1
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method protected abstract getEncoding()I
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getSmscNumber([BZ)Ljava/lang/String;
    .locals 14
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 2273
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/SMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2274
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 2278
    .local v2, extra:I
    const/4 v8, 0x0

    .line 2280
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 2282
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_0

    .line 2283
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 2327
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2286
    .end local v7           #smsc:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_1

    .line 2287
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2288
    const/4 v4, 0x1

    .line 2290
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2292
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 2293
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    add-int/lit8 v12, v12, -0x2

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2295
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_5

    .line 2296
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 2295
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2299
    :cond_3
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 2300
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 2301
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_4

    .line 2302
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2304
    :cond_4
    const/16 v11, 0xa

    if-ge v3, v11, :cond_2

    .line 2305
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2310
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2312
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v8, v11, 0x2

    .line 2314
    if-eqz v4, :cond_7

    .line 2315
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2316
    .restart local v6       #smsc:Ljava/lang/String;
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :goto_3
    if-eqz p2, :cond_6

    .line 2322
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2325
    :cond_6
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2327
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto/16 :goto_0

    .line 2318
    .end local v7           #smsc:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 369
    const-string v18, "class2"

    .line 370
    .local v18, smsc:Ljava/lang/String;
    const/4 v13, 0x0

    .line 378
    .local v13, pdu:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 381
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->broadcastCbSettingsAvailable()V

    goto :goto_0

    .line 388
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 390
    .local v6, ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 392
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v6           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isDeviceEncryptionOngoing()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 403
    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 409
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 421
    .restart local v6       #ar:Landroid/os/AsyncResult;
    const-string/jumbo v21, "ril.sms.gcf-mode"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, GcfMode:Ljava/lang/String;
    const-string v21, "On"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 424
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    .line 429
    :goto_1
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 430
    const-string v21, "SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception processing incoming SMS. Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 426
    :cond_2
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    goto :goto_1

    .line 434
    :cond_3
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/SmsMessage;

    .line 462
    .local v16, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v14

    .line 463
    .local v14, result:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v14, v0, :cond_7

    .line 465
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v14, v0, :cond_4

    .line 466
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 510
    .end local v14           #result:I
    :catch_0
    move-exception v9

    .line 511
    .local v9, ex:Ljava/lang/RuntimeException;
    const-string v21, "SMS"

    const-string v22, "Exception dispatching message"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 469
    .end local v9           #ex:Ljava/lang/RuntimeException;
    .restart local v14       #result:I
    :cond_4
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v14, v0, :cond_5

    .line 470
    const/16 v21, 0x17

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 471
    .local v15, segMsg:Landroid/os/Message;
    const-wide/32 v21, 0x493e0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    .end local v15           #segMsg:Landroid/os/Message;
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_6

    const/4 v10, 0x1

    .line 476
    .local v10, handled:Z
    :goto_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v14, v1}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 475
    .end local v10           #handled:Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 478
    :cond_7
    const/4 v12, 0x0

    .line 479
    .local v12, isWapPush:Z
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    .line 481
    .local v17, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    const/16 v21, 0xb84

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 482
    const/4 v12, 0x1

    .line 485
    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 486
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 502
    :cond_9
    :goto_3
    if-nez v12, :cond_0

    .line 503
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v8

    .line 504
    .local v8, edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 505
    invoke-virtual {v8}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    goto/16 :goto_0

    .line 487
    .end local v8           #edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_a
    if-eqz v12, :cond_9

    .line 489
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v20, wapSms:Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v7

    .line 491
    .local v7, array:[B
    if-eqz v7, :cond_9

    .line 492
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    .line 493
    aget-byte v21, v7, v11

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 495
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 496
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 519
    .end local v5           #GcfMode:Ljava/lang/String;
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v7           #array:[B
    .end local v11           #i:I
    .end local v12           #isWapPush:Z
    .end local v14           #result:I
    .end local v16           #sms:Landroid/telephony/SmsMessage;
    .end local v17           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v20           #wapSms:Ljava/lang/StringBuilder;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 523
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 527
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v21, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 532
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 533
    .local v19, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 538
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 536
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_5

    .line 544
    .end local v19           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 545
    .restart local v19       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 547
    :try_start_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 552
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 555
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 548
    :catch_1
    move-exception v9

    .line 549
    .local v9, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v21, "SMS"

    const-string v22, "failed to send RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 560
    .end local v9           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v19           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_9
    const-string v21, "SMS"

    const-string v22, "EVENT_REASSEMBLE_TIMEOUT is called"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 562
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/SmsMessage;

    .line 563
    .restart local v16       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReassembleTimeout(Landroid/telephony/SmsMessage;)V

    goto/16 :goto_0

    .line 567
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v16           #sms:Landroid/telephony/SmsMessage;
    :pswitch_a
    const-string v21, "SMS"

    const-string v22, "EVENT_STOP_REASSEMBLE is called"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v21, 0x17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 573
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleRadioStateChanged()V

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 3
    .parameter "ss"
    .parameter "sentIntent"

    .prologue
    .line 768
    if-eqz p2, :cond_2

    .line 770
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 772
    .local v0, fillIn:Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 773
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 776
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-gtz v1, :cond_1

    .line 777
    const-string v1, "LastSentMsg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 787
    .end local v0           #fillIn:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 783
    .restart local v0       #fillIn:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    .end local v0           #fillIn:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected handleRadioStateChanged()V
    .locals 3

    .prologue
    .line 1119
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMSDispatcher] handleRadioStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->clearDuplicatedCbMessages()V

    goto :goto_0
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 2238
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2259
    :goto_0
    return-void

    .line 2242
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppPackage:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2243
    .local v0, appLabel:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2244
    .local v4, r:Landroid/content/res/Resources;
    const v5, 0x1040531

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 2246
    .local v3, messageText:Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2248
    .local v2, listener:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040530

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040532

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040533

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2257
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2258
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleReassembleTimeout(Landroid/telephony/SmsMessage;)V
    .locals 13
    .parameter "sms"

    .prologue
    .line 790
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .line 792
    .local v11, smsheader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v11, :cond_0

    iget-object v0, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_1

    .line 793
    :cond_0
    const-string v0, "SMS"

    const-string v1, "it\'s not proper segmented message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_0
    return-void

    .line 797
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    .local v12, where:Ljava/lang/StringBuilder;
    iget-object v0, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    const-string v0, " AND address = ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 801
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 803
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 806
    .local v7, cursorCount:I
    if-nez v7, :cond_2

    .line 807
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there is no segmented sms with reference number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_2
    const-string/jumbo v0, "pdu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 812
    .local v9, pduColumn:I
    const/4 v0, 0x1

    new-array v10, v0, [[B

    .line 814
    .local v10, pdus:[[B
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_4

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 816
    const/4 v0, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v10, v0

    .line 817
    const/4 v0, 0x0

    aget-object v0, v10, v0

    if-eqz v0, :cond_3

    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, v10, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BZ)V

    .line 814
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 821
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, -0x1

    .line 644
    iget-object v9, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 645
    .local v9, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 647
    .local v7, sentIntent:Landroid/app/PendingIntent;
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 653
    iget-object v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_0

    .line 655
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v10, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .line 656
    .local v4, messageRef:I
    iput v4, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 657
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v4           #messageRef:I
    :cond_0
    if-eqz v7, :cond_2

    .line 662
    :try_start_0
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v10, v12, :cond_1

    .line 663
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 666
    :cond_1
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v10, :cond_3

    .line 667
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v6, sendNext:Landroid/content/Intent;
    const-string v10, "SendNextMsg"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    const-string v10, "LastSentMsg"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 756
    .end local v6           #sendNext:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 671
    :cond_3
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-ne v10, v12, :cond_4

    .line 673
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 674
    .local v2, fillIn:Landroid/content/Intent;
    const-string v10, "LastSentMsg"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_0

    .line 679
    .end local v2           #fillIn:Landroid/content/Intent;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 677
    :cond_4
    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :cond_5
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 687
    .local v0, edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 689
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    .line 693
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 694
    .local v8, ss:I
    const/4 v3, 0x0

    .line 698
    .local v3, max_retries:I
    const/4 v3, 0x3

    .line 701
    if-eqz v8, :cond_7

    .line 702
    iget-object v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v8, v10}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 703
    :cond_7
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v10, v11, :cond_8

    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v10, v3, :cond_8

    .line 714
    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 715
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 716
    .local v5, retryMsg:Landroid/os/Message;
    const-wide/16 v10, 0x7d0

    invoke-virtual {p0, v5, v10, v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 717
    .end local v5           #retryMsg:Landroid/os/Message;
    :cond_8
    iget-object v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_2

    .line 718
    const/4 v1, 0x1

    .line 720
    .local v1, error:I
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v10, v11, :cond_9

    .line 722
    const/4 v1, 0x6

    .line 726
    :cond_9
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 727
    .restart local v2       #fillIn:Landroid/content/Intent;
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_a

    .line 728
    const-string v11, "errorCode"

    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/SmsResponse;

    iget v10, v10, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    :cond_a
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v10, v12, :cond_b

    .line 732
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 735
    :cond_b
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v10, :cond_d

    .line 736
    const-string v10, "SendNextMsg"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    const-string v10, "LastSentMsg"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 751
    :cond_c
    :goto_1
    iget-object v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v1, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 753
    .end local v2           #fillIn:Landroid/content/Intent;
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 738
    .restart local v2       #fillIn:Landroid/content/Intent;
    :cond_d
    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-ne v10, v12, :cond_c

    .line 739
    const-string v10, "LastSentMsg"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method

.method protected isDeviceEncryptionOngoing()Z
    .locals 2

    .prologue
    .line 2262
    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2264
    :cond_0
    const-string v0, "SMS"

    const-string v1, "On Encryption"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/4 v0, 0x1

    .line 2267
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
.end method

.method protected isSMSBlocked(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "phoneNumber"
    .parameter "send"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1351
    const/4 v1, 0x0

    .line 1353
    .local v1, result:Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 1355
    .local v0, restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v0, :cond_1

    .line 1356
    invoke-virtual {v0, v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v1

    .line 1357
    if-nez v1, :cond_1

    .line 1358
    if-eqz p2, :cond_3

    .line 1360
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v1, v3

    .line 1371
    :cond_1
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSMSBlocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return v1

    :cond_2
    move v1, v2

    .line 1360
    goto :goto_0

    .line 1365
    :cond_3
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowed()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v1, v3

    :goto_1
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 28
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"

    .prologue
    .line 1158
    const/16 v22, 0x0

    check-cast v22, [[B

    .line 1159
    .local v22, pdus:[[B
    const/4 v9, 0x0

    .line 1162
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1163
    .local v23, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 1166
    .local v24, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v23, v7, v8

    const/4 v8, 0x2

    aput-object v24, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1171
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1172
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1175
    .local v20, oldPduString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v19

    .line 1176
    .local v19, oldPdu:[B
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :cond_0
    const/4 v3, 0x1

    .line 1249
    if-eqz v9, :cond_1

    .end local v19           #oldPdu:[B
    .end local v20           #oldPduString:Ljava/lang/String;
    .end local v23           #refNumber:Ljava/lang/String;
    .end local v24           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1346
    :cond_1
    :goto_1
    return v3

    .line 1182
    .restart local v23       #refNumber:Ljava/lang/String;
    .restart local v24       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1185
    const-string v14, "address=? AND reference_number=? AND date < ?"

    .line 1186
    .local v14, del_where:Ljava/lang/String;
    const-wide/32 v3, 0x927c0

    sub-long v25, p6, v3

    .line 1187
    .local v25, timediff:J
    const/4 v3, 0x3

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v15, v3

    const/4 v3, 0x1

    aput-object v23, v15, v3

    const/4 v3, 0x2

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    .line 1188
    .local v15, del_whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1191
    const-string v6, "address=? AND reference_number=?"

    .line 1192
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v23, v7, v3

    .line 1193
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1195
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1196
    .local v10, cursorCount:I
    add-int/lit8 v3, p5, -0x1

    if-eq v10, v3, :cond_4

    .line 1198
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1199
    .local v27, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1200
    const-string/jumbo v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v3, "address"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1203
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    const-string/jumbo v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 1206
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1209
    const/4 v3, 0x1

    .line 1249
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .line 1213
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_4
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 1214
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v10, :cond_7

    .line 1215
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1216
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1218
    .local v11, cursorSequence:I
    if-nez p9, :cond_5

    .line 1219
    add-int/lit8 v11, v11, -0x1

    .line 1221
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v22, v11

    .line 1226
    if-nez v11, :cond_6

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1227
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1214
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1232
    .end local v11           #cursorSequence:I
    :cond_7
    if-eqz p9, :cond_9

    .line 1233
    aput-object p1, v22, p4

    .line 1239
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1249
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1253
    :cond_8
    if-eqz p9, :cond_d

    .line 1255
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1256
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_b

    .line 1258
    aget-object v3, v22, v17

    const/4 v4, 0x0

    aget-object v5, v22, v17

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1256
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1235
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    :cond_9
    add-int/lit8 v3, p4, -0x1

    :try_start_2
    aput-object p1, v22, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1245
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursorCount:I
    .end local v14           #del_where:Ljava/lang/String;
    .end local v15           #del_whereArgs:[Ljava/lang/String;
    .end local v17           #i:I
    .end local v23           #refNumber:Ljava/lang/String;
    .end local v24           #seqNumber:Ljava/lang/String;
    .end local v25           #timediff:J
    :catch_0
    move-exception v16

    .line 1246
    .local v16, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "SMS"

    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1247
    const/4 v3, 0x2

    .line 1249
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 1260
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v10       #cursorCount:I
    .restart local v14       #del_where:Ljava/lang/String;
    .restart local v15       #del_whereArgs:[Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v23       #refNumber:Ljava/lang/String;
    .restart local v24       #seqNumber:Ljava/lang/String;
    .restart local v25       #timediff:J
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1263
    .local v13, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_c

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_1

    .line 1267
    :cond_c
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v22, v0

    .line 1268
    const/4 v3, 0x0

    aput-object v13, v22, v3

    .line 1270
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1271
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1276
    .end local v13           #datagram:[B
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_10

    .line 1277
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_f

    .line 1279
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1280
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_e

    .line 1281
    aget-object v3, v22, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v18

    .line 1282
    .local v18, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 1283
    .local v12, data:[B
    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1280
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1287
    .end local v12           #data:[B
    .end local v18           #msg:Landroid/telephony/SmsMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushAddress(Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_1

    .line 1331
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1346
    :goto_6
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1344
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_6
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1927
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 1928
    .local v16, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1929
    .local v15, msgCount:I
    const/4 v6, 0x0

    .line 1931
    .local v6, encoding:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-lez v1, :cond_1

    .line 1934
    const-string v1, "SMS"

    const-string v2, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v15, :cond_9

    .line 1936
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_0

    .line 1937
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 1939
    .local v7, sentIntent:Landroid/app/PendingIntent;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v7, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1940
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v13

    .line 1941
    .local v13, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMS"

    const-string v2, "failed to send error result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1948
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v13           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v14           #i:I
    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1950
    new-array v12, v15, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 1951
    .local v12, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    if-ge v14, v15, :cond_4

    .line 1952
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v11

    .line 1953
    .local v11, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_3

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 1956
    :cond_2
    iget v6, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1958
    :cond_3
    aput-object v11, v12, v14

    .line 1951
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1961
    .end local v11           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v15, :cond_9

    .line 1962
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1963
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    iput v0, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1964
    add-int/lit8 v1, v14, 0x1

    iput v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1965
    iput v15, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1972
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1973
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1974
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1977
    const/4 v1, 0x1

    if-ne v6, v1, :cond_5

    .line 1978
    aget-object v1, v12, v14

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1979
    aget-object v1, v12, v14

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1982
    :cond_5
    const/4 v7, 0x0

    .line 1983
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_6

    .line 1984
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1987
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v8, 0x0

    .line 1988
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_7

    .line 1989
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1992
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v15, -0x1

    if-ne v14, v1, :cond_8

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 1961
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1992
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 1996
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_9
    return-void
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 22
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 2004
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .line 2006
    .local v21, refNumber:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-lez v2, :cond_1

    .line 2009
    const-string v2, "SMS"

    const-string v3, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_a

    .line 2011
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_0

    .line 2012
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 2014
    .local v8, sentIntent:Landroid/app/PendingIntent;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v8, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 2015
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v18

    .line 2016
    .local v18, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SMS"

    const-string v3, "failed to send error result"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2023
    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    .end local v18           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v19           #i:I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 2025
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2026
    .local v20, msgCount:I
    const/4 v7, 0x0

    .line 2027
    .local v7, encoding:I
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v17, v0

    .line 2029
    .local v17, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 2030
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .line 2031
    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_3

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 2034
    :cond_2
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2036
    :cond_3
    aput-object v16, v17, v19

    .line 2029
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 2040
    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 2041
    new-instance v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v15}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2042
    .local v15, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    iput v0, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2043
    add-int/lit8 v2, v19, 0x1

    iput v2, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2044
    move/from16 v0, v20

    iput v0, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2052
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 2053
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2054
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v15, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2056
    const/4 v2, 0x1

    if-ne v7, v2, :cond_5

    .line 2057
    aget-object v2, v17, v19

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2058
    aget-object v2, v17, v19

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2061
    :cond_5
    const/4 v8, 0x0

    .line 2062
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_6

    .line 2063
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2066
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v9, 0x0

    .line 2067
    .local v9, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_7

    .line 2068
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2070
    .restart local v9       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v20, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    const/4 v10, 0x1

    :goto_4
    const/4 v2, 0x3

    if-ne v7, v2, :cond_9

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPduWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZIII)V

    .line 2040
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 2070
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    :cond_9
    move/from16 v14, p9

    goto :goto_5

    .line 2075
    .end local v6           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #encoding:I
    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    .end local v9           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v17           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v20           #msgCount:I
    :cond_a
    return-void
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected abstract sendNewSubmitPduWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZIII)V
.end method

.method protected abstract sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 8
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "destAddr"

    .prologue
    const/4 v6, 0x1

    .line 2118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 2119
    return-void
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .locals 10
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "destAddr"
    .parameter "curIndex"
    .parameter "totalCnt"

    .prologue
    .line 2125
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v2, :cond_2

    .line 2126
    if-eqz p3, :cond_0

    .line 2128
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2131
    :cond_0
    :goto_0
    const-string v2, "SMS"

    const-string v3, "Device does not support sending sms."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_1
    :goto_1
    return-void

    .line 2135
    :cond_2
    if-nez p2, :cond_3

    .line 2136
    if-eqz p3, :cond_1

    .line 2138
    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2139
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2144
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2145
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "smsc"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    const-string/jumbo v2, "pdu"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    const-string v2, "curIndex"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    const-string/jumbo v2, "totalCnt"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2152
    .local v8, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 2154
    .local v7, packageNames:[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v2, v7

    if-nez v2, :cond_5

    .line 2156
    :cond_4
    const-string v2, "SMS"

    const-string v3, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    if-eqz p3, :cond_1

    .line 2159
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2160
    :catch_1
    move-exception v6

    .line 2161
    .local v6, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SMS"

    const-string v3, "failed to send error result"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2167
    .end local v6           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_5
    const/4 v2, 0x0

    aget-object v4, v7, v2

    .line 2171
    .local v4, appPackage:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    .local v0, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2176
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2180
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .line 2182
    .local v9, ss:I
    if-eqz v9, :cond_7

    .line 2183
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v9, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 2185
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 2129
    .end local v0           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #appPackage:Ljava/lang/String;
    .end local v7           #packageNames:[Ljava/lang/String;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #ss:I
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 1861
    const-string v0, "SMS"

    const-string/jumbo v1, "sendTextwithOptions: Deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return-void
.end method

.method protected abstract sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
.end method

.method protected abstract sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 284
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v0

    .line 285
    .local v0, deviceInventory:Landroid/sec/enterprise/DeviceInventory;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    .line 286
    .local v1, phoneRestriction:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-nez p4, :cond_0

    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    .line 289
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/enterprise/DeviceInventory;->isSMSCaptureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    :cond_1
    return-void
.end method
