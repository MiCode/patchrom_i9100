.class public Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
.super Landroid/view/View;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "radius"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 743
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 744
    invoke-direct {p0, p3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->init(F)V

    .line 745
    return-void
.end method

.method private init(F)V
    .locals 2
    .parameter "radius"

    .prologue
    .line 753
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 754
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1200(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 757
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 763
    :goto_0
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    .line 764
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method


# virtual methods
.method public isInCircle(FF)Z
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 770
    const-wide v1, 0x3ff4cccccccccccdL

    .line 772
    .local v1, ACTIVE_RATIO:D
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 773
    .local v13, tmpPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 775
    const/4 v14, 0x0

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v7, v14

    .line 776
    .local v7, pivotX:F
    const/4 v14, 0x1

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I
    invoke-static {v15}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1300(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v8, v14

    .line 778
    .local v8, pivotY:F
    sub-float v14, p1, v7

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 779
    .local v3, dx:D
    sub-float v14, p2, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 781
    .local v5, dy:D
    mul-double v14, v3, v3

    mul-double v16, v5, v5

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 783
    .local v9, posLength:D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    float-to-double v14, v14

    div-double v11, v9, v14

    .line 785
    .local v11, ratio:D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v14, v14, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->DBG:Z
    invoke-static {v14}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v14, v14, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isInCircle - x : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " y : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratio : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 787
    :cond_0
    const-wide v14, 0x3ff4cccccccccccdL

    cmpg-double v14, v11, v14

    if-gez v14, :cond_1

    .line 788
    const/4 v14, 0x1

    .line 790
    :goto_0
    return v14

    :cond_1
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 797
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 750
    :cond_0
    return-void
.end method
