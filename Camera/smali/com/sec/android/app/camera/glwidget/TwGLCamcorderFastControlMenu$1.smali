.class Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu$1;
.super Ljava/lang/Object;
.source "TwGLCamcorderFastControlMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->onClick(Lcom/sec/android/glview/TwGLView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    const-wide/16 v1, 0x190

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mIsBlockFastButton:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;Z)Z

    .line 496
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
