.class Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1150
    iput-object p2, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1151
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 1169
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1154
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1156
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1158
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1160
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1164
    return-void
.end method
