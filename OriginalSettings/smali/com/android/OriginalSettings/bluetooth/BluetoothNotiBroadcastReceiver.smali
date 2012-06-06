.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNotiBroadcastReceiver.java"


# static fields
.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static quickPanelOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private destroyNotification()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 101
    :cond_0
    return-void
.end method

.method private displayNotification(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f0b0119

    .line 76
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f020133

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 79
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v2, settingIntent:Landroid/content/Intent;
    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 85
    .local v1, pending:Landroid/app/PendingIntent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b011a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 87
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 88
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 90
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 91
    sget-object v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v4, 0x1080080

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0xc

    const/high16 v4, -0x8000

    .line 47
    const-string v2, "BluetoothNotiBroadcastReceiver"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 56
    .local v1, state:I
    if-ne v5, v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification()V

    goto :goto_0

    .line 59
    .end local v1           #state:I
    :cond_2
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification()V

    goto :goto_0

    .line 61
    :cond_3
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .restart local v1       #state:I
    const/16 v2, 0xd

    if-ne v2, v1, :cond_4

    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification()V

    goto :goto_0

    .line 66
    :cond_4
    if-ne v5, v1, :cond_0

    .line 67
    sget-boolean v2, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    if-eqz v2, :cond_0

    .line 68
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->displayNotification(Landroid/content/Context;)V

    goto :goto_0
.end method
