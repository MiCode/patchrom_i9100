.class public Lcom/sec/android/glview/TwGLUtil;
.super Ljava/lang/Object;
.source "TwGLUtil.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIMATION_DURATION_LONG:I = 0x3e8

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.cooliris.media.action.REVIEW"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 228
    :cond_0
    return-void
.end method

.method public static final calculateSampleSize(II)I
    .locals 1
    .parameter "src"
    .parameter "target"

    .prologue
    .line 702
    if-lt p0, p1, :cond_0

    if-nez p1, :cond_1

    .line 703
    :cond_0
    const/4 v0, 0x1

    .line 705
    :goto_0
    return v0

    :cond_1
    div-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 448
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 512
    if-le p0, p2, :cond_0

    .line 516
    .end local p2
    :goto_0
    return p2

    .line 514
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 515
    goto :goto_0

    :cond_1
    move p2, p0

    .line 516
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 498
    sub-float v0, p0, p2

    .line 499
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 500
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 459
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAlphaOffAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 268
    .local v0, showAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 270
    return-object v0
.end method

.method public static getAlphaOnAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 256
    .local v0, showAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 258
    return-object v0
.end method

.method public static getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "array"

    .prologue
    .line 560
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 561
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    return-object v0
.end method

.method public static getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "array"

    .prologue
    .line 545
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 546
    .local v1, tempBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 547
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 548
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 550
    return-object v0
.end method

.method public static getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V
    .locals 1
    .parameter "glContext"
    .parameter "glCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 580
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 581
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 582
    return-void
.end method

.method public static getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .parameter "glContext"
    .parameter "screenDistance"

    .prologue
    .line 592
    return p1
.end method

.method public static getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .parameter "glContext"
    .parameter "screenDistance"

    .prologue
    .line 604
    return p1
.end method

.method public static final getGLOrientationBySystemOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    .line 681
    invoke-static {p0}, Lcom/sec/android/glview/TwGLUtil;->roundOrientation(I)I

    move-result v0

    .line 685
    .local v0, degree:I
    add-int/lit8 v0, v0, 0x5a

    .line 688
    sparse-switch v0, :sswitch_data_0

    .line 697
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 690
    :sswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 692
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 694
    :sswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V
    .locals 1
    .parameter "glContext"
    .parameter "screenCoordinate"
    .parameter "glX"
    .parameter "glY"

    .prologue
    .line 620
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 621
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 622
    return-void
.end method

.method public static getScreenDistanceFromGLDistanceX(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .parameter "glContext"
    .parameter "glDistance"

    .prologue
    .line 633
    return p1
.end method

.method public static getScreenDistanceFromGLDistanceY(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .parameter "glContext"
    .parameter "glDistance"

    .prologue
    .line 645
    return p1
.end method

.method public static getSlideInAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 9
    .parameter "view"
    .parameter "from"
    .parameter "withAlphaAnimation"

    .prologue
    const-wide/16 v7, 0xfa

    const/4 v6, 0x0

    .line 398
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 400
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 414
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 416
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 417
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 418
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 420
    if-eqz p2, :cond_0

    .line 421
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 422
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 423
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 424
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    :cond_0
    return-object v1

    .line 405
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 406
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 408
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 409
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 411
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 412
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;
    .locals 9
    .parameter "view"
    .parameter "from"
    .parameter "withAlphaAnimation"

    .prologue
    const-wide/16 v7, 0xfa

    const/4 v6, 0x0

    .line 359
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 361
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 375
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 377
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 378
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 379
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 380
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 381
    if-eqz p2, :cond_0

    .line 382
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 383
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 384
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 387
    :cond_0
    return-object v1

    .line 366
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 367
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 369
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 370
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 372
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 373
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 9
    .parameter "view"
    .parameter "to"
    .parameter "withAlphaAnimation"

    .prologue
    const-wide/16 v7, 0xfa

    const/4 v6, 0x0

    .line 320
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 322
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 338
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 339
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 340
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 341
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 342
    if-eqz p2, :cond_0

    .line 343
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 344
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 345
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 348
    :cond_0
    return-object v1

    .line 327
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 328
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 330
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 331
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 333
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 334
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;
    .locals 9
    .parameter "view"
    .parameter "to"
    .parameter "withAlphaAnimation"

    .prologue
    const-wide/16 v7, 0xfa

    const/4 v6, 0x0

    .line 281
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 283
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 297
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 299
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 300
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 301
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 302
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 303
    if-eqz p2, :cond_0

    .line 304
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 305
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 306
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 307
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 309
    :cond_0
    return-object v1

    .line 288
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 289
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 291
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 292
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 294
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 295
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getToggleAnimation(Lcom/sec/android/glview/TwGLView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "view"

    .prologue
    .line 430
    new-instance v0, Lcom/sec/android/glview/ToggleAnimation;

    invoke-direct {v0}, Lcom/sec/android/glview/ToggleAnimation;-><init>()V

    .line 431
    .local v0, animation:Lcom/sec/android/glview/ToggleAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float v2, v3, v4

    .line 432
    .local v2, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    add-float v1, v3, v4

    .line 433
    .local v1, height:F
    float-to-int v3, v2

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/glview/ToggleAnimation;->initialize(IIII)V

    .line 434
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/ToggleAnimation;->setDuration(J)V

    .line 435
    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 171
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    .end local v0           #i:I
    :goto_1
    return v0

    .line 170
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 469
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 479
    add-int/lit8 p0, p0, -0x1

    .line 480
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 481
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 482
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 483
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 484
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 485
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 78
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 79
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 80
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 83
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 85
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    move-object p0, v7

    .line 93
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 89
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static roundOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    .line 655
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 656
    const/4 p0, 0x0

    .line 658
    :cond_0
    rem-int/lit16 p0, p0, 0x168

    .line 660
    const/16 v1, 0x2d

    if-ge p0, v1, :cond_1

    .line 661
    const/4 v0, 0x0

    .line 671
    .local v0, retVal:I
    :goto_0
    return v0

    .line 662
    .end local v0           #retVal:I
    :cond_1
    const/16 v1, 0x87

    if-ge p0, v1, :cond_2

    .line 663
    const/16 v0, 0x5a

    .restart local v0       #retVal:I
    goto :goto_0

    .line 664
    .end local v0           #retVal:I
    :cond_2
    const/16 v1, 0xe1

    if-ge p0, v1, :cond_3

    .line 665
    const/16 v0, 0xb4

    .restart local v0       #retVal:I
    goto :goto_0

    .line 666
    .end local v0           #retVal:I
    :cond_3
    const/16 v1, 0x13b

    if-ge p0, v1, :cond_4

    .line 667
    const/16 v0, 0x10e

    .restart local v0       #retVal:I
    goto :goto_0

    .line 669
    .end local v0           #retVal:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #retVal:I
    goto :goto_0
.end method

.method public static toGLMatrix([F)[F
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 526
    const/16 v0, 0xf

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p0, v0

    .line 527
    const/16 v0, 0xd

    aget v1, p0, v6

    aput v1, p0, v0

    .line 528
    aget v0, p0, v5

    aput v0, p0, v6

    .line 529
    aget v0, p0, v2

    aput v0, p0, v5

    .line 530
    const/16 v0, 0xc

    aget v1, p0, v4

    aput v1, p0, v0

    .line 531
    aget v0, p0, v3

    aput v0, p0, v2

    .line 532
    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p0, v3

    .line 533
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    aput v3, p0, v4

    .line 534
    const/16 v0, 0xa

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    .line 535
    return-object p0
.end method
