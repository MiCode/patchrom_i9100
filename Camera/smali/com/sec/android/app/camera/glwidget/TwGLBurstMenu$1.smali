.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;
.super Landroid/os/Handler;
.source "TwGLBurstMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const-string v0, "TwGLBurstMenu"

    const-string v1, "Inactivity timer is expired. finish."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
