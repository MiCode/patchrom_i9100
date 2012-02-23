.class public Lcom/android/server/enterprise/DateTimePolicy;
.super Landroid/app/enterprise/IDateTimePolicy$Stub;
.source "DateTimePolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 30
    iput-object p1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private enforceDateTimePermission()I
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DATE_TIME"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getAutomaticTime()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, dateFormat:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040080

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_1
    :goto_0
    return-object v0

    .line 141
    :cond_2
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const-string v0, "DD/MM/YYYY"

    goto :goto_0

    .line 143
    :cond_3
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    const-string v0, "MM/DD/YYYY"

    goto :goto_0

    .line 145
    :cond_4
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const-string v0, "YYYY/MM/DD"

    goto :goto_0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDaylightSavingTime()Z
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 171
    .local v0, tz:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public getTimeFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "24"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAutomaticTime(Z)Z
    .locals 8
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 155
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    if-eqz p1, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 157
    .local v0, ret:Z
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "auto_time_zone"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    and-int/2addr v0, v3

    .line 159
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    return v0

    .end local v0           #ret:Z
    :cond_0
    move v3, v5

    .line 155
    goto :goto_0

    .restart local v0       #ret:Z
    :cond_1
    move v4, v5

    .line 157
    goto :goto_1
.end method

.method public setDateFormat(Ljava/lang/String;)Z
    .locals 5
    .parameter "format"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 118
    const-string v3, "MM/DD/YYYY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string p1, "MM-dd-yyyy"

    .line 128
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 129
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 131
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    .end local v0           #ret:Z
    .end local v1           #token:J
    :goto_1
    return v0

    .line 120
    :cond_0
    const-string v3, "DD/MM/YYYY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const-string p1, "dd-MM-yyyy"

    goto :goto_0

    .line 122
    :cond_1
    const-string v3, "YYYY/MM/DD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    const-string p1, "yyyy-MM-dd"

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDateTime(J)Z
    .locals 7
    .parameter "millis"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->getAutomaticTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 56
    .local v0, token:J
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setTimeFormat(Ljava/lang/String;)Z
    .locals 6
    .parameter "format"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 94
    const-string v4, "12"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "24"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 104
    .local v0, ret:Z
    :goto_0
    return v0

    .line 97
    .end local v0           #ret:Z
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 98
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 100
    .restart local v0       #ret:Z
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, timeChanged:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)Z
    .locals 5
    .parameter "timeZone"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 73
    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->getAutomaticTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v3, 0x0

    .line 81
    :goto_0
    return v3

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 78
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 79
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 80
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    const/4 v3, 0x1

    goto :goto_0
.end method
