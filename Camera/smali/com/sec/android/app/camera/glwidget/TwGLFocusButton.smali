.class public Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLFocusButton.java"


# static fields
.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_SUCCESS:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final INCR_VAL:I = 0x0

.field public static final MODE_FAIL:I = 0xd

.field public static final MODE_FOCUS:I = 0xb

.field public static final MODE_NOTREADY:I = 0xa

.field public static final MODE_READY:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final SOLID_RECT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SOLID_RECT_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLFocusButton"


# instance fields
.field aniLeftBottomGrow:Landroid/view/animation/Animation;

.field aniLeftBottomShrink:Landroid/view/animation/Animation;

.field aniLeftTopGrow:Landroid/view/animation/Animation;

.field aniLeftTopShrink:Landroid/view/animation/Animation;

.field aniRectGrow:Landroid/view/animation/Animation;

.field aniRectShrink:Landroid/view/animation/Animation;

.field aniRectTranslateGrow:Landroid/view/animation/Animation;

.field aniRightBottomGrow:Landroid/view/animation/Animation;

.field aniRightBottomShrink:Landroid/view/animation/Animation;

.field aniRightTopGrow:Landroid/view/animation/Animation;

.field aniRightTopShrink:Landroid/view/animation/Animation;

.field private mFocus:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFocusRectSizeX:I

.field private mFocusRectSizeY:I

.field private mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocusRect_Touch:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

.field private mInitPosX:I

.field private mInitPosY:I

.field private mMode:I

.field private mOldPosX:I

.field private mOldPosY:I

.field private mShrinkOffsetX:I

.field private mShrinkOffsetY:I

.field private mSolidRect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f07000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    .line 39
    const v0, 0x7f070163

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    .line 40
    const v0, 0x7f070164

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 6
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mSolidRect:Z

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0201f0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0201f2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0201ef

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 113
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f02002c

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    .line 114
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f02002d

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    int-to-float v2, v2

    const v3, 0x7f02002e

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    .line 116
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    int-to-float v2, v2

    const v3, 0x7f02002f

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    .line 118
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    .line 119
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    .line 120
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    .line 121
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 147
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 153
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 159
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 165
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 171
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 177
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 183
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->INCR_VAL:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 195
    float-to-int v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    .line 196
    float-to-int v0, p3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    .line 198
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 199
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 201
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translate(FF)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFZ)V
    .locals 9
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "solidRect"

    .prologue
    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 208
    iput-boolean p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mSolidRect:Z

    .line 210
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201ea

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 216
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201eb

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 219
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201e9

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 231
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    const v6, 0x7f0201ea

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Touch:Lcom/sec/android/glview/TwGLNinePatch;

    .line 233
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    .line 234
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    .line 235
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    .line 236
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    .line 238
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Touch:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 265
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3fa0

    const v2, 0x3f0ccccd

    const/high16 v3, 0x3fa0

    const v4, 0x3f0ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x4000

    const/4 v7, 0x1

    const/high16 v8, 0x4000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 298
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3fa0

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3fa0

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 325
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 335
    float-to-int v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    .line 336
    float-to-int v0, p3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    .line 338
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 339
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 341
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translate(FF)V

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLNinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLNinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLNinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    return p1
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 566
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 571
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getXDelta()I
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mSolidRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getYDelta()I
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mSolidRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public hideFocusRect()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public onFocus(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    .line 346
    return-void
.end method

.method public onFocus(IIZ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "animation"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x6

    .line 355
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 356
    .local v0, moveX:I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 358
    .local v1, moveY:I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_1

    .line 359
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 360
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 362
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translateAbsolute(FF)V

    .line 366
    :cond_1
    if-eqz p3, :cond_2

    .line 367
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    if-eq v2, v4, :cond_2

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 386
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 390
    :cond_2
    return-void
.end method

.method public resetInit(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 349
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    .line 350
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    .line 351
    return-void
.end method

.method public resetPosIndicator()V
    .locals 3

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusIndicator(I)V

    .line 396
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 397
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 399
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translate(FF)V

    .line 400
    return-void
.end method

.method public setDefaultFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 447
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 448
    return-void
.end method

.method public setFocusIndicator(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 457
    packed-switch p1, :pswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 463
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 470
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 479
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 482
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 487
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusRectIndicator(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 496
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 502
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 508
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 517
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 520
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 525
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showFocusIndicator(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 427
    return-void
.end method

.method public shrinkRect()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 537
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mSolidRect:Z

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 552
    :goto_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 554
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto :goto_0
.end method
