.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 15
    .parameter "t"
    .parameter "e"

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v11

    if-nez v11, :cond_1

    .line 75
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "java.lang.OutOfMemoryError"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 77
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 78
    const-string v11, "AndroidRuntime"

    const-string/jumbo v12, "uncaughtException : Already creating heap profile... So return"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 82
    const-wide/16 v5, 0x0

    .line 86
    .local v5, mFreeMem:J
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, mDataFileStats:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v13, v13

    mul-long v5, v11, v13

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 90
    .local v1, cal:Ljava/util/Calendar;
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "00"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, month:Ljava/lang/String;
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "00"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, day:Ljava/lang/String;
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "00"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xb

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, hour:Ljava/lang/String;
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "00"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, min:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, sysdump_time:Ljava/lang/String;
    const-wide/32 v11, 0x2dc6c00

    cmp-long v11, v5, v11

    if-ltz v11, :cond_2

    .line 97
    const-string v11, "AndroidRuntime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "** Saving dumphprof_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".hprof"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dumphprof_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".hprof"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 109
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #day:Ljava/lang/String;
    .end local v3           #hour:Ljava/lang/String;
    .end local v4           #mDataFileStats:Landroid/os/StatFs;
    .end local v5           #mFreeMem:J
    .end local v7           #min:Ljava/lang/String;
    .end local v8           #month:Ljava/lang/String;
    .end local v9           #sysdump_time:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_3

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    .line 132
    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 134
    :goto_1
    return-void

    .line 104
    .restart local v1       #cal:Ljava/util/Calendar;
    .restart local v2       #day:Ljava/lang/String;
    .restart local v3       #hour:Ljava/lang/String;
    .restart local v4       #mDataFileStats:Landroid/os/StatFs;
    .restart local v5       #mFreeMem:J
    .restart local v7       #min:Ljava/lang/String;
    .restart local v8       #month:Ljava/lang/String;
    .restart local v9       #sysdump_time:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v11, "AndroidRuntime"

    const-string v12, "Failed to generate dumphprof because available size is less than 48M"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #day:Ljava/lang/String;
    .end local v3           #hour:Ljava/lang/String;
    .end local v4           #mDataFileStats:Landroid/os/StatFs;
    .end local v5           #mFreeMem:J
    .end local v7           #min:Ljava/lang/String;
    .end local v8           #month:Ljava/lang/String;
    .end local v9           #sysdump_time:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 125
    .local v10, t2:Ljava/lang/Throwable;
    :try_start_2
    const-string v11, "AndroidRuntime"

    const-string v12, "Error reporting crash"

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    .line 132
    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 110
    .end local v10           #t2:Ljava/lang/Throwable;
    :cond_3
    const/4 v11, 0x1

    :try_start_3
    invoke-static {v11}, Lcom/android/internal/os/RuntimeInit;->access$102(Z)Z

    .line 112
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Landroid/os/IBinder;

    move-result-object v11

    if-nez v11, :cond_4

    .line 113
    const-string v11, "AndroidRuntime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const-string v11, "-k -t -z -d -o /data/log/dumpstate_sys_error"

    invoke-static {v11}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 121
    :goto_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Landroid/os/IBinder;

    move-result-object v12

    new-instance v13, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v11, v12, v13}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    .line 132
    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 117
    :cond_4
    :try_start_4
    const-string v11, "AndroidRuntime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FATAL EXCEPTION: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 131
    :catchall_0
    move-exception v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {v12}, Landroid/os/Process;->killProcess(I)V

    .line 132
    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    throw v11

    .line 126
    .restart local v10       #t2:Ljava/lang/Throwable;
    :catch_1
    move-exception v11

    goto/16 :goto_2
.end method
