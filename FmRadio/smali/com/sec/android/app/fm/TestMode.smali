.class public Lcom/sec/android/app/fm/TestMode;
.super Ljava/lang/Object;
.source "TestMode.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/TestMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/TestMode;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/sec/android/app/fm/TestMode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/sec/android/app/fm/TestMode;

    invoke-direct {v0}, Lcom/sec/android/app/fm/TestMode;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    .line 42
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    const-string v11, "TestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v11, "test.mode.radio.on.freq"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 55
    const-string v11, "frequency"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, freq:Ljava/lang/String;
    const-string v11, "output"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, output:Ljava/lang/String;
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->on(Z)Z

    .line 60
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v10

    .line 62
    .local v10, volume:I
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 65
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 66
    :cond_1
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v11}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v12, v11}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 68
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 80
    .local v9, val:I
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TEST_MODE_RADIO_ON_FREQ - freq:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", val:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 81
    const-string v11, "TestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TEST_MODE_RADIO_ON_FREQ 9, val : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 83
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 10"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #output:Ljava/lang/String;
    .end local v9           #val:I
    .end local v10           #volume:I
    :cond_3
    :goto_2
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "going for finish"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    .line 188
    :goto_3
    return-void

    .line 67
    .restart local v4       #freq:Ljava/lang/String;
    .restart local v6       #output:Ljava/lang/String;
    .restart local v10       #volume:I
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 69
    :cond_5
    :try_start_1
    const-string v11, "speaker"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 70
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 72
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 179
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #output:Ljava/lang/String;
    .end local v10           #volume:I
    :catch_0
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    :goto_5
    :try_start_3
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11, v2}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "going for finish"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    goto :goto_3

    .line 73
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #freq:Ljava/lang/String;
    .restart local v6       #output:Ljava/lang/String;
    .restart local v10       #volume:I
    :cond_6
    :try_start_4
    const-string v11, "earphone"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 74
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 76
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 8"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 185
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #output:Ljava/lang/String;
    .end local v10           #volume:I
    :catchall_0
    move-exception v11

    :goto_6
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "going for finish"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v12, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    throw v11

    .line 85
    :cond_7
    :try_start_5
    const-string v11, "test.mode.radio.off"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 87
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_OFF 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v11}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 89
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_OFF 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 90
    :cond_8
    const-string v11, "output"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 92
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v11, "output"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6       #output:Ljava/lang/String;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 95
    :cond_9
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v11}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_a

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v12, v11}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 97
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 96
    :cond_a
    const/4 v11, 0x0

    goto :goto_7

    .line 98
    :cond_b
    const-string v11, "speaker"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 99
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 101
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 103
    :cond_c
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 105
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 108
    .end local v6           #output:Ljava/lang/String;
    :cond_d
    const-string v11, "test.mode.radio.freq"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 110
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v11, "frequency"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4       #freq:Ljava/lang/String;
    const-string v11, "output"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .restart local v6       #output:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 115
    .restart local v9       #val:I
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 116
    :cond_e
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_8
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->on(Z)Z

    .line 128
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v10

    .line 130
    .restart local v10       #volume:I
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 133
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 135
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 8"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v12, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v12}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, rssi:Ljava/lang/String;
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 9"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v11, "test.mode.radio.freq.response"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, bintent:Landroid/content/Intent;
    const-string v11, "frequency"

    invoke-virtual {v1, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v11, "signal_strength"

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11, v1}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sending broadcast- freq:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " rssi:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 144
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 145
    .end local p1
    .local v5, intent:Landroid/content/Intent;
    :try_start_6
    const-string v11, "signal_strength"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v5}, Lcom/sec/android/app/fm/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 10"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object p1, v5

    .line 149
    .end local v5           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_2

    .line 117
    .end local v1           #bintent:Landroid/content/Intent;
    .end local v8           #rssi:Ljava/lang/String;
    .end local v10           #volume:I
    :cond_f
    :try_start_7
    const-string v11, "speaker"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 118
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    goto/16 :goto_8

    .line 121
    :cond_10
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FREQ 4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    goto/16 :goto_8

    .line 149
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #output:Ljava/lang/String;
    .end local v9           #val:I
    :cond_11
    const-string v11, "test.mode.radio.factoryrssi"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 150
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FACTORYRSSI 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v11, "signal_strength"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, factoryrssi:Ljava/lang/String;
    const/4 v8, 0x0

    .line 154
    .local v8, rssi:I
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 155
    :cond_12
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/fm/MainActivity;->GetFactoryRssi()I

    move-result v8

    .line 156
    const-string v11, "TestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TEST_MODE_SET_FACTORYRSSI 2:: read rssi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v11, 0xa

    invoke-static {v8, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, read_rssi:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v11, "test.mode.radio.factoryrssi.response"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v1       #bintent:Landroid/content/Intent;
    const-string v11, "signal_strength"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11, v1}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sending broadcast- rssi:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 163
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 164
    .end local p1
    .restart local v5       #intent:Landroid/content/Intent;
    :try_start_8
    const-string v11, "signal_strength"

    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v5}, Lcom/sec/android/app/fm/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_SET_FACTORYRSSI 3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object p1, v5

    .line 168
    .end local v5           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_2

    .line 169
    .end local v1           #bintent:Landroid/content/Intent;
    .end local v7           #read_rssi:Ljava/lang/String;
    :cond_13
    const/16 v11, 0xa

    :try_start_9
    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 170
    if-lez v8, :cond_14

    rsub-int/lit8 v8, v8, 0x0

    .line 172
    :cond_14
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v11, v8}, Lcom/sec/android/app/fm/MainActivity;->SetFactoryRssi(I)V

    .line 173
    const-string v11, "TestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TEST_MODE_SET_FACTORYRSSI 4:: write rssi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 182
    .end local v3           #factoryrssi:Ljava/lang/String;
    .end local v8           #rssi:I
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    goto/16 :goto_5

    .line 185
    .end local v2           #e:Ljava/lang/Exception;
    .end local p1
    .restart local v1       #bintent:Landroid/content/Intent;
    .restart local v5       #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v11

    move-object p1, v5

    .end local v5           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_6

    .line 179
    .end local p1
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    move-object p1, v5

    .end local v5           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_4
.end method
