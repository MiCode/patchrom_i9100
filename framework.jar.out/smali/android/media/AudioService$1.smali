.class Landroid/media/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 7
    .parameter "error"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    sparse-switch p1, :sswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 360
    :sswitch_0
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v6, 0x5dc

    move v4, v3

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 363
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_0

    .line 367
    :sswitch_1
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x5

    move v4, v3

    move v6, v3

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 370
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_0

    .line 375
    :sswitch_2
    const-string v0, "AudioService"

    const-string v1, "get AUDIO_STATUS_STOP_RECORDING - send MSG_STOP_SCREEN_RECORDING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x19

    move v4, v3

    move v6, v3

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method
