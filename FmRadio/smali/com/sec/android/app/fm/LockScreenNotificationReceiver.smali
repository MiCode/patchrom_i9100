.class public Lcom/sec/android/app/fm/LockScreenNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenNotificationReceiver.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:J

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mContext:Landroid/content/Context;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "FMPlayer"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 58
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mCurrentChannel:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentChannel()F
    .locals 6

    .prologue
    .line 74
    const/high16 v1, -0x4080

    .line 76
    .local v1, freq:F
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 78
    .local v2, freqLong:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 79
    long-to-float v4, v2

    const/high16 v5, 0x447a

    div-float v1, v4, v5

    .line 88
    .end local v2           #freqLong:J
    :cond_0
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    iget-object v8, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 95
    iput-object p1, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mContext:Landroid/content/Context;

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v8, :cond_1

    .line 103
    const-string v8, "FMPlayer"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v8, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 107
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-nez v8, :cond_2

    .line 108
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    :cond_2
    const-string v8, "com.android.fm.player_lock.on"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.fm.player.on"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 154
    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    const-string v8, "com.android.fm.player_lock.off"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 155
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.fm.player.off"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v0           #action:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 264
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 265
    :catch_1
    move-exception v8

    goto :goto_0

    .line 178
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v8, "com.android.fm.player_lock.tune.next"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 179
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.fm.player.tune.next"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :cond_6
    const-string v8, "com.android.fm.player_lock.tune.prev"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 205
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.fm.player.tune.prev"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :cond_7
    const-string v8, "com.android.fm.player_lock.info"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 233
    iget-object v8, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-nez v8, :cond_8

    .line 235
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "FMRADIO Sending OFF broadcast .... "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player_lock.status.off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v7, offintent:Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v7           #offintent:Landroid/content/Intent;
    :cond_8
    const-string v2, ""

    .line 242
    .local v2, chname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 243
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    invoke-direct {p0}, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->getCurrentChannel()F

    move-result v5

    .line 245
    .local v5, freq:F
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v8, :cond_9

    const/high16 v8, -0x4080

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_9

    .line 246
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v5}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_9

    .line 248
    iget-object v2, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 252
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.fm.player_lock.status.channel"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v6, intent1:Landroid/content/Intent;
    const-string v8, "freq"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v8, "name"

    invoke-virtual {v6, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 257
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #chname:Ljava/lang/String;
    .end local v5           #freq:F
    .end local v6           #intent1:Landroid/content/Intent;
    :cond_a
    const-string v8, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    const-string v8, "lockscreennotification"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 259
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "currentFreq"

    iget-object v9, p0, Lcom/sec/android/app/fm/LockScreenNotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v9

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
