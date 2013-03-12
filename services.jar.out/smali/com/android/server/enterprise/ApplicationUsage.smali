.class public Lcom/android/server/enterprise/ApplicationUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationUsage$1;,
        Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;,
        Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;,
        Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationUsage"

.field private static appBackGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static appForeGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatsLock:Ljava/lang/Object;

.field private static mUsageHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 78
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 80
    :cond_1
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    .line 82
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 85
    :cond_2
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MDMAppUsageHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;-><init>(Lcom/android/server/enterprise/ApplicationUsage;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    .line 91
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_3
    return-void
.end method

.method private calculateAvgPerMonth(ILjava/lang/String;)I
    .locals 12
    .parameter "launchCount"
    .parameter "packName"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, avg:I
    if-eqz p1, :cond_3

    .line 468
    const/4 v8, 0x0

    .line 469
    .local v8, totalMonth:I
    const/4 v3, 0x0

    .line 470
    .local v3, installedMonth:I
    const/4 v6, 0x0

    .line 471
    .local v6, installedYear:I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationUsage;->getAppInstallTimeInMiliSec(Ljava/lang/String;)J

    move-result-wide v4

    .line 472
    .local v4, installedTime:J
    const-wide/16 v10, -0x1

    cmp-long v10, v10, v4

    if-eqz v10, :cond_0

    .line 473
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/ApplicationUsage;->getMonth(J)I

    move-result v3

    .line 474
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/ApplicationUsage;->getYear(J)I

    move-result v6

    .line 476
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/ApplicationUsage;->getYear(J)I

    move-result v2

    .line 477
    .local v2, currentYear:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/ApplicationUsage;->getMonth(J)I

    move-result v1

    .line 478
    .local v1, currentMonth:I
    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    .line 479
    if-le v2, v6, :cond_1

    .line 480
    sub-int v9, v2, v6

    .line 481
    .local v9, yearDiff:I
    mul-int/lit8 v10, v9, 0xc

    add-int/2addr v8, v10

    .line 483
    .end local v9           #yearDiff:I
    :cond_1
    if-le v1, v3, :cond_2

    .line 484
    sub-int v7, v1, v3

    .line 485
    .local v7, monthDiff:I
    add-int/2addr v8, v7

    .line 488
    .end local v7           #monthDiff:I
    :cond_2
    if-eqz v8, :cond_4

    .line 489
    div-int v0, p1, v8

    .line 493
    .end local v1           #currentMonth:I
    .end local v2           #currentYear:I
    .end local v3           #installedMonth:I
    .end local v4           #installedTime:J
    .end local v6           #installedYear:I
    .end local v8           #totalMonth:I
    :cond_3
    :goto_0
    return v0

    .line 491
    .restart local v1       #currentMonth:I
    .restart local v2       #currentYear:I
    .restart local v3       #installedMonth:I
    .restart local v4       #installedTime:J
    .restart local v6       #installedYear:I
    .restart local v8       #totalMonth:I
    :cond_4
    move v0, p1

    goto :goto_0
.end method

.method private filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;I)[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 9
    .parameter "data"
    .parameter "count"

    .prologue
    const/4 v8, 0x1

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, data1:[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v2, 0x0

    .line 499
    .local v2, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v4, 0x0

    .line 501
    .local v4, installedApps:I
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 504
    .restart local v2       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 505
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v6

    aget-object v7, p1, v3

    iget-object v7, v7, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_0

    .line 506
    add-int/lit8 v4, v4, 0x1

    .line 504
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 510
    :cond_1
    if-nez v4, :cond_2

    move-object v1, v0

    .line 522
    .end local v0           #data1:[Landroid/app/enterprise/AppInfoLastUsage;
    .local v1, data1:[Landroid/app/enterprise/AppInfoLastUsage;
    :goto_1
    return-object v1

    .line 513
    .end local v1           #data1:[Landroid/app/enterprise/AppInfoLastUsage;
    .restart local v0       #data1:[Landroid/app/enterprise/AppInfoLastUsage;
    :cond_2
    new-array v0, v4, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 514
    if-eqz v0, :cond_4

    .line 515
    const/4 v3, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v3, p2, :cond_4

    .line 516
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v6

    aget-object v7, p1, v3

    iget-object v7, v7, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_3

    .line 517
    aget-object v6, p1, v3

    aput-object v6, v0, v5

    .line 518
    add-int/lit8 v5, v5, 0x1

    .line 515
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v5           #j:I
    :cond_4
    move-object v1, v0

    .line 522
    .end local v0           #data1:[Landroid/app/enterprise/AppInfoLastUsage;
    .restart local v1       #data1:[Landroid/app/enterprise/AppInfoLastUsage;
    goto :goto_1
.end method

.method private getAppInstallTimeInMiliSec(Ljava/lang/String;)J
    .locals 8
    .parameter "packageName"

    .prologue
    .line 440
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 442
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 443
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 444
    .local v0, appFile:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 449
    .end local v0           #appFile:Ljava/lang/String;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-wide v4

    .line 447
    :catch_0
    move-exception v2

    .line 448
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 449
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private getMonth(J)I
    .locals 2
    .parameter "timeInMilisec"

    .prologue
    .line 454
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 455
    .local v0, lCal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 456
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private getYear(J)I
    .locals 2
    .parameter "timeInMiliSec"

    .prologue
    .line 460
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 461
    .local v0, lCal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 462
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private updateBackGroundUsageDetails()V
    .locals 11

    .prologue
    .line 286
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, appDb:Lcom/android/server/enterprise/ApplicationUsageDb;
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 288
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 290
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v10, listPackageToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    .local v1, key:Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;

    .line 294
    .local v6, appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    iget-wide v2, v6, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 295
    iget-wide v2, v6, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iget-wide v4, v6, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    .line 298
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_0
    iget-wide v2, v6, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    goto :goto_0

    .line 305
    .end local v1           #key:Ljava/lang/String;
    .end local v6           #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_2

    .line 307
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 312
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10           #listPackageToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private updateForeGroundUsageData()V
    .locals 12

    .prologue
    .line 258
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, appDb:Lcom/android/server/enterprise/ApplicationUsageDb;
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 260
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 262
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v11, listPackageToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, key:Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;

    .line 266
    .local v7, appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    iget-wide v2, v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 267
    iget v2, v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iget-wide v5, v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    .line 269
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_0
    iget v2, v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v7, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    goto :goto_0

    .line 276
    .end local v1           #key:Ljava/lang/String;
    .end local v7           #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 278
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 283
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #listPackageToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public _appLaunchCount(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 152
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 154
    monitor-exit v2

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;

    .line 160
    .local v0, appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    iget v1, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 162
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 170
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/ApplicationUsage;Lcom/android/server/enterprise/ApplicationUsage$1;)V

    .line 166
    .restart local v0       #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    iget v1, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 168
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public _appPauseTime(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 178
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;

    .line 182
    .local v0, appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 185
    .end local v0           #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    :cond_0
    monitor-exit v2

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public _appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 8
    .parameter "lServiceInfo"

    .prologue
    const-wide/16 v6, 0x0

    .line 193
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v2, :cond_2

    iget v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v2, :cond_0

    .line 205
    :cond_2
    iget v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, packageName:Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;

    .line 213
    .local v0, appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    iget-wide v4, v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 216
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 222
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 218
    :cond_4
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/ApplicationUsage;Lcom/android/server/enterprise/ApplicationUsage$1;)V

    .line 219
    .restart local v0       #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 220
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public _appServiceStopTime(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 230
    sget-object v2, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 232
    monitor-exit v2

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;

    .line 236
    .local v0, appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 238
    .end local v0           #appControl:Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public _insertToAppControlDB()V
    .locals 4

    .prologue
    .line 246
    const-string v0, "ApplicationUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationUsage;->updateForeGroundUsageData()V

    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationUsage;->updateBackGroundUsageDetails()V

    .line 251
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :goto_0
    const-string v0, "ApplicationUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public appLaunchCount(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 148
    sget-object v0, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method public appPauseTime(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 174
    sget-object v0, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method

.method public appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 2
    .parameter "lServiceInfo"

    .prologue
    .line 189
    sget-object v0, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public appServiceStopTime(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 226
    sget-object v0, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    const-string v2, "ApplicationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationUsageDb;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 11

    .prologue
    .line 319
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "ApplicationPolicy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationUsage;->insertToAppControlDB()V

    .line 322
    const/4 v7, 0x0

    .line 323
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    const/4 v0, 0x0

    .line 324
    .local v0, data:[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v1, 0x0

    .line 325
    .local v1, data1:[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v3, 0x0

    .line 328
    .local v3, i:I
    :try_start_0
    new-instance v8, Lcom/android/server/enterprise/ApplicationUsageDb;

    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/server/enterprise/ApplicationUsageDb;->getAppUsageData()Ljava/util/HashMap;

    move-result-object v7

    .line 329
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 330
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 331
    .local v6, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v0, v8, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 333
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 334
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/AppInfoLastUsage;

    aput-object v8, v0, v3

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/ApplicationUsage;->filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;I)[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v8, v1

    .line 342
    :goto_1
    return-object v8

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 20

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.sec.MDM_APP_MGMT"

    const-string v19, "ApplicationPolicy"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, data:[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v4, 0x0

    .line 350
    .local v4, data1:[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v11, 0x0

    .line 351
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 352
    .local v13, map1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 355
    .local v6, i:I
    :try_start_0
    sget-object v18, Lcom/android/server/enterprise/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :try_start_1
    const-string v17, "getAvgNoUsagePerMonthOfApp=================="

    const-string v19, "called"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_2
    sget-object v17, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 359
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v15

    .line 360
    .local v15, size:I
    if-eqz v15, :cond_1

    .line 361
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 362
    .local v8, key:Ljava/lang/String;
    sget-object v17, Lcom/android/server/enterprise/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;

    .line 363
    .local v14, pus:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    iget v0, v14, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 364
    iget v0, v14, Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/server/enterprise/ApplicationUsage;->calculateAvgPerMonth(ILjava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 413
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14           #pus:Lcom/android/server/enterprise/ApplicationUsage$AppForeGroundUsage;
    .end local v15           #size:I
    :catchall_0
    move-exception v17

    move-object v11, v12

    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 416
    :catch_0
    move-exception v5

    .line 417
    .local v5, e:Ljava/lang/Exception;
    :goto_2
    const-string v17, "ApplicationUsage::getAvgNoAppUsagePerMonth"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v17, 0x0

    .line 420
    .end local v5           #e:Ljava/lang/Exception;
    :goto_3
    return-object v17

    .line 367
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15       #size:I
    :cond_1
    :try_start_5
    new-instance v17, Lcom/android/server/enterprise/ApplicationUsageDb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationUsage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/ApplicationUsageDb;->getLaunchCountOfAllApplication()Ljava/util/HashMap;

    move-result-object v13

    .line 369
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 370
    if-eqz v13, :cond_4

    .line 371
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 372
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 373
    .local v9, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 374
    .restart local v8       #key:Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 375
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 376
    .local v2, count:I
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v2, v17

    .line 378
    .local v16, totalCount:I
    if-eqz v16, :cond_2

    .line 379
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 381
    .end local v2           #count:I
    .end local v16           #totalCount:I
    :cond_3
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-eqz v17, :cond_2

    .line 382
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 387
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 388
    .restart local v9       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v3, v0, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 390
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 391
    .restart local v8       #key:Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 392
    .restart local v2       #count:I
    new-instance v17, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v17 .. v17}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    aput-object v17, v3, v6

    .line 393
    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    .line 394
    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 396
    goto :goto_5

    .line 398
    .end local v2           #count:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    if-eqz v13, :cond_6

    .line 399
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 400
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 401
    .restart local v9       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v3, v0, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 403
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 404
    .restart local v8       #key:Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 405
    .restart local v2       #count:I
    new-instance v17, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v17 .. v17}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    aput-object v17, v3, v6

    .line 406
    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    .line 407
    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 408
    add-int/lit8 v6, v6, 0x1

    .line 409
    goto :goto_6

    .line 413
    .end local v2           #count:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 414
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/android/server/enterprise/ApplicationUsage;->filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;I)[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v4

    move-object v11, v12

    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v17, v4

    .line 420
    goto/16 :goto_3

    .line 416
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_2

    .line 413
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15           #size:I
    :catchall_1
    move-exception v17

    goto/16 :goto_1
.end method

.method public getLastUsageTime(Ljava/lang/String;)J
    .locals 2
    .parameter "packageName"

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertToAppControlDB()V
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/android/server/enterprise/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method
