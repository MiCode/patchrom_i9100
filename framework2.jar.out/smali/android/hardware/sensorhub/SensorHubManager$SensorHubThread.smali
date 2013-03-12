.class Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorHubThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
    }
.end annotation


# instance fields
.field mSensorHubsReady:Z

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method startLocked()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 124
    :try_start_0
    iget-object v3, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mSensorHubsReady:Z

    .line 126
    new-instance v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;

    invoke-direct {v0, p0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;-><init>(Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;)V

    .line 127
    .local v0, runnable:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-class v3, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 128
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    :try_start_1
    iget-boolean v3, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mSensorHubsReady:Z

    if-nez v3, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    .end local v0           #runnable:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    .line 138
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_2

    :goto_2
    return v2

    .line 133
    .restart local v0       #runnable:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
    .restart local v1       #thread:Ljava/lang/Thread;
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :try_start_4
    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 138
    .end local v0           #runnable:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method
