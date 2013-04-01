.class Lcom/sec/android/app/fm/listplayer/FMListPlayerService$6;
.super Ljava/lang/Object;
.source "FMListPlayerService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


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
    .line 600
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$6;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 604
    .local v0, motion:I
    packed-switch v0, :pswitch_data_0

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 606
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$6;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$6;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
