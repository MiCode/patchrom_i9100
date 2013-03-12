.class Landroid/view/GestureDetector$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field mArrIsValidWithTouchMajor:[Z

.field mArrMaxTouchMajor:[I

.field mArrSumSize:[I

.field mDiffx:F

.field mFalseAngleCnt:I

.field mFalseSizeCnt:I

.field mInitDiffx:F

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field public final mSweepSizeTH:I

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 586
    iput-object p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 588
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 590
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepSizeTH:I

    .line 593
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 594
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 597
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 598
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 599
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 600
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 601
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 602
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 603
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 604
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 605
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 606
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 607
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    .line 608
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    .line 609
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    .line 611
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 612
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    return-void
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9
    .parameter "data"

    .prologue
    const/16 v8, 0x2d

    const/high16 v7, 0x43c8

    const/high16 v4, 0x4248

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 689
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 690
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v2, :cond_1

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v3, 0x42c8

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-ne v2, v6, :cond_1

    :cond_0
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x4348

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    .line 691
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 692
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 693
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 694
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 698
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v6, :cond_3

    .line 699
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x420c

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 700
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 701
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 702
    :cond_2
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 707
    :cond_3
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v6, :cond_5

    .line 708
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 709
    :cond_4
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 711
    :cond_5
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 712
    :cond_6
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v6, :cond_a

    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, mMaxSizeTouch:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v5

    if-ge v0, v2, :cond_8

    .line 717
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v2, v2, v0

    aget v2, v2, v5

    iget-object v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-le v2, v3, :cond_7

    .line 718
    move v1, v0

    .line 715
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_8
    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_b

    .line 722
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v8, :cond_9

    .line 723
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 730
    :cond_9
    :goto_1
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x4316

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 731
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 733
    .end local v0           #i:I
    .end local v1           #mMaxSizeTouch:I
    :cond_a
    return-void

    .line 727
    .restart local v0       #i:I
    .restart local v1       #mMaxSizeTouch:I
    :cond_b
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v8, :cond_9

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 728
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    goto :goto_1
.end method

.method public GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I
    .locals 11
    .parameter "data"

    .prologue
    .line 636
    iget-object v9, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v9, v9, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 637
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 638
    .local v0, disp:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 639
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 640
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 641
    .local v1, height:I
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 643
    .local v6, width:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, tempHeight:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, tempWidth:Ljava/lang/String;
    const/4 v3, 0x0

    .line 649
    .local v3, result:I
    iget v9, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v8, v9

    .line 651
    .local v8, x:I
    iget-boolean v9, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v9, :cond_2

    .line 653
    div-int/lit8 v9, v6, 0x3

    if-ge v8, v9, :cond_0

    .line 655
    const/4 v3, 0x0

    .line 685
    :goto_0
    return v3

    .line 657
    :cond_0
    mul-int/lit8 v9, v6, 0x2

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_1

    .line 659
    const/4 v3, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 668
    :cond_2
    div-int/lit8 v9, v1, 0x4

    if-ge v8, v9, :cond_3

    .line 670
    const/4 v3, 0x0

    goto :goto_0

    .line 672
    :cond_3
    mul-int/lit8 v9, v1, 0x2

    div-int/lit8 v9, v9, 0x4

    if-ge v8, v9, :cond_4

    .line 674
    const/4 v3, 0x1

    goto :goto_0

    .line 676
    :cond_4
    mul-int/lit8 v9, v1, 0x3

    div-int/lit8 v9, v9, 0x4

    if-ge v8, v9, :cond_5

    .line 678
    const/4 v3, 0x2

    goto :goto_0

    .line 682
    :cond_5
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public Initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 798
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 799
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 800
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 801
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 802
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 803
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 804
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 805
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 806
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 807
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 808
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 809
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 810
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 811
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 813
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v2, v1, v0

    .line 814
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v2, v1, v0

    .line 815
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aput v2, v1, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->UpdateData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 791
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 792
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 795
    :cond_0
    return-void
.end method

.method public RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9
    .parameter "data"

    .prologue
    const/high16 v4, 0x4396

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 736
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    .line 737
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 738
    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 741
    :cond_0
    const/4 v1, 0x0

    .line 742
    .local v1, validMajorCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 744
    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    .line 746
    add-int/lit8 v1, v1, 0x1

    .line 742
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_2
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v5, :cond_6

    .line 750
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    iget v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 751
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_5

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    if-lt v1, v6, :cond_5

    .line 752
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 753
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 755
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 776
    :goto_1
    return-void

    .line 756
    :cond_3
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_4

    .line 757
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 759
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1

    .line 762
    :cond_4
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 1 - mSweepRightReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSweepLeftReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFalseAngleCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 768
    :cond_5
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 2 - max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVarXBig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " validMajorCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 774
    :cond_6
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] mSweepDown False, mLRSDCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTouchCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFalseSizeCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I

    move-result v0

    .line 623
    .local v0, range:I
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    .line 625
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 627
    :cond_0
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 629
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 630
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 632
    :cond_1
    return-void
.end method

.method public UpdateData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 779
    iget-boolean v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v0, :cond_0

    .line 780
    const/16 v0, 0x15e

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 785
    :goto_0
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 786
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 787
    return-void

    .line 782
    :cond_0
    const/16 v0, 0x258

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    goto :goto_0
.end method

.method public getSweepDown()Z
    .locals 3

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 616
    const-string v0, "GestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PalmSweepRecognizer getSweepDown return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method
