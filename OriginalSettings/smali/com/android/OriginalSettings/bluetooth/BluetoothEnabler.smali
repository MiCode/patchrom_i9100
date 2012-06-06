.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 65
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 66
    .local v1, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_0

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 69
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 73
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 78
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 80
    return-void

    .line 71
    .end local v0           #EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 169
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 136
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0245

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 107
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 124
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    const/16 v0, 0xa

    .line 127
    .local v0, bluetoothState:I
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 128
    :cond_1
    const/16 v5, 0xc

    if-ne v0, v5, :cond_4

    move v2, v3

    .line 129
    .local v2, isOn:Z
    :goto_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_5

    move v1, v3

    .line 130
    .local v1, isOff:Z
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_4
    move v2, v4

    .line 128
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_5
    move v1, v4

    .line 129
    goto :goto_2
.end method
