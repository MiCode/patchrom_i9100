.class public Lcom/android/server/pm/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 833
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .locals 1

    .prologue
    .line 839
    sget v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOffValue:I

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread$Led;->fileWriteInt(I)V

    .line 840
    return-void
.end method

.method private static On()V
    .locals 1

    .prologue
    .line 835
    sget v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOnValue:I

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread$Led;->fileWriteInt(I)V

    .line 836
    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 833
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->On()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 833
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->Off()V

    return-void
.end method

.method private static fileWriteInt(I)V
    .locals 6
    .parameter "value"

    .prologue
    .line 843
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 845
    :cond_0
    const-string v4, "LED"

    const-string v5, "!@LED File is not exist"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 849
    :cond_2
    const/4 v2, 0x0

    .line 851
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 859
    if-eqz v3, :cond_3

    .line 860
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v2, v3

    .line 863
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "LED"

    const-string v5, "!@Exception has raised while file write"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    if-eqz v2, :cond_1

    .line 860
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 862
    :catch_1
    move-exception v4

    goto :goto_0

    .line 858
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 859
    :goto_3
    if-eqz v2, :cond_4

    .line 860
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 858
    :cond_4
    :goto_4
    throw v4

    .line 862
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .line 858
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 854
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
