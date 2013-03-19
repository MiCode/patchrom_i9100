.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityWidgetProviderMonoAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;
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
    .line 234
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 235
    iput-object p2, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;->mContext:Landroid/content/Context;

    .line 236
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->updateWidget(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "mono_audio_db"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    return-void
.end method
