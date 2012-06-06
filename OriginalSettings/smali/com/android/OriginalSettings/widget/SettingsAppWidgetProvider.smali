.class public Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mRP:Landroid/app/enterprise/IRestrictionPolicy;

.field private static final sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 61
    sput-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 84
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 90
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 96
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 116
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 117
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 119
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
    .end array-data

    .line 90
    :array_1
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data

    .line 96
    :array_2
    .array-data 0x4
        0x13t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 906
    return-void
.end method

.method static synthetic access$400()Landroid/app/enterprise/IRestrictionPolicy;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/enterprise/IRestrictionPolicy;)Landroid/app/enterprise/IRestrictionPolicy;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    return-object p0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 658
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04009f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 660
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f080122

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 662
    const v1, 0x7f080133

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 665
    const v1, 0x7f08012e

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 668
    const v1, 0x7f08012a

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 670
    const v1, 0x7f080126

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 674
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 675
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 612
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 615
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 617
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 801
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 803
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 810
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return v0

    .line 808
    :catch_0
    move-exception v2

    .line 810
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 821
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 823
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 826
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_0

    .line 831
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v4

    .line 826
    goto :goto_0

    .line 828
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

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

    .line 831
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    const-class v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 742
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
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

    .line 744
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 746
    return-object v0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 844
    :try_start_0
    sget-object v5, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v5, :cond_0

    .line 845
    const-string v5, "restriction_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v5

    sput-object v5, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 847
    :cond_0
    sget-object v5, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 848
    const v5, 0x10401b3

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 903
    :cond_1
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v3

    .line 852
    .local v3, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 855
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 857
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 859
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 861
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 863
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 865
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 871
    :cond_3
    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    .line 872
    const/16 v0, 0x1e

    .line 873
    const/4 v1, 0x0

    .line 883
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 886
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    :goto_2
    if-nez v1, :cond_1

    .line 894
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 895
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 898
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_1
    move-exception v3

    .line 899
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v5, "SettingsAppWidgetProvider"

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

    .line 874
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_4
    const/16 v5, 0x66

    if-ge v0, v5, :cond_5

    .line 875
    const/16 v0, 0x66

    goto :goto_1

    .line 876
    :cond_5
    const/16 v5, 0xff

    if-ge v0, v5, :cond_6

    .line 877
    const/16 v0, 0xff

    goto :goto_1

    .line 879
    :cond_6
    const/4 v1, 0x1

    .line 880
    const/16 v0, 0x1e

    goto :goto_1

    .line 891
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 900
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_2
    move-exception v3

    .line 901
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SettingsAppWidgetProvider"

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
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f020014

    const/16 v4, 0x4c

    const v3, 0x7f0801fa

    const v2, 0x7f080134

    .line 698
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 699
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 700
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 701
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 703
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const v1, 0x7f02003e

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 706
    invoke-virtual {p0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 730
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 711
    .local v0, brightness:I
    const/16 v1, 0xcc

    if-le v0, v1, :cond_1

    .line 712
    const v1, 0x7f02003f

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 722
    :goto_1
    if-le v0, v4, :cond_3

    .line 723
    invoke-virtual {p0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 714
    :cond_1
    if-le v0, v4, :cond_2

    .line 715
    const v1, 0x7f020040

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 718
    :cond_2
    const v1, 0x7f020041

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 726
    :cond_3
    const v1, 0x7f020011

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 684
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 686
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 687
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 688
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 689
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 642
    const-class v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 644
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 648
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 649
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 650
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 652
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 633
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 637
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 638
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 757
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 790
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 791
    :cond_1
    return-void

    .line 761
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 762
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 763
    :cond_3
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 764
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 765
    :cond_4
    sget-object v3, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 767
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 768
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 770
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 771
    .local v1, buttonId:I
    if-nez v1, :cond_6

    .line 772
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 773
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 774
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 775
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 776
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 777
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 778
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 779
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 780
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 623
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 625
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 626
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    return-void
.end method
