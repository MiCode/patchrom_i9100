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
    .line 248
    iput-object p1, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 259
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 254
    :sswitch_1
    iget-object v0, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->onMREvent(Landroid/hardware/motion/MREvent;)V

    goto :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
