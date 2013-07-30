.class public Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderTurnoffAllSounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderTurnoffAllSounds"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 220
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 84
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    const v1, 0x7f0b000a

    invoke-static {p0, v3}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 94
    invoke-static {v0, p0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 95
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 89
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 213
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    .line 215
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->startObserving()V

    .line 217
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    const-class v1, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
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

    .line 150
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 207
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, all_sound_off_intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    const-string v1, "mute"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    const-string v1, "mute"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 4
    .parameter "views"
    .parameter "context"

    .prologue
    const v3, 0x7f0b000e

    const v2, 0x7f0b000d

    .line 122
    const v0, 0x7f0b000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    const v0, 0x7f0b000c

    const v1, 0x7f090bd1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f020009

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 127
    const v0, 0x7f020001

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 128
    const-string v0, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v1, "updateButtons , icon_on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    const v0, 0x7f020008

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 132
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 133
    const-string v0, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v1, "updateButtons , icon_off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 107
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 109
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v2, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 112
    invoke-static {p0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->checkObserver(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->stopObserving()V

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    .line 73
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->checkObserver(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, buttonId:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 174
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v3, "BUTTON_CENTER : "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->toggleWidgetMode(Landroid/content/Context;)V

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateWidget(Landroid/content/Context;)V

    .line 186
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 53
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 57
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 58
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
