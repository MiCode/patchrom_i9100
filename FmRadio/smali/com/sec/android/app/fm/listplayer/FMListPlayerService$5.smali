.class Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;
.super Landroid/os/Handler;
.source "FMListPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/listplayer/FMListPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 431
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 456
    return-void

    .line 436
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$302(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;Z)Z

    goto :goto_0

    .line 445
    :sswitch_2
    const-string v0, "###"

    const-string v1, "case BroadcastMessage.PALM_TOUCH_DOWN :"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    goto :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0xfdc -> :sswitch_0
        0xfdd -> :sswitch_1
        0xfde -> :sswitch_1
        0x1004 -> :sswitch_2
    .end sparse-switch
.end method
