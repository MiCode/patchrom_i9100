.class Landroid/net/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConfigStore$ActiveState;,
        Landroid/net/wifi/WifiApConfigStore$InactiveState;,
        Landroid/net/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final AP_CONFIG_FILE_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static final errPWD:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static final errSSID:Ljava/lang/String; = "\t#ERROR#SSID#\n"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    .line 69
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE_VERSION:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "target"

    .prologue
    .line 79
    const-string v0, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 71
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$DefaultState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 72
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$InactiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 73
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$ActiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 76
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 81
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 83
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 84
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 5
    .parameter "digit"

    .prologue
    .line 458
    iget-object v3, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 459
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 462
    .local v1, len:I
    if-nez p1, :cond_0

    .line 469
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #len:I
    :goto_0
    return-object v0

    .line 464
    .restart local v0       #imei:Ljava/lang/String;
    .restart local v1       #len:I
    :cond_0
    if-lt v1, p1, :cond_2

    .line 465
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 467
    .end local v1           #len:I
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastIMEI(I)Ljava/lang/String;
    .locals 5
    .parameter "digit"

    .prologue
    .line 473
    iget-object v3, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 474
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 477
    .local v1, len:I
    if-nez p1, :cond_0

    .line 484
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #len:I
    :goto_0
    return-object v0

    .line 479
    .restart local v0       #imei:Ljava/lang/String;
    .restart local v1       #len:I
    :cond_0
    if-lt v1, p1, :cond_2

    .line 480
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 482
    .end local v1           #len:I
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast3Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 429
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, mac:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 431
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 433
    .local v0, len:I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 437
    .end local v0           #len:I
    .end local v2           #temp:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 435
    :cond_0
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast4Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, mac:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 419
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 421
    .local v0, len:I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 425
    .end local v0           #len:I
    .end local v2           #temp:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 423
    :cond_0
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 488
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 491
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 492
    .local v0, len:I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_0
    return-object v1
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, randomUUID:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom4Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, randomUUID:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom8Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 405
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, randomUUID:Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 7
    .parameter "digit"
    .parameter "seed"

    .prologue
    .line 515
    new-instance v0, Ljava/lang/String;

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, alphabet:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 517
    .local v2, len:I
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-nez v5, :cond_0

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 519
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 520
    .local v3, random:Ljava/util/Random;
    const-string v4, ""

    .line 521
    .local v4, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return-object v4
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 11
    .parameter "digit"
    .parameter "seed"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 499
    if-nez p1, :cond_0

    .line 500
    const-string v4, ""

    .line 511
    :goto_0
    return-object v4

    .line 501
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 503
    :cond_1
    cmp-long v4, p2, v9

    if-nez v4, :cond_2

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v9

    .line 506
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 507
    .local v3, random:Ljava/util/Random;
    const/16 v2, 0xa

    .line 508
    .local v2, maxValue:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 509
    mul-int/lit8 v2, v2, 0xa

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    :cond_3
    const-string v4, "%%0%dd"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, format:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 7
    .parameter "digit"
    .parameter "seed"

    .prologue
    .line 528
    new-instance v4, Ljava/lang/String;

    const-string v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 529
    .local v4, sym:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 530
    .local v1, len:I
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-nez v5, :cond_0

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 532
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 533
    .local v2, random:Ljava/util/Random;
    const-string v3, ""

    .line 534
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_1
    return-object v3
.end method

.method private getTelephonyNumber(IZ)Ljava/lang/String;
    .locals 6
    .parameter "digit"
    .parameter "retry"

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v4, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 442
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, min:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 444
    if-nez p2, :cond_1

    const-string v4, "0000000016"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 454
    .end local v1           #min:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 446
    .restart local v1       #min:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 447
    .local v0, len:I
    if-eqz p1, :cond_0

    .line 449
    if-lt v0, p1, :cond_3

    .line 450
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 452
    .end local v0           #len:I
    :cond_2
    const-string v4, "WifiApConfigStore"

    const-string v5, "Fail to get MSISDN"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v3

    .line 454
    goto :goto_0
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 90
    new-instance v0, Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 91
    .local v0, s:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Landroid/net/wifi/WifiApConfigStore;->start()V

    .line 92
    return-object v0
