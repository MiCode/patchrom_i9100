.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityWidgetProviderTurnoffAllSounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;
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
    .line 225
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 226
    iput-object p2, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->mContext:Landroid/content/Context;

    .line 227
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateWidget(Landroid/content/Context;)V

    .line 241
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 236
    return-void
.end method
