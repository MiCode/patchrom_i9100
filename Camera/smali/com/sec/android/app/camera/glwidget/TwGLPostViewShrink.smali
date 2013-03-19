.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewShrink.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewShutter"

.field private static final THUMBNAIL_LEFT:I

.field private static final THUMBNAIL_SIZE:I

.field private static final THUMBNAIL_TOP:I


# instance fields
.field mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f070082

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_LEFT:I

    .line 40
    const v0, 0x7f070083

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_TOP:I

    .line 41
    const v0, 0x7f070084

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLandroid/graphics/Bitmap;Z)V
    .locals 13
    .parameter "activityContext"
    .parameter "previewLeft"
    .parameter "previewTop"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "data"
    .parameter "bCamera"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    int-to-float v4, v5

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v12

    .line 49
    .local v12, width:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    .line 51
    .local v9, height:I
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setFlip(Z)V

    .line 57
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_SIZE:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    div-float v2, v1, v3

    .line 58
    .local v2, animWidthRatio:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_SIZE:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    div-float v4, v1, v3

    .line 60
    .local v4, animHeightRatio:F
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 61
    .local v10, shrinkAnimation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 62
    .local v0, ss:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3, v12, v9}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 63
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 66
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_LEFT:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_TOP:I

    int-to-float v6, v6

    sub-float v6, v6, p3

    invoke-direct {v11, v1, v3, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 67
    .local v11, ts:Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v11, v1, v3, v12, v9}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 68
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    const-wide/16 v5, 0x12c

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 71
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 72
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->playAnimation(I)V

    return-void
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 3
    .parameter "step"

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 111
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
