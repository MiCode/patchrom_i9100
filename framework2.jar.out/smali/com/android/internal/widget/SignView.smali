.class public Lcom/android/internal/widget/SignView;
.super Landroid/view/View;
.source "SignView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SignView$SignatureInput;,
        Lcom/android/internal/widget/SignView$OnSignatureListener;
    }
.end annotation


# static fields
.field private static final ADD_ONE_SIGN:I = 0x0

.field private static final BORDER_WIDTH:I = 0x3

.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_PUSH:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG_TOUCH:Z = false

.field private static final DEFAULT_THRESHOLD:I = 0x1f4

.field private static final DEF_PEN_WIDTH:I = 0x8

.field private static final MAX_POINT:I = 0x400

.field private static final MAX_POINT_TIMER_DELAY:I = 0x7d0

.field private static final MAX_SIGNDB_NUMBER:I = 0x2

.field private static final MID:F = 0.5f

.field private static final MIN_SIGNATURE_NUM:I = 0x3

.field private static final MIN_XY:I = 0xc8

.field private static final RECOG_TIMER_DELAY:I = 0x2bc

.field private static final SIGN_DATA_PATH:Ljava/lang/String; = "/data/data/com.sec.android.signaturelock/data/"

.field private static final TAG:Ljava/lang/String; = "SignView"

