.class Landroid/media/AudioService$RcDisplayDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcDisplayDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 6013
    iput-object p1, p0, Landroid/media/AudioService$RcDisplayDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6015
    iput-object p2, p0, Landroid/media/AudioService$RcDisplayDeathHandler;->mCb:Landroid/os/IBinder;

    .line 6016
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 6019
    iget-object v0, p0, Landroid/media/AudioService$RcDisplayDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v0}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1

    .line 6020
    :try_start_0
    const-string v0, "AudioService"

    const-string v2, "RemoteControl: display died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6021
    iget-object v0, p0, Landroid/media/AudioService$RcDisplayDeathHandler;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;

    .line 6022
    monitor-exit v1

    .line 6023
    return-void

    .line 6022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlinkToRcDisplayDeath()V
    .locals 4

    .prologue
    .line 6028
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$RcDisplayDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6034
    :goto_0
    return-void

    .line 6029
    :catch_0
    move-exception v0

    .line 6031
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unlinkToRcDisplayDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_0
.end method
