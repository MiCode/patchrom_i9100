.class Landroid/webkit/HTML5VideoView$1;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoView;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$1;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$1;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "HTML5VideoView"

    const-string v1, "MRListener() - Pause by Turn Over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$1;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$1;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, v1, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
