.class public Lcom/android/OriginalSettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 53
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 79
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 81
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 84
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 207
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 179
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 183
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 140
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0245

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 148
    .local v0, wifiApState:I
    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0244

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 122
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 125
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 128
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 129
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v3, :cond_4

    move v0, v3

    .line 130
    .local v0, isDisabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3
    move v1, v4

    .line 128
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_4
    move v0, v4

    .line 129
    goto :goto_2
.end method
