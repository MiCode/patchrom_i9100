.class public Lcom/sec/android/app/fm/data/ChannelStore;
.super Ljava/lang/Object;
.source "ChannelStore.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/data/ChannelStore;


# instance fields
.field private mInputStream:Ljava/io/ObjectInputStream;

.field private mOutputStream:Ljava/io/ObjectOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/data/ChannelStore;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/sec/android/app/fm/data/ChannelStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/sec/android/app/fm/data/ChannelStore;

    invoke-direct {v0}, Lcom/sec/android/app/fm/data/ChannelStore;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;

    .line 39
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public load()V
    .locals 5

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "ChannelStorage"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    .line 84
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    .line 86
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded Channel List :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 88
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 89
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 100
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 109
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    :cond_2
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v2

    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 111
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ChannelStore"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 94
    :goto_2
    :try_start_5
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_3

    .line 95
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Creating new list"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    :cond_3
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v1, :cond_2

    .line 109
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 110
    :catch_4
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ChannelStore"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    .local v0, e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    .line 105
    :catch_6
    move-exception v2

    goto :goto_3

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 100
    :try_start_9
    iget-object v3, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_5

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 108
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 109
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 112
    :cond_6
    :goto_5
    throw v2

    .line 102
    :catch_7
    move-exception v0

    .line 104
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_4

    .line 105
    :catch_8
    move-exception v3

    goto :goto_4

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 111
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "ChannelStore"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 93
    .local v0, e:Ljava/lang/Exception;
    :catch_a
    move-exception v2

    goto :goto_2
.end method

.method public store()V
    .locals 5

    .prologue
    .line 46
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ChannelStorage"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 65
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 67
    :catch_3
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 70
    :catch_4
    move-exception v1

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 65
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 71
    :cond_2
    :goto_2
    throw v1

    .line 67
    :catch_5
    move-exception v0

    .line 69
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 70
    :catch_6
    move-exception v2

    goto :goto_2

    .line 62
    .local v0, e:Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 132
    return-void
.end method
