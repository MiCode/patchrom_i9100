.class final Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 493
    packed-switch p0, :pswitch_data_0

    .line 503
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 495
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 497
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 501
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 450
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$900()Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 451
    invoke-static {p1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 452
    .local v0, manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 453
    const/4 v1, 0x4

    .line 457
    .end local v0           #manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 455
    .restart local v0       #manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$902(Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    .line 457
    .end local v0           #manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$900()Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 441
    const v0, 0x7f0b0310

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 444
    if-eqz p1, :cond_0

    const v0, 0x7f020100

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200ff

    goto :goto_0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 442
    const v0, 0x7f0b0311

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 481
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 485
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 462
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$900()Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 463
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    new-instance v0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
