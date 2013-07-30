.class public Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;


# instance fields
.field private mAssistiveNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 285
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 100
    const/4 v0, 0x0

    .line 102
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

    .line 104
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 105
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    const v1, 0x7f0b000a

    invoke-static {p0, v3}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 115
    invoke-static {v0, p0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 116
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 110
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 277
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    .line 280
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;->startObserving()V

    .line 282
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    const-class v1, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
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

    .line 169
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 271
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

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

    .line 273
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7f0909cd

    const v8, 0x7f02034d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 229
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 239
    .local v2, notificationManager:Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v4, :cond_0

    .line 240
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 241
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v8, v4, Landroid/app/Notification;->icon:I

    .line 242
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 243
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 244
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 247
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, mIntent:Landroid/content/Intent;
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 249
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0909ce

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    iget-object v4, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 263
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :goto_1
    const-string v4, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleWidgetMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 233
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AccessibilityWidgetProviderAssistiveLight"

    const-string v5, "could not turn off torch light"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_2
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 261
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 256
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catch_1
    move-exception v0

    .line 257
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "AccessibilityWidgetProviderAssistiveLight"

    const-string v5, "could not turn off torch light"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 4
    .parameter "views"
    .parameter "context"

    .prologue
    const v3, 0x7f0b000e

    const v2, 0x7f0b000d

    .line 141
    const v0, 0x7f0b000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 142
    const v0, 0x7f0b000c

    const v1, 0x7f090bcf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const v0, 0x7f020005

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 146
    const v0, 0x7f020001

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 147
    const-string v0, "AccessibilityWidgetProviderAssistiveLight"

    const-string v1, "updateButtons , icon_on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    const v0, 0x7f020004

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 151
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 152
    const-string v0, "AccessibilityWidgetProviderAssistiveLight"

    const-string v1, "updateButtons , icon_off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 128
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 129
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v2, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 131
    invoke-static {p0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->checkObserver(Landroid/content/Context;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 88
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 89
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f02034d

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    const-string v3, "could not turn off torch light"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;->stopObserving()V

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    .line 79
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->checkObserver(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0909cd

    const v7, 0x7f02034d

    const/4 v8, 0x0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 189
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 191
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, buttonId:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 193
    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    const-string v6, "BUTTON_CENTER : "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->toggleWidgetMode(Landroid/content/Context;)V

    .line 225
    :cond_0
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 226
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 201
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 203
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v5, :cond_3

    .line 204
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 205
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v7, v5, Landroid/app/Notification;->icon:I

    .line 206
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 207
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 208
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 211
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, mIntent:Landroid/content/Intent;
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 213
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0909ce

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p1, v6, v7, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 215
    iget-object v5, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v3, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 60
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

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

    .line 62
    invoke-static {p1}, Lcom/android/sec_settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 63
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 64
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
