.class public Lcom/android/sec_settings/wifi/WifiTimerService;
.super Landroid/app/Service;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSheduleHandler:Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

.field private mSheduleHandlerThread:Ljava/lang/Thread;

.field final wifiOffNotificationIcon:I

.field final wifiOnNotificationIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7f02034f

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->wifiOnNotificationIcon:I

    .line 48
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->wifiOffNotificationIcon:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/wifi/WifiTimerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->cancelAllAlarms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/wifi/WifiTimerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->sheduleAllAlarms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelAllAlarms()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 142
    const-string v4, "WifiTimer"

    const-string v5, "cancelAllAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d1

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 146
    .local v2, startPending:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 148
    .local v3, stopPending:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 149
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 150
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
    return-void
.end method

.method private cancelStartAlarms()V
    .locals 6

    .prologue
    .line 154
    const-string v3, "WifiTimer"

    const-string v4, "cancelStartAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 158
    .local v2, startPending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 159
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 160
    return-void
.end method

.method private cancelStopAlarms()V
    .locals 6

    .prologue
    .line 163
    const-string v3, "WifiTimer"

    const-string v4, "cancelStopAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d2

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 167
    .local v2, stopPending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 168
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 169
    return-void
.end method

.method private enableWifi(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 234
    const-string v4, "WifiTimer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableWifi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 238
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    .line 239
    .local v0, allowWifi:Z
    if-nez v0, :cond_0

    .line 240
    const-string v4, "WifiTimer"

    const-string v5, "Wi-Fi is not allowed (Policy)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0           #allowWifi:Z
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 246
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 247
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiTimerService;->showNotification(Ljava/lang/Boolean;)V

    .line 249
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 250
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "wifitimer_wifi_start"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private sheduleAllAlarms()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_start_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->wifiStartAlarm()V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_end_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->wifiStopAlarm()V

    .line 139
    :goto_1
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->cancelStartAlarms()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->cancelStopAlarms()V

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/Boolean;)V
    .locals 13
    .parameter "enable"

    .prologue
    const v12, 0x7f0902cc

    const/16 v11, 0x138d

    const/16 v10, 0x10

    const/4 v9, 0x0

    const v8, 0x7f02034f

    .line 255
    const-string v5, "WifiTimer"

    const-string v6, "showNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/WifiTimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 257
    .local v1, mNM:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 258
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 260
    new-instance v3, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f0902cd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 263
    .local v3, wifiOffNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 266
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f0902cd

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f0902ce

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 270
    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 271
    invoke-virtual {v1, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 287
    .end local v3           #wifiOffNotification:Landroid/app/Notification;
    :goto_0
    return-void

    .line 273
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 274
    new-instance v4, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 277
    .local v4, wifiOnNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v2       #notificationIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 280
    .restart local v0       #contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Lcom/android/sec_settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f0902ce

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 285
    invoke-virtual {v1, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private wifiStartAlarm()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v2, "WifiTimer"

    const-string v3, "wifiStartAlarm"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 175
    .local v8, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "wifitimer_start_time"

    const-string v4, "19:00"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, startTime:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/sec_settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v10

    .line 177
    .local v10, startTimeHour:I
    invoke-static {v9}, Lcom/android/sec_settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v11

    .line 179
    .local v11, startTimeMinute:I
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 181
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 182
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 183
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 184
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 185
    const-string v2, "WifiTimer"

    const-string v3, "Add one day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 188
    :cond_0
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SheduledTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v7, alarm_intent:Landroid/content/Intent;
    const-string v2, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v3, 0x138c

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v2, "wifisheduler_alarm_type"

    const/16 v3, 0x3e9

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7d1

    const/high16 v4, 0x800

    invoke-static {v2, v3, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 195
    .local v6, pending:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 196
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 197
    return-void
.end method

.method private wifiStopAlarm()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 200
    const-string v2, "WifiTimer"

    const-string v3, "wifiStopAlarm"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 203
    .local v8, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "wifitimer_end_time"

    const-string v4, "21:00"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, endTime:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/sec_settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v10

    .line 205
    .local v10, endTimeHour:I
    invoke-static {v9}, Lcom/android/sec_settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v11

    .line 207
    .local v11, endTimeMinute:I
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 208
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 211
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 212
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 214
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v7, alarm_intent:Landroid/content/Intent;
    const-string v2, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v3, 0x138c

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v2, "wifisheduler_alarm_type"

    const/16 v3, 0x3ea

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7d2

    const/high16 v4, 0x800

    invoke-static {v2, v3, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 219
    .local v6, pending:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 220
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SheduleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    .line 59
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    new-instance v1, Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;-><init>(Lcom/android/sec_settings/wifi/WifiTimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

    .line 62
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "WifiTimer"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 91
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 70
    const-string v1, "WifiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 75
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1, v0}, Lcom/android/sec_settings/wifi/WifiTimerService$SheduleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
