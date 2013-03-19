.class Lcom/android/settings/DrivingModeWidget$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DrivingModeWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DrivingModeWidget;
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
    .line 210
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 211
    iput-object p2, p0, Lcom/android/settings/DrivingModeWidget$SettingsObserver;->mContext:Landroid/content/Context;

    .line 212
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/DrivingModeWidget$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/DrivingModeWidget;->updateWidget(Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings/DrivingModeWidget$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "driving_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/DrivingModeWidget$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    return-void
.end method
