.class Landroid/view/SurfaceView$MyWindow$1;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/SurfaceView$MyWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView$MyWindow;

.field final synthetic val$_h:I

.field final synthetic val$_reportDraw:Z

.field final synthetic val$_w:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceView$MyWindow;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Landroid/view/SurfaceView$MyWindow$1;->this$0:Landroid/view/SurfaceView$MyWindow;

    iput p2, p0, Landroid/view/SurfaceView$MyWindow$1;->val$_w:I

    iput p3, p0, Landroid/view/SurfaceView$MyWindow$1;->val$_h:I

    iput-boolean p4, p0, Landroid/view/SurfaceView$MyWindow$1;->val$_reportDraw:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 693
    iget-object v1, p0, Landroid/view/SurfaceView$MyWindow$1;->this$0:Landroid/view/SurfaceView$MyWindow;

    #getter for: Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Landroid/view/SurfaceView$MyWindow;->access$100(Landroid/view/SurfaceView$MyWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 694
    .local v0, surfaceView:Landroid/view/SurfaceView;
    if-eqz v0, :cond_1

    .line 698
    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 700
    :try_start_0
    iget-boolean v1, p0, Landroid/view/SurfaceView$MyWindow$1;->val$_reportDraw:Z

    if-eqz v1, :cond_2

    .line 701
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 702
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 703
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 713
    :cond_1
    return-void

    .line 704
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceView$MyWindow$1;->val$_w:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceView$MyWindow$1;->val$_h:I

    if-eq v1, v2, :cond_0

    .line 706
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 707
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v1

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
