.class Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;
.super Landroid/os/Handler;
.source "FMListPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/listplayer/FMListPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 432
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x1f

    const/high16 v2, 0x3f80

    .line 436
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 438
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    .line 439
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    iget v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->volumeCtrl(F)V

    goto :goto_0

    .line 442
    :cond_0
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    goto :goto_1

    .line 447
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->mCurrentVolume:F

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
