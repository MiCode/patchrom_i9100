.class public Lcom/sec/android/app/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/sec/android/app/camera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCameraId:I

.field public mCameraOpened:Z

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    .line 52
    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    .line 53
    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v2, Lcom/sec/android/app/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/CameraHolder$MyHandler;-><init>(Lcom/sec/android/app/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    .line 99
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    new-instance v3, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v3}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 103
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 104
    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    .line 106
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 107
    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/sec/android/app/camera/CameraHolder;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/sec/android/app/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sec/android/app/camera/CameraHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    .line 68
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, now:J
    iget-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_1
    monitor-exit p0

    return-void

    .line 185
    .end local v0           #now:J
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 192
    .restart local v0       #now:J
    :cond_1
    :try_start_1
    const-string v2, "CameraHolder"

    const-string v3, "mCameraDevice.release();"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 194
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 198
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 5
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraOpened:Z

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    if-eq v2, p1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 126
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 130
    :try_start_1
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 132
    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 154
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraOpened:Z

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 122
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/RuntimeException;
    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 137
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 138
    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v1

    .line 140
    .local v1, ex:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 146
    :cond_2
    :try_start_5
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->reconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 148
    :catch_2
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v2, "CameraHolder"

    const-string v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraOpened:Z

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraOpened:Z

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraHolder;->open(I)Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sec/android/app/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :cond_0
    monitor-exit p0

    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Lcom/sec/android/app/camera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v0           #e:Lcom/sec/android/app/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
