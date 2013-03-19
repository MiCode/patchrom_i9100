.class public Lcom/sec/android/glview/TwGLNinePatch;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLNinePatch.java"


# instance fields
.field private mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 70
    if-eqz p6, :cond_0

    .line 71
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_2

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 79
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_3

    cmpl-float v0, p5, v2

    if-nez v0, :cond_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 99
    if-eqz p6, :cond_0

    .line 100
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 108
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p5, v2

    if-nez v0, :cond_3

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 112
    :cond_3
    invoke-virtual {p0, p7}, Lcom/sec/android/glview/TwGLNinePatch;->setAlpha(F)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 45
    if-eqz p4, :cond_0

    .line 46
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 54
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 137
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 211
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 213
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    .line 219
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v0

    .line 225
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 226
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_0

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onAlphaUpdated()V

    .line 185
    :cond_0
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatch;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatch;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 174
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdated()V

    .line 177
    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 258
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 196
    :cond_0
    return-void
.end method
