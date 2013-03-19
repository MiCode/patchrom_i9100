.class public abstract Lcom/sec/android/glview/TwGLAniVertex;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAniVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;
    }
.end annotation


# static fields
.field public static final DISP_PIC:I = 0x2

.field public static final DISP_PLAY:I = 0x1

.field public static final DISP_STOP:I


# instance fields
.field protected final DISP_BREAK:F

.field protected final DISP_CNT:F

.field protected final DISP_CONTINUE:F

.field protected GRID_SIZE:I

.field protected final INIT_CNT:F

.field protected mCnt:F

.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLayoutUpdated:Z

.field protected mMode:I

.field protected mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertices:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 42
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    .line 45
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_CNT:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->INIT_CNT:F

    .line 48
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_BREAK:F

    .line 49
    const/high16 v0, -0x4000

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_CONTINUE:F

    .line 51
    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 57
    iput v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    .line 81
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    .line 92
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getDrawRatio()F
.end method

.method public declared-synchronized getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 161
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized initVertices()V
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    .line 113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->setVertices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/high16 v3, -0x4080

    .line 170
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->setVertices()V

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    .line 178
    :cond_2
    const/4 v0, 0x0

    .line 180
    .local v0, ratio:F
    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getDrawRatio()F

    move-result v0

    .line 183
    :cond_3
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_4

    const/high16 v1, -0x4000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->stopAniCustomAnimation()V

    .line 185
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_0

    .line 189
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniVertex;->setCustomAnimation(F)V

    .line 191
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 192
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 194
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 196
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 198
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    .line 199
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0           #ratio:F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    .line 104
    return-void
.end method

.method protected declared-synchronized onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->initSize()V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->initVertices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract setCustomAnimation(F)V
.end method

.method public setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    .line 67
    return-void
.end method

.method public setPicureMode(Z)V
    .locals 2
    .parameter "picMode"

    .prologue
    const/4 v1, 0x0

    .line 204
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 205
    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    goto :goto_0
.end method

.method protected declared-synchronized setVertices()V
    .locals 13

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getLeft()F

    move-result v1

    .line 122
    .local v1, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getTop()F

    move-result v2

    .line 123
    .local v2, top:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getRight()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getLeft()F

    move-result v12

    sub-float v5, v11, v12

    .line 124
    .local v5, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getBottom()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getTop()F

    move-result v12

    sub-float v0, v11, v12

    .line 126
    .local v0, height:F
    const/4 v3, 0x0

    .line 128
    .local v3, vPos:I
    const/4 v8, 0x0

    .local v8, y:I
    :goto_0
    iget v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v8, v11, :cond_1

    .line 129
    const/4 v6, 0x0

    .local v6, x:I
    move v4, v3

    .end local v3           #vPos:I
    .local v4, vPos:I
    :goto_1
    iget v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v6, v11, :cond_0

    .line 131
    int-to-float v11, v6

    iget v12, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v5

    add-float v7, v1, v11

    .line 132
    .local v7, xPos:F
    int-to-float v11, v8

    iget v12, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v0

    add-float v9, v2, v11

    .line 133
    .local v9, yPos:F
    const/4 v10, 0x0

    .line 135
    .local v10, zPos:F
    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #vPos:I
    .restart local v3       #vPos:I
    invoke-virtual {v11, v4, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #vPos:I
    .restart local v4       #vPos:I
    invoke-virtual {v11, v3, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #vPos:I
    .restart local v3       #vPos:I
    invoke-virtual {v11, v4, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #vPos:I
    .restart local v4       #vPos:I
    goto :goto_1

    .line 128
    .end local v7           #xPos:F
    .end local v9           #yPos:F
    .end local v10           #zPos:F
    :cond_0
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    .end local v4           #vPos:I
    .restart local v3       #vPos:I
    goto :goto_0

    .line 142
    .end local v6           #x:I
    :cond_1
    monitor-exit p0

    return-void

    .line 121
    .end local v0           #height:F
    .end local v1           #left:F
    .end local v2           #top:F
    .end local v3           #vPos:I
    .end local v5           #width:F
    .end local v8           #y:I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public startAniCustomAnimation()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 216
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    .line 217
    return-void
.end method

.method public stopAniCustomAnimation()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    .line 224
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;->onAniProgress(Lcom/sec/android/glview/TwGLView;I)V

    .line 226
    :cond_0
    return-void
.end method
