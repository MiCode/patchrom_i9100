.class public Lcom/sec/android/glview/TwGLRectangle;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLRectangle.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_THICKNESS:I = 0x3


# instance fields
.field private mColor:I

.field private mHeight:F

.field private mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

.field private mThickness:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 25
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLRectangle;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "color"
    .parameter "thickness"

    .prologue
    .line 41
    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int/lit8 v0, p7, 0x2

    int-to-float v0, v0

    add-float v4, p4, v0

    mul-int/lit8 v0, p7, 0x2

    int-to-float v0, v0

    add-float v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 28
    sget v0, Lcom/sec/android/glview/TwGLRectangle;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    .line 43
    iput p6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    .line 44
    iput p7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    .line 45
    iput p4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    .line 46
    iput p5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    .line 48
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    .line 49
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    .line 50
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    .line 51
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v5, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    .line 53
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 58
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    .line 60
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    .line 86
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 98
    :cond_3
    return-void
.end method

.method public setRect(FFFF)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 63
    iput p3, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    .line 64
    iput p4, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    .line 66
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    invoke-virtual {v0, v5, v5, v5, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    invoke-virtual {v0, v5, v5, v1, v5}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 79
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    .line 80
    iget v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setSize(FF)V

    .line 81
    return-void
.end method

.method public setThickness(I)V
    .locals 3
    .parameter "thickness"

    .prologue
    .line 101
    iput p1, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    .line 103
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 116
    :cond_3
    iget v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setSize(FF)V

    .line 117
    return-void
.end method
