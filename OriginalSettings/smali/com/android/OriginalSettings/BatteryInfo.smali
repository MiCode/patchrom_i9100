.class public Lcom/android/OriginalSettings/BatteryInfo;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "BatteryInfo.java"


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLevel:Landroid/widget/TextView;

.field private mPower:Landroid/widget/TextView;

.field private mScale:Landroid/widget/TextView;

.field private mScreenStats:Landroid/os/IPowerManager;

.field private mStatus:Landroid/widget/TextView;

.field private mTechnology:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUptime:Landroid/widget/TextView;

.field private mVoltage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/android/OriginalSettings/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/BatteryInfo$1;-><init>(Lcom/android/OriginalSettings/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/OriginalSettings/BatteryInfo$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/BatteryInfo$2;-><init>(Lcom/android/OriginalSettings/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/BatteryInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/BatteryInfo;->updateBatteryStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mScale:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/BatteryInfo;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mPower:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mHealth:Landroid/widget/TextView;

    return-object v0
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .locals 3
    .parameter "x"

    .prologue
    .line 69
    div-int/lit8 v0, p1, 0xa

    .line 70
    .local v0, tens:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v0, 0xa

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateBatteryStats()V
    .locals 5

    .prologue
    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 180
    .local v0, uptime:J
    iget-object v2, p0, Lcom/android/OriginalSettings/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->setContentView(I)V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 151
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mStatus:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mPower:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mLevel:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mScale:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mHealth:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mUptime:Landroid/widget/TextView;

    .line 162
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 163
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mScreenStats:Landroid/os/IPowerManager;

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/OriginalSettings/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/BatteryInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method
