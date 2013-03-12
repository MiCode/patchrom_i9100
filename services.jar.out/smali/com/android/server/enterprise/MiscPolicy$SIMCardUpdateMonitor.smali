.class Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCardUpdateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CURRENT_SIM_COUNTRY_ISO:Ljava/lang/String; = "CurrentSimCountryIso"

.field private static final CURRENT_SIM_OPERATOR:Ljava/lang/String; = "CurrentSimOperator"

.field private static final CURRENT_SIM_OPERATOR_NAME:Ljava/lang/String; = "CurrentSimOperatorName"

.field private static final CURRENT_SIM_PHONE_NUMBER:Ljava/lang/String; = "CurrentSimPhoneNumber"

.field private static final CURRENT_SIM_SERIAL_NUMBER:Ljava/lang/String; = "CurrentSimSerialNumber"

.field private static final PREVIOUS_SIM_COUNTRY_ISO:Ljava/lang/String; = "PreviousSimCountryIso"

.field private static final PREVIOUS_SIM_OPERATOR:Ljava/lang/String; = "PreviousSimOperator"

.field private static final PREVIOUS_SIM_OPERATOR_NAME:Ljava/lang/String; = "PreviousSimOperatorName"

.field private static final PREVIOUS_SIM_PHONE_NUMBER:Ljava/lang/String; = "PreviousSimPhoneNumber"

.field private static final PREVIOUS_SIM_SERIAL_NUMBER:Ljava/lang/String; = "PreviousSimSerialNumber"

.field private static final SIM_CARD_PREF:Ljava/lang/String; = "/data/system/SimCard.dat"

.field private static final SIM_CHANGE_OPERATION:Ljava/lang/String; = "SimChangeOperation"

.field private static final SIM_CHANGE_TIME:Ljava/lang/String; = "SimChangeTime"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mCtxt:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/enterprise/MiscPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/MiscPolicy;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const-string v0, "SIMCardUpdateMonitor "

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;

    .line 393
    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 413
    iput-object p2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    .line 414
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 416
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->startSIMCardUpdates()V

    .line 417
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->checkSimRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->saveSimState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->checkSimInserted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->checkSimChanged()Z

    move-result v0

    return v0
.end method

.method private checkSimChanged()Z
    .locals 4

    .prologue
    .line 477
    const-string v2, "CurrentSimSerialNumber"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, storedSN:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 479
    const-string v1, ""

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, currentSN:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    const/4 v2, 0x1

    .line 484
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSimInserted()Z
    .locals 4

    .prologue
    .line 489
    const-string v2, "CurrentSimSerialNumber"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, storedSN:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, currentSN:Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 492
    const/4 v2, 0x1

    .line 494
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSimRemoved()Z
    .locals 5

    .prologue
    .line 463
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 465
    .local v1, simState:I
    const-string v3, "CurrentSimSerialNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, storedSN:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, currentSN:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 469
    const/4 v3, 0x1

    .line 472
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveSimState(I)V
    .locals 7
    .parameter "operation"

    .prologue
    const/4 v6, -0x1

    .line 422
    const-string v2, "PreviousSimCountryIso"

    const-string v3, "CurrentSimCountryIso"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    const-string v2, "PreviousSimOperator"

    const-string v3, "CurrentSimOperator"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    const-string v2, "PreviousSimOperatorName"

    const-string v3, "CurrentSimOperatorName"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    const-string v2, "PreviousSimSerialNumber"

    const-string v3, "CurrentSimSerialNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    const-string v2, "PreviousSimPhoneNumber"

    const-string v3, "CurrentSimPhoneNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 436
    const-string v2, "CurrentSimCountryIso"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    const-string v2, "CurrentSimOperator"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 440
    const-string v2, "CurrentSimOperatorName"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    const-string v2, "CurrentSimSerialNumber"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    const-string v2, "CurrentSimPhoneNumber"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    const-string v2, "SimChangeTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    const-string v2, "SimChangeOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/SimCard.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, lFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a0

    invoke-static {v2, v3, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.sec.SIM_CARD_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, i:Landroid/content/Intent;
    const-string v2, "simChangeInfo"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/MiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    return-void
.end method

.method private startSIMCardUpdates()V
    .locals 3

    .prologue
    .line 498
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 499
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    return-void
.end method

.method private stopSIMCardUpdates()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    return-void
.end method
