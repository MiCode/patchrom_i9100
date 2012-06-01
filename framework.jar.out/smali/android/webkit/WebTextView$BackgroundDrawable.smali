.class Landroid/webkit/WebTextView$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private mBorderWidth:I

.field private mInsetRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 236
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    iput p1, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mBorderWidth:I

    .line 238
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 244
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, -0x66006ed7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    invoke-virtual {p0}, Landroid/webkit/WebTextView$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 246
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebTextView$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mBorderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 247
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebTextView$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mBorderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 248
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebTextView$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mBorderWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 249
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebTextView$BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mBorderWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 250
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mInsetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebTextView$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 252
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 256
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 260
    return-void
.end method
