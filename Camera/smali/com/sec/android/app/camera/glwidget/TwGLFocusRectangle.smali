.class public Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLFocusRectangle.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_THICKNESS:I = 0x3


# instance fields
.field private mColor:I

.field private mHeight:F

.field private mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mThickness:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 27
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->DEFAULT_COLOR:I

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
    .line 48
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

    .line 30
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    .line 50
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    .line 51
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    .line 52
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    .line 53
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    .line 55
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    const/high16 v5, 0x4040

    div-float v5, v1, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 56
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    const/high16 v4, 0x4040

    div-float v4, v1, v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 57
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    const/high16 v5, 0x4040

    div-float v5, v1, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 58
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    const/high16 v4, 0x4040

    div-float v4, v1, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 61
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    const/high16 v3, 0x3fc0

    div-float v3, v1, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 62
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    const/high16 v2, 0x3fc0

    div-float v2, v1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    const/high16 v3, 0x3fc0

    div-float v3, v1, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 64
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    const/high16 v2, 0x3fc0

    div-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->translateAbsolute(FF)V

    .line 78
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 115
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mColor:I

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_7

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    .line 143
    :cond_7
    return-void
.end method

.method public setRect(FFFF)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v6, 0x4040

    const/high16 v5, 0x3fc0

    const/4 v4, 0x0

    .line 81
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    .line 82
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    div-float/2addr v1, v6

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    div-float/2addr v1, v6

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    div-float/2addr v3, v6

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 110
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->translateAbsolute(FF)V

    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->setSize(FF)V

    .line 112
    return-void
.end method

.method public setThickness(I)V
    .locals 3
    .parameter "thickness"

    .prologue
    .line 146
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleLeft2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleTop2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleRight2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mRectangleBottom2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    .line 174
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->mThickness:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusRectangle;->setSize(FF)V

    .line 175
    return-void
.end method
