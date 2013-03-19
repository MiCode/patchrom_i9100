.class final Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;
.super Ljava/lang/Object;
.source "TwGLBurstMenu.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScannerClient"
.end annotation


# instance fields
.field mConnected:Z

.field mLock:Ljava/lang/Object;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1093
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mPaths:Ljava/util/ArrayList;

    .line 1091
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mLock:Ljava/lang/Object;

    .line 1094
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 1095
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 6

    .prologue
    .line 1115
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1116
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mConnected:Z

    .line 1117
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1118
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    .local v2, path:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "TwGLBurstMenu"

    const-string v5, "Scanner is Not conneted. skip scan file."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mConnected:Z

    goto :goto_0

    .line 1128
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1126
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1128
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1129
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mConnected:Z

    .line 1135
    return-void
.end method

.method public scanPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 1098
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1099
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1101
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1110
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1111
    return-void

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "TwGLBurstMenu"

    const-string v3, "Scanner is Not conneted. skip scan file."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mConnected:Z

    goto :goto_0

    .line 1110
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1107
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
