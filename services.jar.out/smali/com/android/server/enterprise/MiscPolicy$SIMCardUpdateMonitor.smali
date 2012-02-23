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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 472
    const-string v2, "CurrentSimSerialNumber"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, storedSN:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 474
    const-string v1, ""

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, currentSN:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    const/4 v2, 0x1

    .line 479
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSimInserted()Z
    .locals 4

    .prologue
    .line 484
    const-string v2, "CurrentSimSerialNumber"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, storedSN:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, currentSN:Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 487
    const/4 v2, 0x1

    .line 489
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSimRemoved()Z
    .locals 5

    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 460
    .local v1, simState:I
    const-string v3, "CurrentSimSerialNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, storedSN:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, currentSN:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 464
    const/4 v3, 0x1

    .line 467
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveSimState(I)V
    .locals 5
    .parameter "operation"

    .prologue
    .line 422
    const-string v1, "PreviousSimCountryIso"

    const-string v2, "CurrentSimCountryIso"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    const-string v1, "PreviousSimOperator"

    const-string v2, "CurrentSimOperator"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    const-string v1, "PreviousSimOperatorName"

    const-string v2, "CurrentSimOperatorName"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    const-string v1, "PreviousSimSerialNumber"

    const-string v2, "CurrentSimSerialNumber"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    const-string v1, "PreviousSimPhoneNumber"

    const-string v2, "CurrentSimPhoneNumber"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 436
    const-string v1, "CurrentSimCountryIso"

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    const-string v1, "CurrentSimOperator"

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 440
    const-string v1, "CurrentSimOperatorName"

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    const-string v1, "CurrentSimSerialNumber"

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    const-string v1, "CurrentSimPhoneNumber"

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    const-string v1, "SimChangeTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    const-string v1, "SimChangeOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.SIM_CARD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, i:Landroid/content/Intent;
    const-string v1, "simChangeInfo"

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/MiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    return-void
.end method

.method private startSIMCardUpdates()V
    .locals 3

    .prologue
    .line 493
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 494
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    return-void
.end method

.method private stopSIMCardUpdates()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 500
    return-void
.end method
