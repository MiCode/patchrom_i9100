.class public Lcom/sec/android/glview/TwGLIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLIndicator.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 0
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 47
    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 48
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, padding:I
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 52
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 53
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v1, v3

    goto :goto_0

    .line 56
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLIndicator;->getWidth()F

    move-result v3

    int-to-float v5, v1

    sub-float/2addr v3, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 57
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 60
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 61
    return-void

    .line 58
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setVisibility(Lcom/sec/android/glview/TwGLView;I)V
    .locals 6
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 69
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, padding:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 74
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 75
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLIndicator;->getWidth()F

    move-result v3

    int-to-float v5, v1

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    .line 80
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #padding:I
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #padding:I
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 82
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    goto :goto_0
.end method
