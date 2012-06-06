.class public Lcom/android/OriginalSettings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# instance fields
.field private USB_PATH:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private final modem:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const-string v0, "/sys/class/sec/switch/usb_sel"

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsIntentReceiver;->USB_PATH:Ljava/lang/String;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsIntentReceiver;->modem:[B

    return-void

    :array_0
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method private makeDMfile()V
    .locals 8

    .prologue
    .line 392
    const/4 v3, 0x0

    .line 395
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, dmFileName:Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dmFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 403
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v4, :cond_2

    .line 406
    :try_start_1
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 413
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 408
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 409
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 410
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 398
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 399
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v3, :cond_0

    .line 406
    :try_start_3
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 408
    :catch_2
    move-exception v2

    .line 409
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 400
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 401
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v3, :cond_0

    .line 406
    :try_start_5
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 408
    :catch_4
    move-exception v2

    .line 409
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v3, :cond_1

    .line 406
    :try_start_6
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 410
    :cond_1
    :goto_1
    throw v5

    .line 408
    :catch_5
    move-exception v2

    .line 409
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 8
    .parameter "mtData"

    .prologue
    .line 416
    const/4 v3, 0x0

    .line 419
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, mtFileName:Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mtFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 422
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 430
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v4, :cond_2

    .line 433
    :try_start_2
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 440
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 435
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 436
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 437
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 423
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 424
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v3, :cond_0

    .line 433
    :try_start_4
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 435
    :catch_2
    move-exception v1

    .line 436
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 425
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 426
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v3, :cond_0

    .line 433
    :try_start_6
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 435
    :catch_4
    move-exception v1

    .line 436
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 427
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 428
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 430
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v3, :cond_0

    .line 433
    :try_start_8
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 435
    :catch_6
    move-exception v1

    .line 436
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v3, :cond_1

    .line 433
    :try_start_9
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 437
    :cond_1
    :goto_5
    throw v5

    .line 435
    :catch_7
    move-exception v1

    .line 436
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 430
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 427
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 425
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 423
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 464
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 465
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 476
    :cond_1
    :goto_1
    return v3

    .line 473
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 474
    goto :goto_1
.end method

.method public GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 443
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 445
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 446
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 457
    :cond_1
    :goto_1
    return-object v3

    .line 454
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 457
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method public disableFMM(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 382
    const-string v2, "SettingsIntentReceiver"

    const-string v3, "Disabled FMM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    const-string v2, "GoogleAccountPreferences"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 385
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    return-void
.end method

.method public enableFMM(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 370
    const-string v2, "SettingsIntentReceiver"

    const-string v3, "Enabled FMM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "GoogleAccountPreferences"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 372
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_google_account"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 374
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    const-string v26, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/media/AudioManager;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    new-instance v26, Landroid/os/Vibrator;

    invoke-direct/range {v26 .. v26}, Landroid/os/Vibrator;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SettingsIntentReceiver;->mVibrator:Landroid/os/Vibrator;

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.samsung.wipe.MTDATA"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 83
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "onReceive() : com.samsung.wipe.MTDATA"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 86
    .local v7, extras:Landroid/os/Bundle;
    const-string v26, "MTDATA"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 87
    .local v24, temp:Ljava/lang/String;
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "extras.getString(MTDATA) : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->makeDMfile()V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "mt_state"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v24           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "samsung_signin"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    invoke-virtual/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->enableFMM(Landroid/content/Context;)V

    .line 353
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.sec.samsung.torchwidget.torch_on_1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 354
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lcom/sec/android/hardware/SecHardwareInterface;->setFlashLed(I)V

    .line 355
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "SecHardwareInterface.setFlashLed(1)"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    :goto_1
    return-void

    .line 97
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v24       #temp:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "mt_state"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 99
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v24           #temp:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 100
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "onReceive() : RINGER_MODE_CHANGED_ACTION"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 102
    .restart local v7       #extras:Landroid/os/Bundle;
    const/16 v21, 0x0

    .line 104
    .local v21, ringer_mode:I
    if-eqz v7, :cond_5

    .line 105
    const-string v26, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 106
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Extras (ringer mode) : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_2
    packed-switch v21, :pswitch_data_0

    goto/16 :goto_0

    .line 114
    :pswitch_0
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Ringer mode : silent & set driving mode off"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "driving_mode_on"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 108
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v21

    .line 109
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No extras (ringer mode) : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 118
    :pswitch_1
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Ringer mode : vibrate"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    :pswitch_2
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Ringer mode : normal"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v21           #ringer_mode:I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 129
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Received intent : android.intent.action.BOOT_COMPLETED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "vibrate_in_silent"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    const/16 v25, 0x1

    .line 131
    .local v25, vibeInSilent:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v4

    .line 133
    .local v4, callsVibrateSetting:I
    if-eqz v25, :cond_10

    .line 134
    if-nez v4, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x2

    invoke-virtual/range {v26 .. v28}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 144
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 145
    .local v20, resolver:Landroid/content/ContentResolver;
    const-string v26, "power_saving_mode"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 146
    .local v13, mPowerSavingMode:I
    if-eqz v13, :cond_11

    const/16 v26, 0x1

    :goto_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 147
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "com.sec.android.app.SecFeature.POWER_SAVING_MODE : true, SecHardwareInterface.setAmoledACL("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "torch_light"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "torch_light"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :cond_8
    const-string v26, "GT-I9100G"

    const-string v27, "GT-I9100"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "screen_mode_setting"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)V

    .line 164
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 165
    .local v15, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v26, "pref_device_provision"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-nez v26, :cond_b

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "screen_off_timeout"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const v27, 0x1d8a8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 167
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Default SCREEN_OFF_TIMEOUT is SCREEN_OFF_TIMEOUT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "screen_off_timeout"

    const/16 v28, 0x7530

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "device_provisioned"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 171
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 172
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "pref_device_provision"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_b
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "<Boot Complete> in Settings"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "screen_off_timeout"

    const/16 v28, 0x7530

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 186
    .local v17, oldScreenTimOut:I
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "oldScreenTimeout: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const v26, 0x927c0

    move/from16 v0, v17

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    if-gez v17, :cond_d

    .line 188
    :cond_c
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Set timeout to 10mins forcely"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "screen_off_timeout"

    const v28, 0x927c0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "stay_on_while_plugged_in"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 194
    .local v18, oldStayAway:I
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "oldStayAway: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v18, :cond_e

    .line 196
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Set StayAway off"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "stay_on_while_plugged_in"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "usb_setting_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "usb_setting_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 130
    .end local v4           #callsVibrateSetting:I
    .end local v13           #mPowerSavingMode:I
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v17           #oldScreenTimOut:I
    .end local v18           #oldStayAway:I
    .end local v20           #resolver:Landroid/content/ContentResolver;
    .end local v25           #vibeInSilent:Z
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 138
    .restart local v4       #callsVibrateSetting:I
    .restart local v25       #vibeInSilent:Z
    :cond_10
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v4, v0, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_4

    .line 146
    .restart local v13       #mPowerSavingMode:I
    .restart local v20       #resolver:Landroid/content/ContentResolver;
    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 219
    .end local v4           #callsVibrateSetting:I
    .end local v13           #mPowerSavingMode:I
    .end local v20           #resolver:Landroid/content/ContentResolver;
    .end local v25           #vibeInSilent:Z
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 220
    const-string v26, "MT_Setting_Pref"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 221
    .local v5, ed:Landroid/content/SharedPreferences$Editor;
    const-string v26, "MT_OPS_Signed_in"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    new-instance v8, Lcom/android/internal/util/NVStore;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 224
    .local v8, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v26

    if-eqz v26, :cond_13

    const-string v19, "1"

    .line 226
    .local v19, phlock:Ljava/lang/String;
    :goto_6
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 227
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 233
    .local v23, str:Ljava/lang/String;
    sget-object v26, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    goto/16 :goto_0

    .line 224
    .end local v19           #phlock:Ljava/lang/String;
    .end local v23           #str:Ljava/lang/String;
    :cond_13
    const-string v19, "0"

    goto/16 :goto_6

    .line 236
    .end local v5           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v8           #filenv:Lcom/android/internal/util/NVStore;
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.REGISTRATION_CANCELED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 237
    const-string v26, "MT_Setting_Pref"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 238
    .restart local v5       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v26, "MT_OPS_Signed_in"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 240
    .end local v5           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.DOCK_EVENT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 241
    const-string v26, "android.intent.extra.DOCK_STATE"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 243
    .local v22, state:I
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received intent : android.intent.action.DOCK_EVENT with State:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "cradle_enable"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 249
    .local v10, mCradleEnabled:I
    if-nez v22, :cond_17

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "cradle_connect"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    if-eqz v10, :cond_16

    .line 254
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cradle is enabled:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v14, mSendIntent:Landroid/content/Intent;
    const-string v26, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, PhoneSpeakerState:I
    const-string v26, "state"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Sound state changed to Phone:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 262
    .end local v3           #PhoneSpeakerState:I
    .end local v14           #mSendIntent:Landroid/content/Intent;
    :cond_16
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cradle is disabled:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Sound state is Phone:"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "cradle_connect"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    if-eqz v10, :cond_18

    .line 273
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cradle is enabled:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 275
    .restart local v14       #mSendIntent:Landroid/content/Intent;
    const-string v26, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/4 v3, 0x1

    .line 277
    .restart local v3       #PhoneSpeakerState:I
    const-string v26, "state"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Sound state changed to Line out:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v3           #PhoneSpeakerState:I
    .end local v14           #mSendIntent:Landroid/content/Intent;
    :cond_18
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cradle is disabled:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Sound state is Phone:"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    .end local v10           #mCradleEnabled:I
    .end local v22           #state:I
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "shopdemo_on"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 289
    const-string v26, "SettingsIntentReceiver"

    const-string v27, " +++++ displayForshop_onReceive  shopdemo_on++++++++++++++"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "shopdemo"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 291
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "shopdemo_off"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 292
    const-string v26, "SettingsIntentReceiver"

    const-string v27, " +++++ displayForshop_onReceive  shopdemo_off++++++++++++++"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "shopdemo"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 296
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 297
    const-string v26, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 298
    .local v12, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v12}, Landroid/os/PowerManager;->getPlugType()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "usb_setting_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "usb_setting_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 302
    .end local v12           #mPowerManager:Landroid/os/PowerManager;
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.NETWORK_PROVIDER_ENABLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "network"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 304
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.POWER_SIOP_ENABLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 305
    const-string v26, "cpu_clock"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 306
    .local v9, mCpuClock:Z
    const-string v26, "ui_rendering"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 307
    .local v16, mUIRendering:Z
    const-string v26, "max_brightness"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 308
    .local v11, mMaxBrightness:Z
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SIOP enabled. cpu_clock : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ui_rendering : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " max_brightness : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 311
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 312
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "pref_siop_clock"

    move-object/from16 v0, v26

    invoke-interface {v6, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 313
    const-string v26, "pref_siop_rendering"

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    const-string v26, "pref_siop_brightness"

    move-object/from16 v0, v26

    invoke-interface {v6, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 316
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #mCpuClock:Z
    .end local v11           #mMaxBrightness:Z
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v16           #mUIRendering:Z
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 317
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "SIOP disabled"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 319
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 320
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "pref_siop_clock"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v26, "pref_siop_rendering"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    const-string v26, "pref_siop_brightness"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 324
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.GOOGLEACCOUNT_REGISTED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 325
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Google account Registed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v26, "GoogleAccountPreferences"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 327
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 328
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "pref_google_account"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    invoke-virtual/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->enableFMM(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 331
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.GOOGLEACCOUNT_REMOVED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 332
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "Google account removed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v26, "GoogleAccountPreferences"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 334
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 335
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "pref_google_account"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    invoke-virtual/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->disableFMM(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 338
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "change_alert"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "remote_control"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "samsung_signin"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    invoke-virtual/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->disableFMM(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 344
    :cond_22
    const-string v26, "SettingsIntentReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Intent = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.sec.samsung.torchwidget.torch_on_2"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_24

    .line 357
    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Lcom/sec/android/hardware/SecHardwareInterface;->setFlashLed(I)V

    .line 358
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "SecHardwareInterface.setFlashLed(2)"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 359
    :cond_24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.sec.samsung.torchwidget.torch_on_3"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 360
    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Lcom/sec/android/hardware/SecHardwareInterface;->setFlashLed(I)V

    .line 361
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "SecHardwareInterface.setFlashLed(3)"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 362
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.sec.samsung.torchwidget.torch_off"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 363
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/hardware/SecHardwareInterface;->setFlashLed(I)V

    .line 364
    const-string v26, "SettingsIntentReceiver"

    const-string v27, "SecHardwareInterface.setFlashLed(4)"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
