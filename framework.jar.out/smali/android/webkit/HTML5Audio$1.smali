.class Landroid/webkit/HTML5Audio$1;
.super Ljava/lang/Object;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5Audio;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Landroid/webkit/HTML5Audio$1;->this$0:Landroid/webkit/HTML5Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio$1;->this$0:Landroid/webkit/HTML5Audio;

    #calls: Landroid/webkit/HTML5Audio;->pause()V
    invoke-static {v0}, Landroid/webkit/HTML5Audio;->access$000(Landroid/webkit/HTML5Audio;)V

    .line 96
    const-string v0, "HTML5Audio"

    const-string v1, "MRListener() - Pause by Turn Over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
