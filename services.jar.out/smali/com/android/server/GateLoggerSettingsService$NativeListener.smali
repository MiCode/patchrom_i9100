.class Lcom/android/server/GateLoggerSettingsService$NativeListener;
.super Ljava/lang/Object;
.source "GateLoggerSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GateLoggerSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeListener"
.end annotation


# instance fields
.field private final SOCKET_NAME_LSRV:Ljava/lang/String;

.field public mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/GateLoggerSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/GateLoggerSettingsService;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/GateLoggerSettingsService$NativeListener;->this$0:Lcom/android/server/GateLoggerSettingsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "gatelsrv"

    iput-object v0, p0, Lcom/android/server/GateLoggerSettingsService$NativeListener;->SOCKET_NAME_LSRV:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GateLoggerSettingsService;Lcom/android/server/GateLoggerSettingsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/GateLoggerSettingsService$NativeListener;-><init>(Lcom/android/server/GateLoggerSettingsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 48
    :try_start_0
    new-instance v7, Landroid/net/LocalServerSocket;

    const-string v11, "gatelsrv"

    invoke-direct {v7, v11}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    .line 50
    .local v7, server:Landroid/net/LocalServerSocket;
    :cond_0
    :goto_0
    const-string v11, "NativeListener"

    const-string v12, "waiting..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v6

    .line 52
    .local v6, receiver:Landroid/net/LocalSocket;
    if-eqz v6, :cond_0

    .line 53
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 56
    .local v4, input:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 57
    .local v5, readed:I
    const/4 v8, 0x0

    .line 58
    .local v8, size:I
    const/4 v1, 0x0

    .line 59
    .local v1, capacity:I
    new-array v0, v1, [B

    .local v0, bytes:[B
    move v9, v8

    .line 62
    .end local v8           #size:I
    .local v9, size:I
    :goto_1
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1

    .line 64
    mul-int/lit8 v11, v1, 0x3

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v1, v11, 0x1

    .line 66
    new-array v2, v1, [B

    .line 67
    .local v2, copy:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    move-object v0, v2

    .line 69
    add-int/lit8 v8, v9, 0x1

    .end local v9           #size:I
    .restart local v8       #size:I
    int-to-byte v11, v5

    aput-byte v11, v0, v9

    .line 72
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    move v9, v8

    .line 73
    .end local v8           #size:I
    .restart local v9       #size:I
    goto :goto_1

    .line 76
    .end local v2           #copy:[B
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 79
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v9}, Ljava/lang/String;-><init>([BII)V

    .line 80
    .local v10, st:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/GateLoggerSettingsService$NativeListener;->this$0:Lcom/android/server/GateLoggerSettingsService;

    invoke-virtual {v11, v10}, Lcom/android/server/GateLoggerSettingsService;->processCmd(Ljava/lang/String;)V

    .line 83
    const-string v11, "NativeListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0           #bytes:[B
    .end local v1           #capacity:I
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #readed:I
    .end local v6           #receiver:Landroid/net/LocalSocket;
    .end local v7           #server:Landroid/net/LocalServerSocket;
    .end local v9           #size:I
    .end local v10           #st:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 87
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