.field private static THRESHOLDS:[I = null

.field private static final TOUCH_TOLERANCE:F = 20.0f

.field private static final TOUCH_TOLERANCE_AGAIN:F = 10.0f

.field public static final USER_ID:I = 0xa

.field public static final VERIFY_FAIL_DIFFERENT:I = 0x2

.field public static final VERIFY_FAIL_ENGINE:I = 0x0

.field public static final VERIFY_FAIL_STROKE:I = 0x1

.field public static final VERIFY_FAIL_TOO_SIMPLE:I = 0x4

.field public static final VERIFY_FAIL_TOO_SMALL:I = 0x3

.field private static final VERIFY_ONE_SIGN:I = 0x1


# instance fields
.field private mBackgroundResourceID:I

.field private mBezierEnabled:Z

.field private mBezierX:F

.field private mBezierY:F

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCompensationEnabled:Z

.field private mCurrentStroke:I

.field private mFirstDraw:Z

.field private mHasOutLine:Z

.field private mInputOneStrokStamp:I

.field private mInputType:I

.field private mMaxPointReached:Z

.field private mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

.field private mPath:Landroid/graphics/Path;

.field private mPenWidth:I

.field private mPersistentShow:Z

.field private mPreTime:J

.field private mRecognized:Z

.field private mRect:Landroid/graphics/Rect;

.field private mSavedInputType:I

.field private mSavedSignatureCount:I

.field private mSavedStrokeCount:I

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mSignBmpWrite:Landroid/graphics/Bitmap;

.field private mSignHandler:Landroid/os/Handler;

.field private mSignPaint:Landroid/graphics/Paint;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private mSignViewX:I

.field private mSignViewY:I

.field private mSignatureInputData:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSignatureVisible:Z

.field private mStartStamp:I

.field private mStartTime:J

.field private mStatus:I

.field private mThresholdValue:I

.field private mTimeGap:I

.field private mTimeOneStrokTap:I

.field private mTimeStamp:J

.field private mUseBezier:Z

.field private mUseHistoricalEvent:Z

.field private mUserInputEnabled:Z

.field private mVerificationLevel:I

.field private mVerifyVOffsetRegisterViewX:I

.field private mVerifyVOffsetRegisterViewY:I

.field private mWriteStart:Z

.field private mWritingAreaHeight:I

.field private mWritingAreaWidth:I

.field private mX:F

.field private mY:F

.field private signUpdateTimeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/widget/SignView;->DBG_PUSH:Z

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v1, v2

    .line 50
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 857
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 857
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SignView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SignView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SignView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/widget/SignView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/widget/SignView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    return p1
.end method

.method private addToPathForDrawing(I)V
    .locals 14
    .parameter "prevArraySize"

    .prologue
    const/high16 v13, 0x4120

    const/high16 v12, 0x4000

    .line 559
    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 561
    .local v1, currentArraySize:I
    iget v2, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 562
    .local v2, drawX:F
    iget v3, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 564
    .local v3, drawY:F
    sget-boolean v9, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v9, :cond_0

    .line 565
    const-string v9, "SignView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addToPathForDrawing from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    move v6, p1

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 568
    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 569
    .local v0, addedPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    iget v7, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    .line 570
    .local v7, x:F
    iget v8, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    .line 571
    .local v8, y:F
    sub-float v9, v7, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 572
    .local v4, dx:F
    sub-float v9, v8, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 574
    .local v5, dy:F
    cmpl-float v9, v4, v13

    if-gez v9, :cond_1

    cmpl-float v9, v5, v13

    if-ltz v9, :cond_2

    .line 575
    :cond_1
    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    add-float v10, v7, v2

    div-float/2addr v10, v12

    add-float v11, v8, v3

    div-float/2addr v11, v12

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 580
    :goto_1
    move v2, v7

    .line 581
    move v3, v8

    .line 567
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 577
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 584
    .end local v0           #addedPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_3
    iget v9, p0, Lcom/android/internal/widget/SignView;->mBezierX:F

    iput v9, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 585
    iget v9, p0, Lcom/android/internal/widget/SignView;->mBezierY:F

    iput v9, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 586
    return-void
.end method

.method private fillAreaBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 827
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 829
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillAreaBackground mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 835
    :cond_0
    return-void
.end method

.method private handleMoveEvent(FFJ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/high16 v3, 0x41a0

    const/high16 v7, 0x4000

    .line 507
    iget v2, p0, Lcom/android/internal/widget/SignView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 508
    .local v0, dx:F
    iget v2, p0, Lcom/android/internal/widget/SignView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 510
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v4, p0, Lcom/android/internal/widget/SignView;->mY:F

    iget v5, p0, Lcom/android/internal/widget/SignView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/android/internal/widget/SignView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 517
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 518
    iput p2, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 519
    iput-wide p3, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 520
    iget-wide v2, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long v2, p3, v2

    iput-wide v2, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 521
    return-void

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    float-to-int v3, p1

    int-to-float v3, v3

    float-to-int v4, p2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private handleMoveEventWithBezier(IIJ)V
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "timeStamp"

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMoveEventAndInvalidateWithBezier ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 528
    .local v1, arraySize:I
    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v0, v0, v2

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 530
    .local v12, startPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v0, v0, v2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 532
    .local v9, controlPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    iget v0, v12, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mBezierEnabled:Z

    .line 538
    .end local v9           #controlPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v12           #startPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_1
    int-to-float v0, p1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBezierX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 539
    .local v10, dx:F
    int-to-float v0, p2

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBezierY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 541
    .local v11, dy:F
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mBezierEnabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/high16 v0, 0x41a0

    cmpl-float v0, v10, v0

    if-gez v0, :cond_2

    const/high16 v0, 0x41a0

    cmpl-float v0, v11, v0

    if-ltz v0, :cond_4

    .line 543
    :cond_2
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_3

    const-string v0, "SignView"

    const-string v2, "Apply Bezier"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3
    iget v2, p0, Lcom/android/internal/widget/SignView;->mBezierX:F

    iget v3, p0, Lcom/android/internal/widget/SignView;->mBezierY:F

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move-wide/from16 v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/SignView;->DoBezier(IFFFFJ)V

    .line 546
    int-to-float v0, p1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBezierX:F

    add-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mBezierX:F

    .line 547
    int-to-float v0, p2

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBezierY:F

    add-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mBezierY:F

    .line 555
    :goto_0
    return-void

    .line 549
    :cond_4
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_5

    const-string v0, "SignView"

    const-string v2, "Just save this point"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v0, v0, v2

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v8, 0x2

    move-object v3, p0

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    int-to-float v0, p1

    iput v0, p0, Lcom/android/internal/widget/SignView;->mBezierX:F

    .line 553
    int-to-float v0, p2

    iput v0, p0, Lcom/android/internal/widget/SignView;->mBezierY:F

    goto :goto_0
.end method

.method private insertDataToEngine(I)V
    .locals 11
    .parameter "index"

    .prologue
    .line 1127
    const-string v6, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert points to engine from array: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v5, 0x1

    .line 1130
    .local v5, startWriting:Z
    const/4 v4, 0x0

    .line 1131
    .local v4, isOdd:I
    const/4 v0, 0x0

    .line 1134
    .local v0, count:I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 1135
    .local v3, input:Lcom/android/internal/widget/SignView$SignatureInput;
    sget-boolean v6, Lcom/android/internal/widget/SignView;->DBG_PUSH:Z

    if-eqz v6, :cond_1

    const-string v6, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_1
    iget v6, v3, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    packed-switch v6, :pswitch_data_0

    .line 1167
    :cond_2
    :goto_0
    const/16 v6, 0x400

    if-lt v0, v6, :cond_0

    .line 1169
    const-string v6, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exceeds maximum points, finish input: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v6}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V

    .line 1171
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 1176
    .end local v3           #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v6}, Lcom/android/internal/policy/ISignServiceInterface;->endWriting()V

    .line 1180
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 1139
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_0
    if-eqz v5, :cond_4

    .line 1140
    const/4 v5, 0x0

    .line 1141
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v6}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 1142
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v6}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 1145
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1146
    const/4 v4, 0x0

    .line 1148
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v7, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    iget v8, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v6, v7, v8}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1177
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :catch_0
    move-exception v1

    .line 1178
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1152
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 1154
    :try_start_1
    iget-boolean v6, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    rem-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1156
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 1157
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v7, v3, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    float-to-int v7, v7

    iget v8, v3, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    float-to-int v8, v8

    iget-wide v9, v3, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/internal/policy/ISignServiceInterface;->addOnePoint(IIJ)V

    goto :goto_0

    .line 1162
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 1163
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v6}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setThreshold(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1002
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1005
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 1007
    .local v1, inputType:I
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToolType(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget v2, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-eq v1, v2, :cond_0

    .line 1010
    iput v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 1012
    iget v2, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->setThresholdWithType()V

    .line 1002
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    .end local v1           #inputType:I
    :cond_1
    return-void
.end method

.method private setThresholdWithType()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1022
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set threshold dynamically, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, index:I
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v4, :cond_2

    .line 1041
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_1

    .line 1042
    const/4 v0, 0x0

    .line 1054
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    mul-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    add-int/2addr v2, v3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 1055
    return-void

    .line 1043
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_0

    .line 1044
    const/4 v0, 0x3

    goto :goto_0

    .line 1046
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v5, :cond_0

    .line 1047
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_3

    .line 1048
    const/4 v0, 0x2

    goto :goto_0

    .line 1049
    :cond_3
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_0

    .line 1050
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method DoBezier(IFFFFJ)V
    .locals 22
    .parameter "arraySize"
    .parameter "oldX"
    .parameter "oldY"
    .parameter "newX"
    .parameter "newY"
    .parameter "timeStamp"

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 590
    .local v21, startPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 592
    .local v20, controlPoint:Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    .line 593
    .local v14, P0X:F
    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    .line 594
    .local v15, P0Y:F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v16, v0

    .line 595
    .local v16, P1X:F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v17, v0

    .line 596
    .local v17, P1Y:F
    add-float v1, p4, p2

    const/high16 v2, 0x4000

    div-float v18, v1, v2

    .line 597
    .local v18, P2X:F
    add-float v1, p5, p3

    const/high16 v2, 0x4000

    div-float v19, v1, v2

    .line 599
    .local v19, P2Y:F
    const/high16 v1, 0x3f00

    mul-float/2addr v1, v14

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float v2, v2, v16

    const/high16 v7, 0x3f00

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f00

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float v2, v2, v18

    const/high16 v7, 0x3f00

    mul-float/2addr v2, v7

    add-float v3, v1, v2

    .line 600
    .local v3, middleX:F
    const/high16 v1, 0x3f00

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float v2, v2, v17

    const/high16 v7, 0x3f00

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f00

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float v2, v2, v19

    const/high16 v7, 0x3f00

    mul-float/2addr v2, v7

    add-float v4, v1, v2

    .line 601
    .local v4, middleY:F
    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    .line 603
    .local v5, middleTime:J
    move/from16 v9, v18

    .line 604
    .local v9, endX:F
    move/from16 v10, v19

    .line 605
    .local v10, endY:F
    move-wide/from16 v11, p6

    .line 608
    .local v11, endTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v8, v1, v2

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_0

    .line 612
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2nd point inserted, ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    new-instance v7, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v13, 0x2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End point inserted, ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    return-void
.end method

.method checkPreCondition()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 476
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-nez v3, :cond_1

    .line 477
    const-string v2, "SignView"

    const-string v3, "mSignService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v2}, Lcom/android/internal/widget/SignView$OnSignatureListener;->notifySignServiceError()V

    .line 503
    :cond_0
    :goto_0
    return v1

    .line 486
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    if-eqz v3, :cond_0

    .line 490
    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/16 v0, 0x800

    .line 491
    .local v0, maxPoints:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v0, :cond_3

    .line 492
    const-string v3, "SignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many points, can\'t handle it: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-boolean v3, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    if-nez v3, :cond_0

    .line 496
    iput-boolean v2, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    .line 497
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 490
    .end local v0           #maxPoints:I
    :cond_2
    const/16 v0, 0x400

    goto :goto_1

    .restart local v0       #maxPoints:I
    :cond_3
    move v1, v2

    .line 503
    goto :goto_0
.end method

.method public clearScreen()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 855
    return-void
.end method

.method doAddSign()V
    .locals 9

    .prologue
    .line 882
    const-string v5, "SignView"

    const-string v6, "doAddSign"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v6

    .line 899
    :try_start_0
    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-direct {p0, v5}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 901
    const/4 v2, 0x0

    .local v2, errCodePreCheck:I
    const/4 v1, 0x0

    .local v1, errCodeAdd:I
    const/4 v4, 0x0

    .line 904
    .local v4, signNum:I
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    const/16 v8, 0xc8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/policy/ISignServiceInterface;->checkSignatureData(II)I

    move-result v2

    .line 905
    if-gez v2, :cond_5

    .line 911
    :goto_0
    if-ltz v2, :cond_0

    if-eqz v1, :cond_8

    .line 912
    :cond_0
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign failed, precheck: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", add time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 917
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_3

    .line 918
    const/4 v3, 0x0

    .line 920
    .local v3, errorMessage:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    const/4 v5, -0x2

    if-ne v2, v5, :cond_6

    .line 921
    :cond_1
    const/4 v3, 0x2

    .line 927
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v3}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignFailed(I)V

    .line 945
    .end local v3           #errorMessage:I
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 946
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 948
    iget-boolean v5, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    if-nez v5, :cond_4

    .line 949
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    .end local v1           #errCodeAdd:I
    .end local v2           #errCodePreCheck:I
    .end local v4           #signNum:I
    :cond_4
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    return-void

    .line 907
    .restart local v1       #errCodeAdd:I
    .restart local v2       #errCodePreCheck:I
    .restart local v4       #signNum:I
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 908
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v4

    goto :goto_0

    .line 922
    .restart local v3       #errorMessage:I
    :cond_6
    const/4 v5, -0x3

    if-ne v2, v5, :cond_7

    .line 923
    const/4 v3, 0x3

    goto :goto_1

    .line 924
    :cond_7
    const/4 v5, -0x4

    if-ne v2, v5, :cond_2

    .line 925
    const/4 v3, 0x4

    goto :goto_1

    .line 930
    .end local v3           #errorMessage:I
    :cond_8
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign succeeded, sum of sign is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 935
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 936
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    iput v5, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 939
    :cond_9
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_3

    .line 940
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignSucceeded(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 951
    .end local v1           #errCodeAdd:I
    .end local v2           #errCodePreCheck:I
    .end local v4           #signNum:I
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 954
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method doVerifySign()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 958
    const-string v2, "SignView"

    const-string v3, "doVerifySign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 962
    const/4 v1, 0x0

    .line 965
    .local v1, errCode:I
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 968
    const-string v2, "SignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now getting verification result from engine with threshold "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v4, 0xa

    iget v5, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->verify(II)I

    move-result v1

    .line 973
    if-nez v1, :cond_1

    .line 974
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 975
    const-string v2, "SignView"

    const-string v4, "Identifying signature failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 990
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 992
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 994
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    return-void

    .line 976
    :cond_1
    if-ne v1, v6, :cond_0

    .line 983
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 984
    const-string v2, "SignView"

    const-string v4, "Identifying signature succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 998
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public enableBezierCurve(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUseBezier:Z

    .line 797
    return-void
.end method

.method public enableUsingHistoricalEvent(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 800
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    .line 801
    return-void
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 623
    iget v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v1, :cond_0

    .line 624
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 629
    .local v0, index:I
    :goto_0
    return v0

    .line 626
    .end local v0           #index:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #index:I
    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    return v0
.end method

.method public getSignService()Lcom/android/internal/policy/ISignServiceInterface;
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    monitor-exit v1

    return-object v0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStrokeCount()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    return v0
.end method

.method public getThresholdValue()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    return v0
.end method

.method public getVerifyResult()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    .line 189
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    .line 200
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 201
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    .line 202
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 203
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 204
    iput v3, p0, Lcom/android/internal/widget/SignView;->mTimeOneStrokTap:I

    .line 205
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputOneStrokStamp:I

    .line 207
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 208
    iput v3, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 209
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 211
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 212
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 213
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 214
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 215
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 216
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 217
    iput v3, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 218
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 220
    iput v3, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 222
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 223
    new-array v1, v7, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 232
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    .line 236
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUseBezier:Z

    .line 237
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 240
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    .line 241
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 246
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAttachedToWindow] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 297
    const-string v0, "SignView"

    const-string v1, "SignView is detached from window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    if-eqz v0, :cond_2

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    if-eqz v0, :cond_1

    .line 310
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 312
    .local v5, paint:Landroid/graphics/Paint;
    const v0, -0x141415

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v10, v0

    move-object v6, p1

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 323
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 253
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinishInflate] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 258
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 260
    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 261
    sub-int v0, p5, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 264
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout WritingArea Size] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 272
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSizeChanged] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_1

    .line 279
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    .line 280
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    .line 282
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create bitmap for drawing with mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_1

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 291
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 328
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->checkPreCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const/4 v1, 0x1

    .line 471
    :goto_0
    return v1

    .line 331
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 332
    .local v3, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 334
    .local v4, y:F
    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 335
    const/4 v3, 0x0

    .line 337
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_2

    .line 338
    const/4 v4, 0x0

    .line 340
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_3

    .line 341
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v3, v1

    .line 343
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v4, v1

    .line 347
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 471
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 349
    .restart local v3       #x:F
    .restart local v4       #y:F
    :pswitch_0
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_6

    .line 350
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DOWN ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") TimeGap is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 354
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    if-eqz v1, :cond_7

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->clearScreen()V

    .line 357
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 360
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 364
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/SignView;->setThreshold(Landroid/view/MotionEvent;)V

    .line 367
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 370
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 371
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/SignView;->mBezierEnabled:Z

    .line 372
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/SignView;->mX:F

    .line 373
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/SignView;->mY:F

    .line 374
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/SignView;->mBezierX:F

    .line 375
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/SignView;->mBezierY:F

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->isWriting()Z

    move-result v1

    if-nez v1, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 384
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v1, v5, v6}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V

    .line 385
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v8, v1, v2

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    sub-long/2addr v5, v9

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v1, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v1}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureStart()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 467
    .end local v3           #x:F
    .end local v4           #y:F
    :catch_0
    move-exception v13

    .line 468
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 385
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v3       #x:F
    .restart local v4       #y:F
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 397
    :pswitch_1
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_9

    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MOVE ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v1, :cond_5

    .line 400
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/SignView;->mUseBezier:Z

    if-nez v1, :cond_b

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/internal/widget/SignView;->handleMoveEvent(FFJ)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 404
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v1, :cond_a

    .line 406
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v14, v1, :cond_a

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    new-instance v5, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v9, v15

    const/4 v11, 0x2

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 416
    .end local v14           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v8, v1, v2

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    const/4 v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v1, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v1}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureInputting()V

    goto/16 :goto_1

    .line 419
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 421
    .local v12, arraySizeSaved:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v1, :cond_c

    .line 423
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v14, v1, :cond_c

    .line 424
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/SignView;->handleMoveEventWithBezier(IIJ)V

    .line 423
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 431
    .end local v14           #i:I
    :cond_c
    float-to-int v1, v3

    float-to-int v2, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/SignView;->handleMoveEventWithBezier(IIJ)V

    .line 433
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/SignView;->addToPathForDrawing(I)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    goto :goto_3

    .line 445
    .end local v12           #arraySizeSaved:I
    :pswitch_2
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_d

    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v1, :cond_5

    .line 448
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SignView;->mY:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v8, v1, v2

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    sub-long/2addr v5, v9

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2bc

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetSignature()V
    .locals 8

    .prologue
    .line 1058
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset signature, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1064
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 1066
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1068
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1071
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 1074
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_1

    .line 1075
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 1078
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_2

    .line 1079
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-input saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 1084
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 1085
    .local v1, errCode:I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1087
    .local v3, signNum:I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save signature again["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1089
    .end local v1           #errCode:I
    .end local v2           #i:I
    .end local v3           #signNum:I
    :catch_0
    move-exception v0

    .line 1090
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public restore()V
    .locals 8

    .prologue
    .line 1096
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restore signatures, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1104
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 1107
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 1109
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_1

    .line 1110
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 1115
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 1116
    .local v1, errCode:I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1118
    .local v3, signNum:I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore signatures["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1120
    .end local v1           #errCode:I
    .end local v2           #i:I
    .end local v3           #signNum:I
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1123
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setAddSignStatus()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 677
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resourceID"

    .prologue
    .line 772
    iput p1, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 773
    return-void
.end method

.method public setCompensationEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 750
    return-void
.end method

.method public setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V
    .locals 0
    .parameter "onSignatureListener"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 670
    return-void
.end method

.method public setOutLine(Z)V
    .locals 0
    .parameter "setOutLine"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 716
    return-void
.end method

.method public setPenColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 850
    return-void
.end method

.method public setPenWidth(I)V
    .locals 0
    .parameter "penWidth"

    .prologue
    .line 843
    if-lez p1, :cond_0

    .line 844
    iput p1, p0, Lcom/android/internal/widget/SignView;->mPenWidth:I

    .line 846
    :cond_0
    return-void
.end method

.method public setPersistentShow(Z)V
    .locals 3
    .parameter "isPersistent"

    .prologue
    .line 724
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPersistentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 726
    return-void
.end method

.method public setSettingInputType(I)V
    .locals 0
    .parameter "savedInputType"

    .prologue
    .line 784
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    .line 785
    return-void
.end method

.method public setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V
    .locals 6
    .parameter "ISignService"

    .prologue
    .line 634
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSignService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, inited:Z
    if-eqz p1, :cond_0

    .line 640
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->initEngine()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 648
    if-eqz v1, :cond_3

    .line 649
    :try_start_2
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 648
    if-eqz v1, :cond_2

    .line 649
    :try_start_4
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 648
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    .line 649
    :try_start_5
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_1
    throw v2

    .line 651
    :cond_1
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public setSignViewXY(II)V
    .locals 0
    .parameter "viewX"
    .parameter "viewY"

    .prologue
    .line 706
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 707
    iput p2, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 708
    return-void
.end method

.method public setSignatureVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 719
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignatureVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 721
    return-void
.end method

.method public setStrokeCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 767
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set stroke count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 769
    return-void
.end method

.method public setThresholdValue(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 735
    iput p1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 736
    return-void
.end method

.method public setThresholdValues(IIIIIIIIIIII)V
    .locals 2
    .parameter "hh_low"
    .parameter "hh_medium"
    .parameter "hh_high"
    .parameter "pp_low"
    .parameter "pp_medium"
    .parameter "pp_high"
    .parameter "ph_low"
    .parameter "ph_medium"
    .parameter "ph_high"
    .parameter "hp_low"
    .parameter "hp_medium"
    .parameter "hp_high"

    .prologue
    .line 807
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    .line 808
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 809
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 810
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 811
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 812
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 813
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 814
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x6

    aput p7, v0, v1

    .line 815
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x7

    aput p8, v0, v1

    .line 816
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0x8

    aput p9, v0, v1

    .line 817
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0x9

    aput p10, v0, v1

    .line 818
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0xa

    aput p11, v0, v1

    .line 819
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0xb

    aput p12, v0, v1

    .line 820
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 777
    return-void
.end method

.method public setVerificationLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 788
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    .line 789
    return-void
.end method

.method public setVerifySign()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 684
    return-void
.end method

.method public setViewOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 696
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 697
    iput p2, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 698
    return-void
.end method
