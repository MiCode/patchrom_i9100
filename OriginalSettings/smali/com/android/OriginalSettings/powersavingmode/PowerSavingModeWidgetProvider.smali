.class public Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;,
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;,
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mContext:Landroid/content/Context;

.field private static mIsAirplaneModeOn:I

.field private static mIsBatteryStateLow:I

.field private static mIsfirstPanel:Z

.field private static mRP:Landroid/app/enterprise/IRestrictionPolicy;

.field private static final sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.OriginalSettings"

    const-string v2, "com.android.OriginalSettings.powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 59
    sput-object v3, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 103
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 109
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    .line 116
    sput v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    .line 124
    sput v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 1144
    return-void
.end method

.method static synthetic access$500()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 582
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040065

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 584
    const v1, 0x7f080122

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 586
    const v1, 0x7f080126

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 588
    const v1, 0x7f08012a

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 590
    const v1, 0x7f080133

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/OriginalSettings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 597
    const v2, 0x7f08013c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 598
    const v1, 0x7f08012e

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 600
    const v1, 0x7f080136

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 603
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.OriginalSettings"

    const-string v4, "com.android.OriginalSettings.powersavingmode.PowerSavingModeTips"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 607
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 608
    const v2, 0x7f080139

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 609
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 610
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 533
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    .line 536
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->startObserving()V

    .line 538
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 988
    const/4 v0, 0x0

    .line 990
    .local v0, brightness:I
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 992
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_0

    .line 993
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 995
    const-string v4, "powersaving modewidget provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness brightness= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1001
    .end local v0           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .local v1, brightness:I
    :goto_0
    return v1

    .line 998
    .end local v1           #brightness:I
    .restart local v0       #brightness:I
    :catch_0
    move-exception v2

    .line 999
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v0

    .line 1001
    .end local v0           #brightness:I
    .restart local v1       #brightness:I
    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1012
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1014
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1017
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_0

    .line 1022
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v4

    .line 1017
    goto :goto_0

    .line 1019
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 1020
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 1022
    goto :goto_0
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 967
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 817
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 818
    const-class v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 819
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 821
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 828
    return-object v0
.end method

