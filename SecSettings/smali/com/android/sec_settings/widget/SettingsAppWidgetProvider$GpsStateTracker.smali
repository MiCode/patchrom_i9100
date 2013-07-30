.class final Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker;
.super Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GpsStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 522
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 524
    .local v0, on:Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 512
    const v0, 0x7f0b0313

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 515
    if-eqz p1, :cond_0

    const v0, 0x7f020108

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020106

    goto :goto_0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 513
    const v0, 0x7f0b0314

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 532
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 537
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;-><init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker;Landroid/content/ContentResolver;ZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 555
    return-void
.end method
