.class Landroid/hardware/contextaware/utilbundle/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static final LOGTYPE_GPSPOS:I = 0x1

.field private static instance:Landroid/hardware/contextaware/utilbundle/FileLogger;


# instance fields
.field private final mDataOutputStream:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    return-void
.end method

.method protected static getInstance()Landroid/hardware/contextaware/utilbundle/FileLogger;
    .locals 2

    .prologue
    .line 48
    const-class v1, Landroid/hardware/contextaware/utilbundle/FileLogger;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->instance:Landroid/hardware/contextaware/utilbundle/FileLogger;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/hardware/contextaware/utilbundle/FileLogger;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/FileLogger;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->instance:Landroid/hardware/contextaware/utilbundle/FileLogger;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    sget-object v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->instance:Landroid/hardware/contextaware/utilbundle/FileLogger;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"
    .parameter "text"

    .prologue
    .line 145
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    const-string v1, "This file dose not exist."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected loggingForKML(Ljava/lang/String;JFDDDFFJ)V
    .locals 5
    .parameter "fileName"
    .parameter "sysTime"
    .parameter "accuracy"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "heading"
    .parameter "speed"
    .parameter "timeStamp"

    .prologue
    .line 184
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    :cond_0
    const-string v3, "This file dose not exist."

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 191
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 192
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 193
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 194
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p5, p6}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 195
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p7, p8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 196
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p9, p10}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 197
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 198
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 199
    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    move-wide/from16 v0, p13

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected startLogging(Ljava/lang/String;)Z
    .locals 24
    .parameter "fileName"

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 67
    :cond_0
    const-string v20, "This file is created already."

    invoke-static/range {v20 .. v20}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 68
    const/16 v20, 0x0

    .line 107
    :goto_0
    return v20

    .line 71
    :cond_1
    const/16 v18, 0x0

    .line 72
    .local v18, file:Ljava/io/File;
    const/16 v16, 0x0

    .line 75
    .local v16, dataOutputStream:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 76
    .local v3, curTime:Ljava/util/Calendar;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v14, v0

    .line 77
    .local v14, curTimeYear:J
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-long v10, v0

    .line 78
    .local v10, curTimeMonth:J
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v4, v0

    .line 79
    .local v4, curTimeDay:J
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v6, v0

    .line 80
    .local v6, curTimeHour:J
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 81
    .local v8, curTimeMinute:J
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v12, v0

    .line 83
    .local v12, curTimeSecond:J
    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/sdcard/%04dY%02dM%02dD%02dH%02dM%02dS_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".log"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v18           #file:Ljava/io/File;
    .local v19, file:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v20

    if-nez v20, :cond_2

    .line 89
    const-string v20, "createNewFile() error"

    invoke-static/range {v20 .. v20}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 92
    .end local v3           #curTime:Ljava/util/Calendar;
    .end local v4           #curTimeDay:J
    .end local v6           #curTimeHour:J
    .end local v8           #curTimeMinute:J
    .end local v10           #curTimeMonth:J
    .end local v12           #curTimeSecond:J
    .end local v14           #curTimeYear:J
    .end local v19           #file:Ljava/io/File;
    .restart local v18       #file:Ljava/io/File;
    :catch_0
    move-exception v17

    .line 93
    .local v17, e:Ljava/io/IOException;
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    .line 94
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 98
    .end local v17           #e:Ljava/io/IOException;
    .end local v18           #file:Ljava/io/File;
    .restart local v3       #curTime:Ljava/util/Calendar;
    .restart local v4       #curTimeDay:J
    .restart local v6       #curTimeHour:J
    .restart local v8       #curTimeMinute:J
    .restart local v10       #curTimeMonth:J
    .restart local v12       #curTimeSecond:J
    .restart local v14       #curTimeYear:J
    .restart local v19       #file:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v16, Ljava/io/DataOutputStream;

    .end local v16           #dataOutputStream:Ljava/io/DataOutputStream;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .restart local v16       #dataOutputStream:Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 99
    .end local v16           #dataOutputStream:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v17

    .line 100
    .local v17, e:Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    .line 101
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 92
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v16       #dataOutputStream:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v17

    move-object/from16 v18, v19

    .end local v19           #file:Ljava/io/File;
    .restart local v18       #file:Ljava/io/File;
    goto :goto_1
.end method

.method protected stopLogging(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 133
    :goto_0
    return v1

    .line 124
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/FileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v1, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    move v1, v2

    .line 127
    goto :goto_0
.end method
