.class public abstract Lcom/android/internal/view/BaseSurfaceHolder;
.super Ljava/lang/Object;
.source "BaseSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

.field mHaveGottenCallbacks:Z

.field mLastLockTime:J

.field protected mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedWidth:I

.field public mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTmpDirty:Landroid/graphics/Rect;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 42
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 43
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 45
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 46
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 50
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 10
    .parameter "dirty"

    .prologue
    .line 165
    iget v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 166
    new-instance v6, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string v7, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {v6, v7}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onAllowLockCanvas()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    if-nez p1, :cond_2

    .line 176
    iget-object v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 177
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    .line 179
    :cond_1
    iget-object v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    iget-object p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    .line 184
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 211
    .end local v0           #c:Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 185
    .restart local v0       #c:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "BaseSurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 200
    .local v4, now:J
    iget-wide v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 201
    .local v2, nextTime:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 203
    sub-long v6, v2, v4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 208
    :cond_5
    iput-wide v4, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 209
    iget-object v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    const/4 v0, 0x0

    goto :goto_1

    .line 204
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 4

    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 108
    :goto_0
    return-object v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 97
    .local v0, N:I
    if-lez v0, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 99
    :cond_1
    new-array v1, v0, [Landroid/view/SurfaceHolder$Callback;

    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    .line 106
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    goto :goto_0

    .line 103
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    goto :goto_1

    .line 106
    .end local v0           #N:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRequestedFormat()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    return v0
.end method

.method public getRequestedHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    return v0
.end method

.method public getRequestedWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAllowLockCanvas()Z
.end method

.method public abstract onRelayoutContainer()V
.end method

.method public abstract onUpdateSurface()V
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 117
    :cond_0
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 118
    iput p2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 121
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    if-eq v0, p1, :cond_0

    .line 132
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    .line 135
    :cond_0
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 124
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    .line 125
    :cond_0
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 128
    :cond_1
    return-void
.end method

.method public setSurfaceFrameSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 229
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 230
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 231
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 232
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 154
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 148
    :pswitch_2
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    if-eq v0, p1, :cond_0

    .line 149
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public ungetCallbacks()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    .line 113
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    return-void
.end method
