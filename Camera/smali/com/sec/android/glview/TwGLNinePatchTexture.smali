.class public Lcom/sec/android/glview/TwGLNinePatchTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLNinePatchTexture.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHeight:I

.field private mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mPadding:Landroid/graphics/Rect;

.field private mResId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    .line 83
    iput p6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    .line 84
    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    .line 85
    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    .line 87
    iget v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    if-gtz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    .line 89
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    if-gtz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    .line 91
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "resId"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    .line 65
    iput p4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    .line 68
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method protected getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 125
    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    iget v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 127
    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadNinePatch()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    .line 143
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 146
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 152
    move v1, p1

    .line 153
    .local v1, newWidth:F
    move v0, p2

    .line 155
    .local v0, newHeight:F
    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    .line 158
    :cond_0
    cmpl-float v2, p2, v3

    if-nez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    .line 161
    :cond_1
    float-to-int v2, v1

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    .line 162
    float-to-int v2, v0

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    .line 163
    iget v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    int-to-float v3, v3

    invoke-super {p0, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reLoad()Z

    .line 165
    return-void
.end method
