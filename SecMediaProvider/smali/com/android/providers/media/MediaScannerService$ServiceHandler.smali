.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 237
    .local v0, arguments:Landroid/os/Bundle;
    const-string v8, "filepath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, filePath:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 241
    :try_start_0
    const-string v8, "listener"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 242
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_1

    const/4 v5, 0x0

    .line 244
    .local v5, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/4 v6, 0x0

    .line 246
    .local v6, uri:Landroid/net/Uri;
    :try_start_1
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v9, "mimetype"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v8, v4, v9}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 250
    :goto_1
    if-eqz v5, :cond_0

    .line 251
    :try_start_2
    invoke-interface {v5, v4, v6}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v5           #listener:Landroid/media/IMediaScannerListener;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 280
    return-void

    .line 242
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_3
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v5

    goto :goto_0

    .line 247
    .restart local v5       #listener:Landroid/media/IMediaScannerListener;
    .restart local v6       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 248
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "MediaScannerService"

    const-string v9, "Exception scanning file"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 275
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #listener:Landroid/media/IMediaScannerListener;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 276
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "MediaScannerService"

    const-string v9, "Exception in handleMessage"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 254
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v8, "volume"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, volume:Ljava/lang/String;
    const/4 v2, 0x0

    .line 257
    .local v2, directories:[Ljava/lang/String;
    const-string v8, "internal"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 259
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/media"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 268
    .restart local v2       #directories:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 269
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start scanning volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v2, v7}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done scanning volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 263
    :cond_4
    const-string v8, "external"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    goto :goto_3
.end method
