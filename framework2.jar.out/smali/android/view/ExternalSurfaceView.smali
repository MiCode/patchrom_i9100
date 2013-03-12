.class public Landroid/view/ExternalSurfaceView;
.super Landroid/view/SurfaceView;
.source "ExternalSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Landroid/view/ExternalSurfaceView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Landroid/view/ExternalSurfaceView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Landroid/view/ExternalSurfaceView;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 49
    return-void
.end method


# virtual methods
.method public flipExtDisplayFlag(Z)V
    .locals 9
    .parameter "extFlag"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/view/ExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Surface;->flipExtDisplayFlag(I)I

    .line 60
    :goto_0
    const/4 v2, 0x0

    .line 62
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 63
    :try_start_0
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    .line 64
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 65
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 67
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    invoke-virtual {p0}, Landroid/view/ExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iget v6, p0, Landroid/view/SurfaceView;->mFormat:I

    iget v7, p0, Landroid/view/SurfaceView;->mWidth:I

    iget v8, p0, Landroid/view/SurfaceView;->mHeight:I

    invoke-interface {v1, v5, v6, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/ExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->flipExtDisplayFlag(I)I

    goto :goto_0

    .line 65
    .restart local v2       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 70
    .restart local v0       #arr$:[Landroid/view/SurfaceHolder$Callback;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    return-void
.end method
