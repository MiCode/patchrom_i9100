.class public Lcom/sec/android/app/fm/BackupAndRestoreService;
.super Landroid/content/BroadcastReceiver;
.source "BackupAndRestoreService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "target_File"
    .parameter "result_File"

    .prologue
    .line 45
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v8, targetFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v7, resultFile:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v9, tmpFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 49
    .local v2, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 51
    .local v5, out:Ljava/io/OutputStream;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 53
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 54
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 56
    :cond_0
    const/4 v4, 0x0

    .line 57
    .local v4, nRead:I
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 59
    .local v0, buffer:[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 60
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 62
    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    .line 63
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 67
    .end local v3           #in:Ljava/io/InputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 68
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :cond_1
    if-eqz v2, :cond_2

    .line 74
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 77
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 79
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 83
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :goto_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 84
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 86
    :cond_4
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 87
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 88
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 91
    .end local v0           #buffer:[B
    .end local v4           #nRead:I
    :goto_4
    return-void

    .line 72
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #nRead:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_5
    if-eqz v3, :cond_6

    .line 74
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 77
    :cond_6
    :goto_5
    if-eqz v6, :cond_a

    .line 79
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 80
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_3

    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 72
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v2, :cond_7

    .line 74
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 77
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 79
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 80
    :cond_8
    :goto_8
    throw v10

    .line 90
    .end local v0           #buffer:[B
    .end local v4           #nRead:I
    :cond_9
    const-string v10, "FmRadio"

    const-string v11, "targetFile targetfile not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 75
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #nRead:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    goto :goto_5

    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v10

    goto :goto_2

    .line 80
    :catch_4
    move-exception v10

    goto :goto_3

    .line 75
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v11

    goto :goto_7

    .line 80
    :catch_6
    move-exception v11

    goto :goto_8

    .line 72
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_6

    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 66
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_a
    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_3
.end method

.method private initFilePath(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 141
    const-string v6, "SettingsPreference"

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 142
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 143
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "TEMP"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    const/4 v3, 0x0

    .line 148
    .local v3, outputStream:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    const-string v6, "ChannelStorage"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v3           #outputStream:Ljava/io/ObjectOutputStream;
    .local v4, outputStream:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 155
    if-eqz v4, :cond_2

    .line 157
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 163
    .end local v4           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #outputStream:Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 158
    .end local v3           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #outputStream:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 159
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 160
    .end local v4           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #outputStream:Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 152
    .end local v1           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v3, :cond_0

    .line 157
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 158
    :catch_2
    move-exception v1

    .line 159
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_1

    .line 157
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 160
    :cond_1
    :goto_3
    throw v6

    .line 158
    :catch_3
    move-exception v1

    .line 159
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 155
    .end local v1           #e1:Ljava/io/IOException;
    .end local v3           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #outputStream:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #outputStream:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 152
    .end local v3           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #outputStream:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #outputStream:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .end local v3           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #outputStream:Ljava/io/ObjectOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #outputStream:Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 97
    const-string v8, "backup_Or_Restore"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 104
    .local v1, backupOrRestore:Z
    const-string v8, "backup_Path"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, intentPath:Ljava/lang/String;
    const-string v8, "FmRadio"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnRECEIVE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/BackupAndRestoreService;->initFilePath(Landroid/content/Context;)V

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "localpreference.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, targetfile:Ljava/lang/String;
    const-string v6, "./data/data/com.sec.android.app.fm/shared_prefs/localpreference.xml"

    .line 115
    .local v6, restoreOrBackup:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ChannelStorage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, channleStore:Ljava/lang/String;
    const-string v2, "./data/data/com.sec.android.app.fm/files/ChannelStorage"

    .line 118
    .local v2, channelRestorePath:Ljava/lang/String;
    const-string v8, "localpreference.xml"

    invoke-virtual {p1, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 120
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, restore:Landroid/content/Intent;
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    .end local v5           #restore:Landroid/content/Intent;
    :goto_0
    invoke-static {v7, v6}, Lcom/sec/android/app/fm/BackupAndRestoreService;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v3, v2}, Lcom/sec/android/app/fm/BackupAndRestoreService;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 124
    .end local v2           #channelRestorePath:Ljava/lang/String;
    .end local v3           #channleStore:Ljava/lang/String;
    .end local v6           #restoreOrBackup:Ljava/lang/String;
    .end local v7           #targetfile:Ljava/lang/String;
    :cond_0
    const-string v7, "./data/data/com.sec.android.app.fm/shared_prefs/localpreference.xml"

    .line 125
    .restart local v7       #targetfile:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "localpreference.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .restart local v6       #restoreOrBackup:Ljava/lang/String;
    const-string v3, "./data/data/com.sec.android.app.fm/files/ChannelStorage"

    .line 127
    .restart local v3       #channleStore:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ChannelStorage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2       #channelRestorePath:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.fm.BACKUP_FINISH"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, backup:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
