.class final Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;
.super Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 340
    packed-switch p0, :pswitch_data_0

    .line 350
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 342
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 348
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 290
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 291
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 294
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 328
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 332
    .local v0, wifiState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 299
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 301
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 302
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
