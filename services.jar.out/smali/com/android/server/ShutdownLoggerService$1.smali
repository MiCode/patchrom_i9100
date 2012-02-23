.class final Lcom/android/server/ShutdownLoggerService$1;
.super Ljava/lang/Object;
.source "ShutdownLoggerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownLoggerService;->__recordShutdownTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    new-instance v1, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;

    const-wide/16 v2, 0x3e8

    invoke-direct {v1, v2, v3}, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;-><init>(J)V

    .line 215
    .local v1, r:Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;
    :try_start_0
    const-string v2, "ShutdownLogger"

    const-string v3, "Changing permission of off.p"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v2, "chmod 666 /data/log/off.p"

    invoke-virtual {v1, v2}, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;->execute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
