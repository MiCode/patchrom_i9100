.class Landroid/webkit/ZoomManager$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/TiltListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/TiltListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/TiltListener;->onMREvent(Landroid/hardware/motion/MREvent;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method
