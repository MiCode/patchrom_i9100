.class public Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/fuelgauge/PowerUsageSummary$3;
    }
.end annotation


# static fields
.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/sec_settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/sec_settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/sec_settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 794
    new-instance v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 696
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 697
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 699
    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 700
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 702
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020185

    iget-wide v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/sec_settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 754
    iget-wide v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 755
    :cond_0
    iget-wide v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 756
    new-instance v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/sec_settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 758
    .local v0, bs:Lcom/android/sec_settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->usageTime:J

    .line 759
    iput p5, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->iconId:I

    .line 760
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 689
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 691
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0201a2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;

    .line 693
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f0906c3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 359
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 610
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 612
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0201b4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;

    .line 614
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 12
    .parameter

    .prologue
    .line 636
    const-wide/16 v1, 0x0

    .line 637
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 638
    const-wide/16 v3, 0x0

    .line 639
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 640
    iget-object v6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v0, p1, p2, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 641
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    long-to-double v8, v8

    iget-object v10, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v11, "radio.on"

    invoke-virtual {v10, v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v1, v8

    .line 643
    add-long/2addr v3, v6

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 646
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v6, v1, v5

    .line 648
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020186

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 651
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v1, v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 655
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 16
    .parameter

    .prologue
    .line 617
    const-wide/16 v2, 0x0

    .line 618
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v5, v4, v6

    .line 619
    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "screen.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v3, v2, v7

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.full"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    .line 622
    const/4 v2, 0x0

    :goto_0
    const/4 v9, 0x5

    if-ge v2, v9, :cond_0

    .line 623
    int-to-float v9, v2

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v9, v7

    const-wide/high16 v11, 0x4014

    div-double/2addr v9, v11

    .line 625
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v11, v2, v0, v1, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 626
    long-to-double v13, v11

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    .line 627
    const-string v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Screen bin power = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    double-to-int v9, v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    :cond_0
    const-wide v7, 0x408f400000000000L

    div-double v8, v3, v7

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0906d9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020328

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;

    .line 633
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    .line 672
    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    .line 673
    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    .line 674
    const-string v4, "PowerUsageSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI runningTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " app runningTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-wide v7, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long v3, v2, v7

    .line 677
    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    .line 678
    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 681
    const-string v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI power="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from procs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906da

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0201c9

    iget-wide v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/sec_settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/sec_settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method private aggregateSippers(Lcom/android/sec_settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/sec_settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/sec_settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 658
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 659
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;

    .line 660
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adding sipper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cpu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 662
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 663
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 664
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 665
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 666
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 667
    iget-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 658
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    .line 709
    .line 711
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .line 713
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    .line 715
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 717
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 719
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 720
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 724
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 725
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 726
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 727
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 730
    :goto_1
    return-wide v0

    .line 720
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 730
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 768
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 769
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 770
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 772
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 47

    .prologue
    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/hardware/SensorManager;

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v27, v0

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v28

    .line 425
    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v29, v0

    .line 426
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 427
    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v28

    if-ge v3, v0, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.active"

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v31

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v33

    .line 432
    const-wide/16 v4, 0x0

    .line 433
    const/4 v13, 0x0

    .line 434
    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v35

    .line 436
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v36

    .line 437
    const/4 v3, 0x0

    move/from16 v24, v3

    move-wide/from16 v25, v4

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v36

    if-ge v0, v1, :cond_f

    .line 438
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 439
    const-wide/16 v14, 0x0

    .line 440
    const-wide/16 v8, 0x0

    .line 441
    const/4 v7, 0x0

    .line 443
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v11

    .line 444
    const-wide/16 v5, 0x0

    .line 445
    const-wide/16 v3, 0x0

    .line 446
    const-wide/16 v20, 0x0

    .line 447
    const-wide/16 v22, 0x0

    .line 448
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_17

    .line 451
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-wide/from16 v16, v14

    move-wide v14, v8

    move-object v9, v7

    move-wide v7, v5

    move-wide v5, v3

    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 452
    const-string v11, "PowerUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Process name = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 454
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v18

    .line 455
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v38

    .line 456
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v40

    .line 457
    const-wide/16 v42, 0xa

    mul-long v40, v40, v42

    add-long v5, v5, v40

    .line 458
    add-long v18, v18, v38

    const-wide/16 v38, 0xa

    mul-long v38, v38, v18

    .line 459
    const/16 v18, 0x0

    .line 461
    const/4 v11, 0x0

    move/from16 v45, v11

    move/from16 v11, v18

    move/from16 v18, v45

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 462
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v40

    aput-wide v40, v30, v18

    .line 463
    int-to-long v0, v11

    move-wide/from16 v40, v0

    aget-wide v42, v30, v18

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v19, v0

    .line 461
    add-int/lit8 v11, v18, 0x1

    move/from16 v18, v11

    move/from16 v11, v19

    goto :goto_3

    .line 465
    :cond_1
    if-nez v11, :cond_16

    const/4 v4, 0x1

    .line 467
    :goto_4
    const-wide/16 v18, 0x0

    .line 468
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v11, v0, :cond_2

    .line 469
    aget-wide v40, v30, v11

    move-wide/from16 v0, v40

    long-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v4

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    .line 470
    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    aget-wide v42, v29, v11

    mul-double v40, v40, v42

    add-double v18, v18, v40

    .line 468
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 472
    :cond_2
    add-long v7, v7, v38

    .line 473
    add-double v16, v16, v18

    .line 474
    if-eqz v9, :cond_3

    const-string v4, "*"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 477
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v14, v18

    :goto_6
    move-object v9, v3

    .line 483
    goto/16 :goto_2

    .line 478
    :cond_4
    cmpg-double v4, v14, v18

    if-gez v4, :cond_15

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "*"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 481
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v14, v18

    goto :goto_6

    .line 484
    :cond_5
    const-string v3, "PowerUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Max drain of "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " by "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v7

    move-object v7, v9

    move-wide/from16 v45, v5

    move-wide/from16 v5, v16

    move-wide/from16 v16, v45

    .line 487
    :goto_7
    cmp-long v8, v16, v3

    if-lez v8, :cond_14

    move-wide/from16 v14, v16

    .line 493
    :goto_8
    const-wide v3, 0x408f400000000000L

    div-double v8, v5, v3

    .line 496
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 498
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v4, v20

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 502
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 503
    if-eqz v3, :cond_13

    .line 504
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v18

    add-long v3, v4, v18

    :goto_a
    move-wide v4, v3

    .line 506
    goto :goto_9

    .line 507
    :cond_6
    const-wide/16 v18, 0x3e8

    div-long v37, v4, v18

    .line 508
    add-long v25, v25, v37

    .line 511
    move-wide/from16 v0, v37

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.awake"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double/2addr v3, v8

    .line 515
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v39

    .line 516
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v41

    .line 517
    add-long v5, v39, v41

    long-to-double v5, v5

    mul-double v5, v5, v31

    add-double/2addr v3, v5

    .line 520
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long v43, v5, v8

    .line 521
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v43

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 522
    move-wide/from16 v0, v43

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    add-double/2addr v3, v5

    .line 526
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v5

    .line 528
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v18, v22

    move-wide/from16 v20, v3

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 530
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v5

    .line 531
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 532
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    .line 533
    const-wide/16 v3, 0x0

    .line 534
    packed-switch v5, :pswitch_data_0

    .line 540
    invoke-virtual {v12, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 542
    if-eqz v5, :cond_7

    .line 543
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getPower()F

    move-result v3

    float-to-double v3, v3

    .line 544
    const-string v6, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Got sensor "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v22, " with power = "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-wide v5, v3

    move-wide/from16 v3, v18

    .line 548
    :goto_c
    long-to-double v8, v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    add-double v5, v5, v20

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 549
    goto :goto_b

    .line 536
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "gps.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    move-wide v5, v3

    move-wide v3, v8

    .line 538
    goto :goto_c

    .line 551
    :cond_8
    const-string v3, "PowerUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": power="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-wide/16 v3, 0x0

    cmpl-double v3, v20, v3

    if-nez v3, :cond_9

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_12

    .line 555
    :cond_9
    new-instance v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v9, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [D

    const/16 v22, 0x0

    aput-wide v20, v11, v22

    invoke-direct/range {v3 .. v11}, Lcom/android/sec_settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 558
    iput-wide v14, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 559
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 560
    move-wide/from16 v0, v43

    iput-wide v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 561
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 562
    move-wide/from16 v0, v37

    iput-wide v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 563
    move-wide/from16 v0, v39

    iput-wide v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 564
    move-wide/from16 v0, v41

    iput-wide v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 565
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_a

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :goto_d
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    if-nez v4, :cond_12

    .line 576
    :goto_e
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_c

    .line 577
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 584
    :goto_f
    const-string v4, "PowerUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added power = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    move-object v13, v3

    goto/16 :goto_1

    .line 567
    :cond_a
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_b

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 570
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 578
    :cond_c
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_d

    .line 579
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_f

    .line 581
    :cond_d
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v4, v20, v4

    if-lez v4, :cond_e

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 582
    :cond_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto :goto_f

    .line 590
    :cond_f
    if-eqz v13, :cond_11

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    add-long v5, v5, v25

    sub-long/2addr v3, v5

    .line 595
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_11

    .line 596
    long-to-double v5, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v8, "cpu.awake"

    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    .line 598
    const-string v7, "PowerUsageSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OS wakeLockTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " power "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-wide v7, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v3, v7

    iput-wide v3, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 600
    iget-wide v3, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->value:D

    add-double/2addr v3, v5

    iput-wide v3, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->value:D

    .line 601
    iget-object v3, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->values:[D

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    add-double/2addr v7, v5

    aput-wide v7, v3, v4

    .line 602
    iget-wide v3, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v3, v3, v7

    if-lez v3, :cond_10

    iget-wide v3, v13, Lcom/android/sec_settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 603
    :cond_10
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 606
    :cond_11
    return-void

    :cond_12
    move-object v3, v13

    goto/16 :goto_e

    :cond_13
    move-wide v3, v4

    goto/16 :goto_a

    :cond_14
    move-wide v14, v3

    goto/16 :goto_8

    :cond_15
    move-object v3, v9

    goto/16 :goto_6

    :cond_16
    move v4, v11

    goto/16 :goto_4

    :cond_17
    move-wide/from16 v16, v3

    move-wide v3, v5

    move-wide v5, v14

    goto/16 :goto_7

    .line 534
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 735
    iget v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v1, v5

    .line 737
    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v0

    .line 739
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uptime since last unplugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 742
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 743
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 744
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 745
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 747
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 750
    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059

    const-wide/16 v9, 0x0

    .line 363
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v8, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->load()V

    .line 366
    :cond_0
    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 367
    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 368
    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 369
    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 370
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 372
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 373
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 374
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 375
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 376
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 378
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 379
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 380
    new-instance v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v8, v9}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 381
    .local v0, hist:Lcom/android/sec_settings/fuelgauge/BatteryHistoryPreference;
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 382
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "screen.full"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 418
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 389
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 391
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 392
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/sec_settings/fuelgauge/BatterySipper;

    .line 393
    .local v7, sipper:Lcom/android/sec_settings/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 394
    invoke-virtual {v7}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v8, v10

    mul-double v4, v8, v12

    .line 395
    .local v4, percentOfTotal:D
    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_2

    .line 396
    new-instance v6, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v6, v8, v9, v7}, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/sec_settings/fuelgauge/BatterySipper;)V

    .line 397
    .local v6, pref:Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v2, v8, v10

    .line 398
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/sec_settings/fuelgauge/BatterySipper;->percent:D

    .line 399
    iget-object v8, v7, Lcom/android/sec_settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    const v8, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 401
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 402
    iget-object v8, v7, Lcom/android/sec_settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v8, :cond_3

    .line 403
    iget-object v8, v7, Lcom/android/sec_settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 405
    :cond_3
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 406
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v9, 0xb

    if-le v8, v9, :cond_2

    .line 408
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;
    .end local v7           #sipper:Lcom/android/sec_settings/fuelgauge/BatterySipper;
    :cond_4
    iget-object v9, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 409
    :try_start_0
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 410
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_5

    .line 411
    new-instance v8, Ljava/lang/Thread;

    const-string v10, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 412
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 413
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 415
    :cond_5
    iget-object v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 417
    :cond_6
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    sget-object v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 134
    :cond_0
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 135
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 137
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 138
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 139
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 319
    const/4 v4, 0x2

    const v5, 0x7f090703

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02016a

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 322
    .local v3, refresh:Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0908fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, helpUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    const/4 v4, 0x3

    const v5, 0x7f0908f5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 328
    .local v0, help:Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v1, helpIntent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 332
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 334
    .end local v0           #help:Landroid/view/MenuItem;
    .end local v1           #helpIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 165
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 168
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 352
    :goto_0
    return v0

    .line 340
    :pswitch_0
    iget v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 341
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 345
    :goto_1
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 343
    :cond_0
    iput v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 348
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 349
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 155
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 160
    return-void

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 172
    instance-of v0, p2, Lcom/android/sec_settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 178
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 179
    const-class v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906d4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 181
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 183
    :cond_0
    instance-of v0, p2, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_1

    .line 184
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 186
    check-cast v0, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;

    .line 187
    invoke-virtual {v0}, Lcom/android/sec_settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/sec_settings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 198
    iget-object v0, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_2

    .line 199
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    :cond_2
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->drainType:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 205
    sget-object v0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary$3;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->drainType:Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 295
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const v4, 0x7f0906e9

    aput v4, v1, v0

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    .line 303
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 304
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 305
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 306
    const-class v1, Lcom/android/sec_settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906d5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 309
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0

    .line 208
    :pswitch_0
    iget-object v4, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 209
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x3

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x4

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v3, 0x7

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    const/16 v3, 0x8

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    .line 232
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 233
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 234
    iget-object v6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v7, ""

    iget v8, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 235
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 238
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 239
    iget-object v6, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 240
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :pswitch_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 257
    :pswitch_2
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .line 265
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 276
    :pswitch_3
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    .line 284
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/sec_settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 209
    :array_0
    .array-data 0x4
        0xdft 0x6t 0x9t 0x7ft
        0xe0t 0x6t 0x9t 0x7ft
        0xe1t 0x6t 0x9t 0x7ft
        0xe2t 0x6t 0x9t 0x7ft
        0xe3t 0x6t 0x9t 0x7ft
        0xe5t 0x6t 0x9t 0x7ft
        0xe6t 0x6t 0x9t 0x7ft
        0xe7t 0x6t 0x9t 0x7ft
        0xe8t 0x6t 0x9t 0x7ft
    .end array-data

    .line 245
    :array_1
    .array-data 0x4
        0xe9t 0x6t 0x9t 0x7ft
        0xeat 0x6t 0x9t 0x7ft
    .end array-data

    .line 257
    :array_2
    .array-data 0x4
        0xe3t 0x6t 0x9t 0x7ft
        0xdft 0x6t 0x9t 0x7ft
        0xe0t 0x6t 0x9t 0x7ft
        0xe1t 0x6t 0x9t 0x7ft
        0xe5t 0x6t 0x9t 0x7ft
        0xe6t 0x6t 0x9t 0x7ft
    .end array-data

    .line 276
    :array_3
    .array-data 0x4
        0xe9t 0x6t 0x9t 0x7ft
        0xdft 0x6t 0x9t 0x7ft
        0xe0t 0x6t 0x9t 0x7ft
        0xe1t 0x6t 0x9t 0x7ft
        0xe5t 0x6t 0x9t 0x7ft
        0xe6t 0x6t 0x9t 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 150
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 781
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    .line 783
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 784
    monitor-exit v2

    return-void

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fuelgauge/BatterySipper;

    .line 787
    .local v0, bs:Lcom/android/sec_settings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v0}, Lcom/android/sec_settings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 787
    .end local v0           #bs:Lcom/android/sec_settings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
