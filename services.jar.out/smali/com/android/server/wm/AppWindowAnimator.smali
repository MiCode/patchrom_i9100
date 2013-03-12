.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animInitialized:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field freezingScreen:Z

.field hasTransformation:Z

.field mActivityEnter:Z

.field mActivityExit:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field thumbnail:Landroid/view/Surface;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .parameter "service"
    .parameter "atoken"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 49
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mActivityExit:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mActivityEnter:Z

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    iput-object p2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 62
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 63
    return-void
.end method

.method private stepAnimation(J)Z
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 192
    .local v0, more:Z
    if-nez v0, :cond_1

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 198
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    goto :goto_0
.end method

.method private stepThumbnailAnimation(J)V
    .locals 7
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 153
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 154
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 155
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 157
    .local v0, screenAnimation:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 162
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 163
    .local v1, tmpFloats:[F
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 167
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x5

    aget v6, v1, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/Surface;->setPosition(FF)V

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setAlpha(F)V

    .line 178
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setLayer(I)V

    .line 180
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    aget v3, v1, v3

    const/4 v5, 0x3

    aget v5, v1, v5

    aget v2, v1, v2

    const/4 v6, 0x4

    aget v6, v1, v6

    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 182
    return-void

    .end local v0           #screenAnimation:Z
    .end local v1           #tmpFloats:[F
    :cond_1
    move v0, v3

    .line 155
    goto :goto_0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 120
    return-void
.end method

.method public clearThumbnail()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    .line 127
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " freezingScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 312
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 313
    const-string v0, " animation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 315
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    :cond_3
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v0, :cond_4

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 324
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "thumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 325
    const-string v0, " x="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 326
    const-string v0, " y="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 328
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "thumbnailAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "thumbnailTransformation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_5
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 5
    .parameter "anim"
    .parameter "initialized"

    .prologue
    const/4 v4, 0x1

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 70
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    .line 71
    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 72
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 73
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 74
    .local v1, zorder:I
    const/4 v0, 0x0

    .line 75
    .local v0, adj:I
    if-ne v1, v4, :cond_5

    .line 78
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_4

    .line 79
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mActivityEnter:Z

    if-eqz v2, :cond_2

    .line 80
    const/4 v0, 0x1

    .line 94
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v2, v0, :cond_1

    .line 95
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 100
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f80

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 101
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 102
    return-void

    .line 81
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mActivityExit:Z

    if-eqz v2, :cond_3

    .line 82
    const/16 v0, 0xa

    goto :goto_0

    .line 84
    :cond_3
    const/16 v0, 0x3e8

    goto :goto_0

    .line 87
    :cond_4
    const/16 v0, 0x3e8

    goto :goto_0

    .line 90
    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 91
    const/16 v0, -0x3e8

    goto :goto_0

    .line 100
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllWindowsLocked()Z
    .locals 5

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, isAnimating:Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 297
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 298
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 301
    .local v3, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 302
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v3           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    return v2
.end method

.method stepAnimationLocked(JII)Z
    .locals 6
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 204
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v5, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 291
    :cond_0
    :goto_0
    return v2

    .line 215
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 217
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_4

    .line 223
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    if-nez v4, :cond_3

    .line 224
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p3, p4, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 226
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 227
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v4, :cond_4

    .line 229
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->show()V

    .line 230
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 233
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 236
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    goto :goto_0

    .line 242
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 245
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 246
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 249
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 251
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_7

    move v2, v3

    .line 252
    goto :goto_0

    .line 255
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v4, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 261
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 262
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v4, :cond_8

    .line 263
    iput v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 268
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowControlbarTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowControlbarTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v5, :cond_9

    .line 270
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->moveMultiWindowControlBarWindows(Z)Z

    .line 274
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v5, :cond_a

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 283
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 286
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_b

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    move v2, v3

    .line 291
    goto/16 :goto_0
.end method

.method updateLayers()V
    .locals 7

    .prologue
    .line 130
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 131
    .local v0, N:I
    iget v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 132
    .local v1, adj:I
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 133
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 134
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 135
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 136
    .local v4, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, v1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 137
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v5, v6, :cond_0

    .line 138
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-nez v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_2

    .line 146
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 133
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    .end local v4           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    return-void
.end method