.method private static getScreentimeout(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 1098
    const/16 v1, 0x7530

    .line 1100
    .local v1, screentimeout:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1105
    :goto_0
    return v1

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PowerSavingModeWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreentimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 919
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 920
    .local v0, sync:Z
    return v0
.end method

.method public static setBatteryState(I)V
    .locals 0
    .parameter "batteyrState"

    .prologue
    .line 1140
    sput p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    .line 1141
    return-void
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 1035
    :try_start_0
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v5, :cond_0

    .line 1036
    const-string v5, "restriction_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v5

    sput-object v5, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 1038
    :cond_0
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_2

    .line 1095
    :cond_1
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v3

    .line 1042
    .local v3, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1045
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    sget v5, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    if-ne v5, v7, :cond_3

    .line 1046
    const-string v5, "PowerSavingModeWidgetProvider"

    const-string v6, "Battery Level is critical low "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1090
    :catch_1
    move-exception v3

    .line 1091
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1050
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 1052
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 1053
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1054
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1055
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 1057
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1059
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1064
    :cond_4
    if-ne v1, v7, :cond_5

    .line 1065
    const/16 v0, 0x1e

    .line 1066
    const/4 v1, 0x0

    .line 1075
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1078
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    :goto_2
    if-nez v1, :cond_1

    .line 1086
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 1087
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1092
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_2
    move-exception v3

    .line 1093
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1067
    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_5
    const/16 v5, 0x66

    if-ge v0, v5, :cond_6

    .line 1068
    const/16 v0, 0x66

    goto :goto_1

    .line 1069
    :cond_6
    const/16 v5, 0xff

    if-ge v0, v5, :cond_7

    .line 1070
    const/16 v0, 0xff

    goto :goto_1

    .line 1072
    :cond_7
    const/4 v1, 0x1

    .line 1073
    const/16 v0, 0x1e

    goto :goto_1

    .line 1083
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private toogleScreentimeout(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1113
    :try_start_0
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v4, :cond_0

    .line 1114
    const-string v4, "restriction_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v4

    sput-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 1116
    :cond_0
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1123
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v2

    .line 1124
    .local v2, screentimeout:I
    const/4 v4, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1127
    .local v3, timeTable:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1128
    aget v4, v3, v1

    if-ne v2, v4, :cond_3

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 1129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    add-int/lit8 v6, v1, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1133
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1124
    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
    .end array-data
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 9
    .parameter "views"
    .parameter "context"

    .prologue
    const v8, 0x7f020111

    const v7, 0x7f020110

    const v6, 0x7f0a000e

    const/4 v5, 0x0

    const v4, 0x7f0a000d

    .line 635
    const v1, 0x7f080122

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 636
    const v1, 0x7f080126

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 637
    const v1, 0x7f08012a

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 638
    const v1, 0x7f08013c

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 639
    const v1, 0x7f08012e

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 640
    const v1, 0x7f080136

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 641
    const v1, 0x7f080139

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 642
    sget-object v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 674
    :pswitch_0
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : WiFi state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    const v1, 0x7f080134

    const v2, 0x7f0200b7

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 679
    const v1, 0x7f080135

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 694
    :goto_1
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    const v1, 0x7f08012f

    const v2, 0x7f0200d2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 696
    const v1, 0x7f080130

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 697
    const v1, 0x7f080131

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 703
    :goto_2
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 704
    const v1, 0x7f08012b

    const v2, 0x7f0200c2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 705
    const v1, 0x7f08012c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 706
    const v1, 0x7f08012d

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 712
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    .line 714
    sget v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 715
    const v1, 0x7f080127

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 716
    const v1, 0x7f080128

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 718
    const v1, 0x7f080129

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 766
    :goto_4
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v0

    .line 767
    .local v0, screentimeout:I
    sparse-switch v0, :sswitch_data_0

    .line 793
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : screentimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_5
    const v1, 0x7f080138

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 807
    return-void

    .line 644
    .end local v0           #screentimeout:I
    :pswitch_1
    const v1, 0x7f080123

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 645
    const v1, 0x7f080124

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 647
    const v1, 0x7f080125

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 650
    :pswitch_2
    const v1, 0x7f080123

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 651
    const v1, 0x7f080124

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 653
    const v1, 0x7f080125

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 661
    :pswitch_3
    sget-object v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    const v1, 0x7f080123

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 663
    const v1, 0x7f080124

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 665
    const v1, 0x7f080125

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 667
    :cond_0
    const v1, 0x7f080123

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 668
    const v1, 0x7f080124

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 670
    const v1, 0x7f080125

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 681
    :cond_1
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .line 682
    const v1, 0x7f080134

    const v2, 0x7f0200bf

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 683
    const v1, 0x7f080135

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    .line 685
    :cond_2
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x66

    if-lt v1, v2, :cond_3

    .line 686
    const v1, 0x7f080134

    const v2, 0x7f0200be

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 687
    const v1, 0x7f080135

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    .line 690
    :cond_3
    const v1, 0x7f080134

    const v2, 0x7f0200bb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 691
    const v1, 0x7f080135

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    .line 699
    :cond_4
    const v1, 0x7f08012f

    const v2, 0x7f0200d1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 700
    const v1, 0x7f080130

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 701
    const v1, 0x7f080131

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 708
    :cond_5
    const v1, 0x7f08012b

    const v2, 0x7f0200c1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 709
    const v1, 0x7f08012c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 710
    const v1, 0x7f08012d

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 720
    :cond_6
    sget-object v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 753
    :pswitch_4
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : BT state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 722
    :pswitch_5
    const v1, 0x7f080127

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 723
    const v1, 0x7f080128

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 725
    const v1, 0x7f080129

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 728
    :pswitch_6
    const v1, 0x7f080127

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 729
    const v1, 0x7f080128

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 731
    const v1, 0x7f080129

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 739
    :pswitch_7
    sget-object v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 740
    const v1, 0x7f080127

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 741
    const v1, 0x7f080128

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 743
    const v1, 0x7f080129

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 745
    :cond_7
    const v1, 0x7f080127

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 747
    const v1, 0x7f080128

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 749
    const v1, 0x7f080129

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 769
    .restart local v0       #screentimeout:I
    :sswitch_0
    const v1, 0x7f080137

    const v2, 0x7f0200c9

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 773
    :sswitch_1
    const v1, 0x7f080137

    const v2, 0x7f0200cc

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 777
    :sswitch_2
    const v1, 0x7f080137

    const v2, 0x7f0200ca

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 781
    :sswitch_3
    const v1, 0x7f080137

    const v2, 0x7f0200cb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 785
    :sswitch_4
    const v1, 0x7f080137

    const v2, 0x7f0200cd

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 789
    :sswitch_5
    const v1, 0x7f080137

    const v2, 0x7f0200c8

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 767
    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
    .end sparse-switch

    .line 720
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 619
    invoke-static {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 622
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 623
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 624
    invoke-static {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 625
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.OriginalSettings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 569
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 570
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->stopObserving()V

    .line 571
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    .line 574
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 576
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 554
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.OriginalSettings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 557
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 561
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 839
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 840
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 842
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 909
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 910
    :cond_1
    return-void

    .line 843
    :cond_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 844
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 845
    :cond_3
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 846
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 857
    :cond_4
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 860
    :cond_5
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 862
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 865
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v4, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 866
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 867
    :cond_7
    const-string v4, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 868
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 869
    :cond_8
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 870
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 871
    :cond_9
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 872
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 873
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 874
    .local v1, buttonId:I
    if-ne v1, v5, :cond_a

    .line 875
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 876
    :cond_a
    const/4 v4, 0x2

    if-ne v1, v4, :cond_c

    .line 877
    sget v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    if-ne v4, v5, :cond_b

    .line 878
    const v4, 0x7f0b0245

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 881
    :cond_b
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 883
    :cond_c
    const/4 v4, 0x3

    if-ne v1, v4, :cond_d

    .line 884
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 886
    :cond_d
    const/4 v4, 0x4

    if-ne v1, v4, :cond_e

    .line 887
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 888
    :cond_e
    const/4 v4, 0x5

    if-ne v1, v4, :cond_f

    .line 889
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 891
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 894
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_f
    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    .line 895
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->toogleScreentimeout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 897
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    sget-object v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->mContext:Landroid/content/Context;

    .line 544
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 546
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 547
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    return-void
.end method
