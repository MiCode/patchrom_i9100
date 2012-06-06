.class final Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;
.super Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 490
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 491
    .local v0, on:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 497
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 501
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 503
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 505
    .local v1, sync:Z
    new-instance v2, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;-><init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    return-void
.end method
