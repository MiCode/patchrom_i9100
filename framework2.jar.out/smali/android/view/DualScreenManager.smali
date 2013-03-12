.class public Landroid/view/DualScreenManager;
.super Ljava/lang/Object;
.source "DualScreenManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public flipDisplay(Landroid/view/SurfaceView;Z)V
    .locals 9
    .parameter "mSurface"
    .parameter "extFlag"

    .prologue
    .line 51
    instance-of v5, p1, Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 53
    check-cast v5, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 55
    :cond_0
    instance-of v5, p1, Landroid/opengl/GLExternalSurfaceView;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 57
    check-cast v5, Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLExternalSurfaceView;->onPause()V

    .line 59
    :cond_1
    if-eqz p2, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Surface;->flipExtDisplayFlag(I)I

    .line 64
    :goto_0
    const/4 v2, 0x0

    .line 66
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 67
    :try_start_0
    iget-object v5, p1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    .line 68
    iget-object v5, p1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 71
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iget v6, p1, Landroid/view/SurfaceView;->mFormat:I

    iget v7, p1, Landroid/view/SurfaceView;->mWidth:I

    iget v8, p1, Landroid/view/SurfaceView;->mHeight:I

    invoke-interface {v1, v5, v6, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->flipExtDisplayFlag(I)I

    goto :goto_0

    .line 69
    .restart local v2       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 74
    .restart local v0       #arr$:[Landroid/view/SurfaceHolder$Callback;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3
    instance-of v5, p1, Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_4

    move-object v5, p1

    .line 76
    check-cast v5, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 79
    :cond_4
    instance-of v5, p1, Landroid/opengl/GLExternalSurfaceView;

    if-eqz v5, :cond_5

    .line 81
    check-cast p1, Landroid/opengl/GLExternalSurfaceView;

    .end local p1
    invoke-virtual {p1}, Landroid/opengl/GLExternalSurfaceView;->onResume()V

    .line 84
    :cond_5
    return-void
.end method

.method public setDualScreen(Landroid/view/SurfaceView;)V
    .locals 3
    .parameter "mSurface"

    .prologue
    .line 42
    iget-boolean v0, p1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Surface Already Created..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
