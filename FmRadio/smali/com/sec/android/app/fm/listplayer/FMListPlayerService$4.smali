.class Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;
.super Ljava/lang/Object;
.source "FMListPlayerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 393
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v3, 0x1

    .line 395
    const-string v0, "FMListPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 425
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$302(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;Z)Z

    goto :goto_0

    .line 410
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$302(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;Z)Z

    goto :goto_0

    .line 416
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$300(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$302(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;Z)Z

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;
    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$400(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startFadeIn()V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resumePlay()V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
