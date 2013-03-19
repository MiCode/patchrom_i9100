.class public Lcom/sec/android/app/camera/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuBase$OnHideListener;,
        Lcom/sec/android/app/camera/MenuBase$OnShowListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MenuBase"

.field public static final Z_LEVEL_0:I = 0x0

.field public static final Z_LEVEL_1:I = 0x1

.field public static final Z_LEVEL_10:I = 0xb

.field public static final Z_LEVEL_11:I = 0xc

.field public static final Z_LEVEL_12:I = 0xd

.field public static final Z_LEVEL_13:I = 0xe

.field public static final Z_LEVEL_2:I = 0x2

.field public static final Z_LEVEL_3:I = 0x4

.field public static final Z_LEVEL_4:I = 0x5

.field public static final Z_LEVEL_5:I = 0x6

.field public static final Z_LEVEL_6:I = 0x7

.field public static final Z_LEVEL_7:I = 0x8

.field public static final Z_LEVEL_8:I = 0x9

.field public static final Z_LEVEL_9:I = 0xa

.field public static final Z_LEVEL_FULLSCREEN:I = 0x10

.field public static final Z_LEVEL_TOP:I = 0xf

.field public static final Z_LEVEL_TOUCH_FOCUS:I = 0x3


# instance fields
.field private mActive:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mBaseView:Landroid/view/ViewGroup;

.field private mCaptureEnabled:Z

.field protected mChild:Lcom/sec/android/app/camera/MenuBase;

.field private mEffect:Z

.field private mGLActive:Z

.field protected mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field public mLayoutId:I

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

.field private mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

.field private mPreviewTouchEnabled:Z

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field public mViewId:I

.field protected mVisibility:Z

.field protected mZorder:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    .line 133
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 11
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "effect"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 56
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 84
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 85
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 86
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 101
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 102
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 103
    iput p3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 104
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 105
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 106
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    invoke-virtual {v1, v2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 114
    .local v10, baseView:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 117
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 119
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 129
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "effect"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 84
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 85
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f80

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 86
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 139
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 141
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 142
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 143
    iput p5, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 144
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 147
    iput-boolean p6, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 368
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 370
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 371
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 372
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 373
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 374
    return-void
.end method

.method public clearGLView()V
    .locals 3

    .prologue
    .line 354
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 356
    .local v0, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 358
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 361
    .end local v0           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    return-void
.end method

.method public final getBaseResourceId()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    return v0
.end method

.method public final getBaseViewId()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    return v0
.end method

.method public final getVisibility()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    return v0
.end method

.method public final getZorder()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hideMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 197
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-eqz v3, :cond_1

    .line 198
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v3, :cond_4

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, baseView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 201
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .end local v0           #baseView:Landroid/view/View;
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 232
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/MenuBase$OnHideListener;->onHide(Lcom/sec/android/app/camera/MenuBase;)V

    .line 236
    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 237
    return-void

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 205
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_0

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_7

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 208
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLastElementView()Lcom/sec/android/app/camera/MenuBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuBase;->getViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 209
    .local v1, lastElementView:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_6

    .line 210
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLoaded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_6
    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 219
    .end local v1           #lastElementView:Lcom/sec/android/glview/TwGLView;
    :cond_7
    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    return v0
.end method

.method public isAnimationFinished()Z
    .locals 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 398
    .local v0, view:Lcom/sec/android/glview/TwGLView;
    if-nez v0, :cond_0

    .line 399
    const/4 v1, 0x1

    .line 400
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isAnimationFinished()Z

    move-result v1

    goto :goto_0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 347
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public restoreMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-nez v2, :cond_2

    .line 241
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_5

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, baseView:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .end local v0           #baseView:Landroid/view/View;
    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_3

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 266
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnShowListener;->onShow(Lcom/sec/android/app/camera/MenuBase;)V

    .line 270
    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 271
    return-void

    .line 248
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 249
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    .line 250
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 253
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 255
    :cond_6
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 316
    return-void
.end method

.method public final setBaseResourceId(I)V
    .locals 0
    .parameter "layoutId"

    .prologue
    .line 287
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 288
    return-void
.end method

.method public final setBaseViewId(I)V
    .locals 0
    .parameter "viewId"

    .prologue
    .line 295
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 296
    return-void
.end method

.method protected setCaptureEnabled(Z)V
    .locals 0
    .parameter "capture"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 341
    return-void
.end method

.method public final setChild(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 304
    return-void
.end method

.method public final setDim(Z)V
    .locals 3
    .parameter "dimmed"

    .prologue
    .line 274
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 276
    .local v0, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 277
    if-eqz p1, :cond_1

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 280
    .end local v0           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    return-void

    .line 277
    .restart local v0       #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    .line 179
    return-void
.end method

.method public final setLaunchPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 319
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    .line 320
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    .line 321
    return-void
.end method

.method public setOnHideListener(Lcom/sec/android/app/camera/MenuBase$OnHideListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    .line 171
    return-void
.end method

.method public setOnShowListener(Lcom/sec/android/app/camera/MenuBase$OnShowListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    .line 167
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 175
    return-void
.end method

.method protected setTouchHandled(Z)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 337
    return-void
.end method

.method public final setZorder(I)V
    .locals 1
    .parameter "zOrder"

    .prologue
    .line 311
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 312
    return-void
.end method

.method public showMenu()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->pushMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 191
    .local v0, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method
