.class public Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "IconDragShadowBuilder.java"


# instance fields
.field private isOnDelete:Z

.field private mSurface:Landroid/view/Surface;

.field private mView:Ljava/lang/ref/WeakReference;

.field private mVisibility:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->isOnDelete:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mVisibility:Z

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 65
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 75
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 68
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "UpdateableShadowBuilder"

    const-string v3, "Not enough memory to draw shadow"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "UpdateableShadowBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to draw shadow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, view:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 49
    iget-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->isOnDelete:Z

    if-eqz v1, :cond_1

    .line 50
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/high16 v2, -0x1

    const/high16 v3, 0x5555

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 55
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mVisibility:Z

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 59
    :cond_0
    return-void

    .line 52
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public releaseSurface()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    .line 95
    :cond_0
    return-void
.end method

.method public setOnDelete(Z)V
    .locals 0
    .parameter "onDelete"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->isOnDelete:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    .line 80
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mVisibility:Z

    .line 84
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    .line 88
    return-void
.end method
