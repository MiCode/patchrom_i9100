.class public Lcom/samsung/voiceshell/MultipleWakeUp;
.super Ljava/lang/Object;
.source "MultipleWakeUp.java"


# static fields
.field private static final CAMERA_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CAMERA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final FM_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.fm.MainActivity"

.field private static final FM_PACKAGE:Ljava/lang/String; = "com.sec.android.app.fm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultipleWakeUpIntent(I)Landroid/content/Intent;
    .locals 14
    .parameter "intentType"

    .prologue
    const/high16 v13, 0x1020

    const/4 v12, 0x1

    .line 34
    const/4 v4, 0x0

    .line 38
    .local v4, intent:Landroid/content/Intent;
    packed-switch p0, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    return-object v4

    .line 44
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 52
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 62
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.camera"

    const-string v11, "com.sec.android.app.camera.Camera"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 72
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "com.android.calendar"

    const-string v10, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "playMusic"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 94
    :pswitch_6
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.fm"

    const-string v11, "com.sec.android.app.fm.MainActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string v9, "playback"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const/high16 v9, 0x20

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    const/high16 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 116
    :pswitch_7
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.voicerecorder"

    const-string v11, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 136
    :pswitch_8
    const/4 v6, 0x0

    .line 138
    .local v6, reader:Ljava/io/BufferedReader;
    const-string v3, "/data/data/com.vlingo.midas/files/contactpicked.txt"

    .line 142
    .local v3, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 152
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_1
    const-string v8, ""

    .line 156
    .local v8, results:Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_2

    .line 144
    .end local v5           #line:Ljava/lang/String;
    .end local v8           #results:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v2           #e1:Ljava/io/FileNotFoundException;
    .restart local v8       #results:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 168
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    :goto_3
    const/4 v0, 0x0

    .line 186
    .local v0, Uri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.CALL"

    invoke-direct {v4, v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .restart local v4       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 176
    .end local v0           #Uri:Landroid/net/Uri;
    :catch_2
    move-exception v1

    .line 180
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