.end method

.method private parseSecProductFeaturePassword(Z)Ljava/lang/String;
    .locals 13
    .parameter "retry"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x0

    const-wide/16 v7, 0x1

    const/4 v6, 0x4

    .line 345
    const-string v4, "SamsungDefault"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v11, v12}, Landroid/net/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6, v7, v8}, Landroid/net/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    :goto_0
    return-object v4

    .line 347
    :cond_0
    const-string v4, "Random12Chars"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 349
    :cond_1
    const-string v4, "Random8Chars"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom8Chars()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 351
    :cond_2
    const-string v4, "Min10Digits"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    invoke-direct {p0, v9, p1}, Landroid/net/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 353
    :cond_3
    const-string v4, "ModelWith4RandomDigits"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom4Chars()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 355
    :cond_4
    const-string v4, "IMEI5With5RandomDigits"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 356
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiApConfigStore;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v10, v7, v8}, Landroid/net/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 360
    :cond_5
    const-string v4, "WifiApConfigStore"

    const-string v5, "Not generate default password : because imei is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v4, 0x0

    goto :goto_0

    .line 362
    .end local v0           #imei:Ljava/lang/String;
    :cond_6
    const-string v4, "VZWRandomRule"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    invoke-direct {p0, v9, p1}, Landroid/net/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, mdn:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 366
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 370
    .local v2, seed:J
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v2, v3}, Landroid/net/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v5, v2, v3}, Landroid/net/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5, v2, v3}, Landroid/net/wifi/WifiApConfigStore;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 368
    .end local v2           #seed:J
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .restart local v2       #seed:J
    goto :goto_1

    .line 371
    .end local v1           #mdn:Ljava/lang/String;
    .end local v2           #seed:J
    :cond_8
    const-string v4, "UserDefined"

    const-string v5, "SamsungDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 372
    const-string v4, "\tUSER#DEFINED#PWD#\n"

    goto/16 :goto_0

    .line 374
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v11, v12}, Landroid/net/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6, v7, v8}, Landroid/net/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "errString"
    .parameter "flagErrorBreak"

    .prologue
    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v8, ssid:Ljava/lang/StringBuilder;
    const-string v3, "Default"

    .line 276
    .local v3, defaultSsid:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, customSSID:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v2

    if-ge v4, v9, :cond_13

    .line 278
    const-string v9, "Default"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 279
    iget-object v9, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v10, 0x1040519

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const-string v9, "ModelName"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 281
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 282
    :cond_1
    const-string v9, "Random4Digits"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 283
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Landroid/net/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_2
    const-string v9, "Mac4Digits"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 285
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getMacAddressLast4Digits()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, mac:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 287
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_3
    if-eqz p2, :cond_5

    .line 341
    .end local v6           #mac:Ljava/lang/String;
    .end local p1
    :cond_4
    :goto_2
    return-object p1

    .line 291
    .restart local v6       #mac:Ljava/lang/String;
    .restart local p1
    :cond_5
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    .end local v6           #mac:Ljava/lang/String;
    :cond_6
    const-string v9, "Mac3Digits"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 293
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getMacAddressLast3Digits()Ljava/lang/String;

    move-result-object v6

    .line 294
    .restart local v6       #mac:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 295
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :cond_7
    if-nez p2, :cond_4

    .line 299
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    .end local v6           #mac:Ljava/lang/String;
    :cond_8
    const-string v9, "Min4Digits"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 301
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, min:Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 303
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :cond_9
    if-nez p2, :cond_4

    .line 307
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    .end local v7           #min:Ljava/lang/String;
    :cond_a
    const-string v9, "Min2Digits"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 309
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v7

    .line 310
    .restart local v7       #min:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 311
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 312
    :cond_b
    if-nez p2, :cond_4

    .line 315
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 316
    .end local v7           #min:Ljava/lang/String;
    :cond_c
    const-string v9, "IMEILast2Digits"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 317
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, imei:Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 319
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 320
    :cond_d
    if-nez p2, :cond_4

    .line 323
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 324
    .end local v5           #imei:Ljava/lang/String;
    :cond_e
    const-string v9, "Space"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 325
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 326
    :cond_f
    const-string v9, "ChameleonSSID"

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 327
    iget-object v9, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v9, "WifiApConfigStore"

    const-string v10, "updateHotspotS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v9, "chameleon_ssid"

    invoke-static {v0, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, cscSSID:Ljava/lang/String;
    if-eqz v1, :cond_10

    const-string v9, "null"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 332
    :cond_10
    const-string v9, "WifiApConfigStore"

    const-string v10, "ChameleonSSID is null -> ModelName is used."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 335
    :cond_11
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 338
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #cscSSID:Ljava/lang/String;
    :cond_12
    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 341
    :cond_13
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method private reGenerateAndWriteConfiguration()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 378
    const-string v2, "WifiApConfigStore"

    const-string v3, "Re-Generate SSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v2, "XXXX"

    invoke-direct {p0, v2, v4}, Landroid/net/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, defaultSSID:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 382
    const-string v2, "None"

    const-string v3, "SamsungDefault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 393
    :goto_0
    const-string v2, "XXXX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 396
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 386
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, password:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 388
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v6, v4, v5}, Landroid/net/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {p0, v6, v4, v5}, Landroid/net/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDefaultApConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 241
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, ""

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 247
    :goto_0
    const-string v2, "None"

    const-string v3, "SamsungDefault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 263
    :goto_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 264
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 268
    const/16 v2, 0xa

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 270
    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 271
    return-void

    .line 245
    :cond_0
    const-string v2, "\t#ERROR#SSID#\n"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, password:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 252
    const-string v2, "\t#ERROR#SSID#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 255
    const-string v2, "UserDefined"

    const-string v3, "SamsungDefault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    const-string v2, "\tUSER#DEFINED#PWD#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 258
    :cond_3
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .parameter "config"

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v3, out:Ljava/io/DataOutputStream;
    :try_start_1
    sget v4, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE_VERSION:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 213
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 214
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 216
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 219
    .local v0, authType:I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 226
    :cond_0
    if-eqz v3, :cond_1

    .line 228
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v2, v3

    .line 232
    .end local v0           #authType:I
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    if-eqz v2, :cond_2

    .line 228
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 229
    :catch_1
    move-exception v4

    goto :goto_1

    .line 226
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 228
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 226
    :cond_3
    :goto_4
    throw v4

    .line 229
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v0       #authType:I
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 226
    .end local v0           #authType:I
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 223
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_2
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method loadApConfiguration()V
    .locals 9

    .prologue
    .line 159
    const/4 v3, 0x0

    .line 161
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 162
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 166
    .local v5, version:I
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config File Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget v6, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE_VERSION:I

    if-ge v5, v6, :cond_2

    .line 168
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad version("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") on hotspot configuration file, set defaults"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 192
    if-eqz v4, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 198
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 172
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 174
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 175
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 176
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 177
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 178
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v6, :cond_3

    .line 179
    const/16 v6, 0xa

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 182
    :cond_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 183
    .local v0, authType:I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 184
    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 187
    :cond_4
    iput-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 192
    if-eqz v4, :cond_5

    .line 194
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_2
    move-object v3, v4

    .line 197
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 188
    .end local v0           #authType:I
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #version:I
    :catch_0
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in loadApConfiguration() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v3, :cond_1

    .line 194
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 195
    :catch_1
    move-exception v6

    goto :goto_1

    .line 192
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_6

    .line 194
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 192
    :cond_6
    :goto_5
    throw v6

    .line 195
    :catch_2
    move-exception v7

    goto :goto_5

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :catch_3
    move-exception v6

    goto :goto_0

    .restart local v0       #authType:I
    :catch_4
    move-exception v6

    goto :goto_2

    .line 192
    .end local v0           #authType:I
    .end local v5           #version:I
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_4

    .line 188
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_3
.end method
