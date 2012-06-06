.class public Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;
.super Landroid/app/Service;
.source "PowerSavingModeWidgetBatteryService.java"


# instance fields
.field mBRBattery:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService$1;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;->mBRBattery:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;->mBRBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;->mBRBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetBatteryService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    const/4 v1, 0x1

    return v1
.end method
