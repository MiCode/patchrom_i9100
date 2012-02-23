.class public Lcom/android/server/ShutdownLoggerService;
.super Landroid/app/IShutdownLogger$Stub;
.source "ShutdownLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;
    }
.end annotation


# static fields
.field private static final MAX_LOG_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ShutdownLogger"

.field private static final autoTestFile:Ljava/lang/String; = "/mnt/.lfs/debug_level.inf"

.field private static final shutdownCallStack:Ljava/lang/String; = "/data/log/dumpstate_shutdown.txt"

.field private static final shutdownTimeLogFile:Ljava/lang/String; = "/data/log/off.p"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/IShutdownLogger$Stub;-><init>()V

    .line 331
    return-void
.end method

.method public static __recordShutdownTime()V
    .locals 19

    .prologue
    .line 137
    new-instance v14, Ljava/io/File;

    const-string v17, "/data/log/off.p"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v14, logFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 139
    .local v6, fr:Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 140
    .local v12, lnr:Ljava/io/LineNumberReader;
    const/4 v3, 0x0

    .line 141
    .local v3, count:I
    const/4 v4, -0x1

    .line 142
    .local v4, endIndex:I
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 143
    .local v15, logs:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    .line 144
    const/16 v17, 0x0

    aput-object v17, v15, v10

    .line 143
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 149
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v17, "/data/log/off.p"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v13, Ljava/io/LineNumberReader;

    invoke-direct {v13, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 151
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .local v13, lnr:Ljava/io/LineNumberReader;
    :try_start_2
    const-string v11, ""

    .line 152
    .local v11, lineRead:Ljava/lang/String;
    :goto_1
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 153
    const-string v17, "END"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 154
    move v4, v3

    .line 156
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v3

    .line 157
    add-int/lit8 v17, v3, 0x1

    rem-int/lit8 v3, v17, 0x14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_1

    .line 163
    :cond_2
    if-eqz v13, :cond_3

    .line 164
    :try_start_3
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    .line 166
    :cond_3
    if-eqz v7, :cond_4

    .line 167
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :cond_4
    :goto_2
    move-object v12, v13

    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    move-object v6, v7

    .line 176
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #lineRead:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :cond_5
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    .line 177
    move v4, v3

    .line 181
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ShutdownLoggerService;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v4

    .line 182
    add-int/lit8 v17, v4, 0x1

    rem-int/lit8 v4, v17, 0x14

    .line 183
    const-string v17, "END\n"

    aput-object v17, v15, v4

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, bw:Ljava/io/BufferedWriter;
    const/4 v8, 0x0

    .line 189
    .local v8, fw:Ljava/io/FileWriter;
    :try_start_4
    new-instance v9, Ljava/io/FileWriter;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v14, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    .end local v8           #fw:Ljava/io/FileWriter;
    .local v9, fw:Ljava/io/FileWriter;
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 191
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .local v2, bw:Ljava/io/BufferedWriter;
    const/4 v10, 0x0

    :goto_4
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    .line 192
    :try_start_6
    aget-object v17, v15, v10

    if-eqz v17, :cond_7

    .line 193
    aget-object v17, v15, v10

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 191
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 159
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    .line 160
    .local v5, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    if-eqz v12, :cond_8

    .line 164
    :try_start_8
    invoke-virtual {v12}, Ljava/io/LineNumberReader;->close()V

    .line 166
    :cond_8
    if-eqz v6, :cond_5

    .line 167
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 170
    :catch_1
    move-exception v5

    .line 171
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 162
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 163
    :goto_6
    if-eqz v12, :cond_9

    .line 164
    :try_start_9
    invoke-virtual {v12}, Ljava/io/LineNumberReader;->close()V

    .line 166
    :cond_9
    if-eqz v6, :cond_a

    .line 167
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 162
    :cond_a
    :goto_7
    throw v17

    .line 200
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :cond_b
    if-eqz v2, :cond_c

    .line 201
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 203
    :cond_c
    if-eqz v9, :cond_d

    .line 204
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_d
    :goto_8
    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    move-object v1, v2

    .line 211
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :cond_e
    :goto_9
    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/android/server/ShutdownLoggerService$1;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/ShutdownLoggerService$1;-><init>()V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    .local v16, thread:Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 224
    return-void

    .line 196
    .end local v16           #thread:Ljava/lang/Thread;
    :catch_2
    move-exception v5

    .line 197
    .restart local v5       #ex:Ljava/lang/Exception;
    :goto_a
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 200
    if-eqz v1, :cond_f

    .line 201
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 203
    :cond_f
    if-eqz v8, :cond_e

    .line 204
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_9

    .line 206
    :catch_3
    move-exception v5

    .line 207
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 199
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    .line 200
    :goto_b
    if-eqz v1, :cond_10

    .line 201
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 203
    :cond_10
    if-eqz v8, :cond_11

    .line 204
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 199
    :cond_11
    :goto_c
    throw v17

    .line 170
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v8           #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v5

    .line 171
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 206
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_5
    move-exception v5

    .line 207
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 206
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_6
    move-exception v5

    .line 207
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 170
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v9           #fw:Ljava/io/FileWriter;
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v11       #lineRead:Ljava/lang/String;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_7
    move-exception v5

    .line 171
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 199
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #lineRead:Ljava/lang/String;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v9       #fw:Ljava/io/FileWriter;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    goto :goto_b

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catchall_3
    move-exception v17

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_b

    .line 196
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_8
    move-exception v5

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    goto :goto_a

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_9
    move-exception v5

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_a

    .line 162
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_4
    move-exception v17

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v6           #fr:Ljava/io/FileReader;
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catchall_5
    move-exception v17

    move-object v12, v13

    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 159
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v5

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v6           #fr:Ljava/io/FileReader;
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_b
    move-exception v5

    move-object v12, v13

    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_5
.end method

.method public static appendLogByHandler(Ljava/lang/String;)V
    .locals 19
    .parameter "methodName"

    .prologue
    .line 227
    new-instance v15, Ljava/io/File;

    const-string v17, "/data/log/dumpstate_shutdown.txt"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v15, logFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 229
    .local v4, count:I
    const/4 v5, -0x1

    .line 230
    .local v5, endIndex:I
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 231
    .local v16, logs:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 232
    const/16 v17, 0x0

    aput-object v17, v16, v11

    .line 231
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 236
    const/4 v7, 0x0

    .line 237
    .local v7, fr:Ljava/io/FileReader;
    const/4 v13, 0x0

    .line 239
    .local v13, lnr:Ljava/io/LineNumberReader;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v14, Ljava/io/LineNumberReader;

    invoke-direct {v14, v8}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a

    .line 241
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .local v14, lnr:Ljava/io/LineNumberReader;
    :try_start_2
    const-string v12, ""

    .line 242
    .local v12, lineRead:Ljava/lang/String;
    :goto_1
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_20

    .line 243
    const-string v17, "END"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 244
    move v5, v4

    .line 246
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v4

    .line 247
    add-int/lit8 v17, v4, 0x1

    rem-int/lit8 v4, v17, 0x14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b

    goto :goto_1

    .line 249
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v12           #lineRead:Ljava/lang/String;
    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_0
    move-exception v6

    .line 250
    .local v6, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-eqz v13, :cond_2

    .line 254
    :try_start_4
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    .line 256
    :cond_2
    if-eqz v7, :cond_3

    .line 257
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 259
    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_19

    .line 266
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    :cond_4
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    .line 267
    move v5, v4

    .line 270
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ShutdownLoggerService;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ==> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v5

    .line 271
    add-int/lit8 v17, v5, 0x1

    rem-int/lit8 v5, v17, 0x14

    .line 272
    const-string v17, "END\n"

    aput-object v17, v16, v5

    .line 275
    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_6

    .line 276
    const-string v17, "ShutdownLogger"

    const-string v18, "Errors in creating logFile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v17

    if-nez v17, :cond_7

    .line 280
    const-string v17, "ShutdownLogger"

    const-string v18, "Errors in setReadable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 289
    :cond_7
    const/4 v2, 0x0

    .line 290
    .local v2, bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 292
    .local v9, fw:Ljava/io/FileWriter;
    :try_start_6
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    .line 293
    .end local v9           #fw:Ljava/io/FileWriter;
    .local v10, fw:Ljava/io/FileWriter;
    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    .line 294
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    :goto_4
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_1e

    .line 295
    :try_start_8
    aget-object v17, v16, v11

    if-eqz v17, :cond_8

    .line 296
    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13

    .line 294
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 252
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catchall_0
    move-exception v17

    .line 253
    :goto_5
    if-eqz v13, :cond_9

    .line 254
    :try_start_9
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    .line 256
    :cond_9
    if-eqz v7, :cond_a

    .line 257
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 259
    :cond_a
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 252
    :goto_6
    throw v17

    .line 286
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    :catch_1
    move-exception v6

    .line 287
    .restart local v6       #ex:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 289
    const/4 v2, 0x0

    .line 290
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 292
    .restart local v9       #fw:Ljava/io/FileWriter;
    :try_start_b
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 293
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :try_start_c
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15

    .line 294
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    :goto_7
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_18

    .line 295
    :try_start_d
    aget-object v17, v16, v11

    if-eqz v17, :cond_b

    .line 296
    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_16

    .line 294
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 299
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_2
    move-exception v6

    .line 300
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_8
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 303
    if-eqz v2, :cond_c

    .line 304
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_c
    if-eqz v9, :cond_d

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 289
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_d
    :goto_9
    throw v17

    .line 299
    .restart local v6       #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 300
    :goto_a
    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 303
    if-eqz v2, :cond_e

    .line 304
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_e
    if-eqz v9, :cond_f

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14

    .line 329
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_f
    :goto_b
    return-void

    .line 260
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_4
    move-exception v6

    .line 261
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 260
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v12       #lineRead:Ljava/lang/String;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :catch_5
    move-exception v6

    .line 261
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v12           #lineRead:Ljava/lang/String;
    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 289
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    const/4 v2, 0x0

    .line 290
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 292
    .restart local v9       #fw:Ljava/io/FileWriter;
    :try_start_12
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 293
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :try_start_13
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17

    .line 294
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    :goto_d
    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v11, v0, :cond_13

    .line 295
    :try_start_14
    aget-object v18, v16, v11

    if-eqz v18, :cond_10

    .line 296
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    .line 294
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 309
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_6
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 302
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v17

    .line 303
    :goto_e
    if-eqz v2, :cond_11

    .line 304
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_11
    if-eqz v9, :cond_12

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    .line 302
    :cond_12
    :goto_f
    throw v17

    .line 309
    :catch_7
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 303
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :cond_13
    if-eqz v3, :cond_14

    .line 304
    :try_start_16
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_14
    if-eqz v10, :cond_15

    .line 307
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    :cond_15
    :goto_10
    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .line 312
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_9

    .line 309
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_8
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 309
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_9
    move-exception v6

    .line 310
    :goto_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 302
    :catchall_3
    move-exception v17

    .line 303
    :goto_12
    if-eqz v2, :cond_16

    .line 304
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_16
    if-eqz v9, :cond_17

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 302
    :cond_17
    :goto_13
    throw v17

    .line 309
    :catch_a
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 303
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :cond_18
    if-eqz v3, :cond_19

    .line 304
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_19
    if-eqz v10, :cond_1a

    .line 307
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    .end local v6           #ex:Ljava/lang/Exception;
    :cond_1a
    :goto_14
    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .line 312
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_b

    .line 309
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_b
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 299
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_c
    move-exception v6

    .line 300
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_15
    :try_start_19
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 303
    if-eqz v2, :cond_1b

    .line 304
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    .line 306
    :cond_1b
    if-eqz v9, :cond_f

    .line 307
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto/16 :goto_b

    .line 309
    :catch_d
    move-exception v6

    goto :goto_11

    .line 302
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v17

    .line 303
    :goto_16
    if-eqz v2, :cond_1c

    .line 304
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_1c
    if-eqz v9, :cond_1d

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    .line 302
    :cond_1d
    :goto_17
    throw v17

    .line 309
    :catch_e
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 303
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :cond_1e
    if-eqz v3, :cond_1f

    .line 304
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_1f
    if-eqz v10, :cond_1a

    .line 307
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_14

    .line 309
    :catch_f
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 253
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v12       #lineRead:Ljava/lang/String;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :cond_20
    if-eqz v14, :cond_21

    .line 254
    :try_start_1e
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    .line 256
    :cond_21
    if-eqz v8, :cond_22

    .line 257
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    .line 259
    :cond_22
    :try_start_20
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10

    goto/16 :goto_3

    .line 260
    :catch_10
    move-exception v6

    goto/16 :goto_c

    :catch_11
    move-exception v6

    goto/16 :goto_c

    .line 302
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v12           #lineRead:Ljava/lang/String;
    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_5
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto :goto_16

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_6
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_16

    .line 299
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_12
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto :goto_15

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_13
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_15

    .line 302
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_7
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto :goto_12

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_8
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_12

    .line 309
    :catch_14
    move-exception v6

    goto/16 :goto_11

    .line 299
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_15
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto/16 :goto_a

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_16
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_a

    .line 302
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_9
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto/16 :goto_e

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_a
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_e

    .line 299
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_17
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto/16 :goto_8

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_18
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_8

    .line 260
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_19
    move-exception v6

    goto/16 :goto_c

    .line 252
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_b
    move-exception v17

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :catchall_c
    move-exception v17

    move-object v13, v14

    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_5

    .line 249
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_1a
    move-exception v6

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :catch_1b
    move-exception v6

    move-object v13, v14

    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 132
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFileName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, path:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v1, filename:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "ShutdownCallStack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string v3, "PM"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 112
    :cond_0
    const-string v3, "AM"

    goto :goto_0
.end method

.method private static isDoingAutoTest()Z
    .locals 7

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 79
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/mnt/.lfs/debug_level.inf"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 81
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, readString:Ljava/lang/String;
    const-string v6, "DAUT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    const/4 v6, 0x1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_0
    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    .line 100
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #readString:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    return v6

    .line 90
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #readString:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_3
    if-eqz v4, :cond_4

    .line 94
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_2
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 100
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #readString:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :cond_5
    :goto_3
    const/4 v6, 0x0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, ex:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_6
    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 96
    :catch_1
    move-exception v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 89
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 90
    :goto_5
    if-eqz v0, :cond_7

    .line 91
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_7
    if-eqz v3, :cond_8

    .line 94
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 89
    :cond_8
    :goto_6
    throw v6

    .line 96
    :catch_2
    move-exception v2

    .line 97
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 96
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #readString:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 97
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 97
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #readString:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 86
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4
.end method


# virtual methods
.method public appendLog(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/android/server/ShutdownLoggerService;->appendLogByHandler(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public recordShutdownTime()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method
