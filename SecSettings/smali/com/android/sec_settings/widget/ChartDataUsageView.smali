.class public Lcom/android/sec_settings/widget/ChartDataUsageView;
.super Lcom/android/sec_settings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/sec_settings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/sec_settings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

.field private mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sec_settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 323
    new-instance v0, Lcom/android/sec_settings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/widget/ChartDataUsageView$2;-><init>(Lcom/android/sec_settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

    .line 351
    new-instance v0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/widget/ChartDataUsageView$3;-><init>(Lcom/android/sec_settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

    .line 91
    new-instance v0, Lcom/android/sec_settings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/sec_settings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/sec_settings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/sec_settings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/sec_settings/widget/InvertedChartAxis;-><init>(Lcom/android/sec_settings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->init(Lcom/android/sec_settings/widget/ChartAxis;Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 93
    new-instance v0, Lcom/android/sec_settings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/widget/ChartDataUsageView$1;-><init>(Lcom/android/sec_settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/widget/ChartDataUsageView;Lcom/android/sec_settings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/sec_settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/widget/ChartDataUsageView;Lcom/android/sec_settings/widget/ChartSweepView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/sec_settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/widget/ChartDataUsageView;Lcom/android/sec_settings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/sec_settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/sec_settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(J)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/sec_settings/widget/ChartSweepView;)V
    .locals 2
    .parameter "sweep"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 349
    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .parameter "i"

    .prologue
    const-wide/16 v2, 0x1

    .line 704
    sub-long/2addr p0, v2

    .line 707
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 708
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 709
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 710
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 711
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 712
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 714
    add-long/2addr p0, v2

    .line 716
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/sec_settings/widget/ChartSweepView;Z)V
    .locals 4
    .parameter "sweep"
    .parameter "force"

    .prologue
    const/16 v2, 0x64

    .line 341
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 345
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "builder"
    .parameter "key"
    .parameter "text"
    .parameter "bootstrap"

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 692
    .local v1, start:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 693
    .local v0, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 694
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 695
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 696
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 698
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 699
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .prologue
    .line 305
    iget-object v5, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v3

    .line 308
    .local v3, maxEstimate:J
    const-wide v1, 0x7fffffffffffffffL

    .line 309
    .local v1, interestLine:J
    iget-object v5, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/sec_settings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    iget-object v5, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    .line 315
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 316
    const-wide v1, 0x7fffffffffffffffL

    .line 319
    :cond_1
    const-wide/16 v5, 0x7

    mul-long/2addr v5, v1

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    .line 320
    .local v0, estimateVisible:Z
    :goto_1
    iget-object v5, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5, v0}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 321
    return-void

    .line 311
    .end local v0           #estimateVisible:Z
    :cond_2
    iget-object v5, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/sec_settings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    iget-object v5, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    goto :goto_0

    .line 319
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 468
    iget-object v4, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 469
    .local v0, left:J
    iget-object v4, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 472
    .local v2, right:J
    iget-object v4, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 474
    iget-object v4, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/sec_settings/widget/ChartSweepView;)V
    .locals 23
    .parameter "activeSweep"

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mVertMax:J

    .line 247
    .local v7, max:J
    const-wide/16 v17, 0x0

    .line 248
    .local v17, newMax:J
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/android/sec_settings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v5

    .line 250
    .local v5, adjustAxis:I
    if-lez v5, :cond_5

    .line 252
    const-wide/16 v19, 0xb

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    .line 262
    .end local v5           #adjustAxis:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 263
    .local v13, maxSweep:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 264
    .local v11, maxSeries:J
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    const-wide/16 v21, 0xc

    mul-long v19, v19, v21

    const-wide/16 v21, 0xa

    div-long v15, v19, v21

    .line 265
    .local v15, maxVisible:J
    const-wide/32 v19, 0x3200000

    move-wide v0, v15

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 266
    .local v9, maxDefault:J
    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 269
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_4

    .line 270
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/sec_settings/widget/ChartDataUsageView;->mVertMax:J

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartView;->mVert:Lcom/android/sec_settings/widget/ChartAxis;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 273
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 276
    if-eqz v6, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 281
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mGrid:Lcom/android/sec_settings/widget/ChartGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/sec_settings/widget/ChartGridView;->invalidate()V

    .line 284
    if-eqz p1, :cond_2

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/sec_settings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 291
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 294
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 298
    .end local v6           #changed:Z
    :cond_4
    return-void

    .line 253
    .end local v9           #maxDefault:J
    .end local v11           #maxSeries:J
    .end local v13           #maxSweep:J
    .end local v15           #maxVisible:J
    .restart local v5       #adjustAxis:I
    :cond_5
    if-gez v5, :cond_6

    .line 255
    const-wide/16 v19, 0x9

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    goto/16 :goto_0

    .line 257
    :cond_6
    move-wide/from16 v17, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter "stats"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 184
    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 189
    invoke-direct {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 190
    invoke-direct {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 191
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->requestLayout()V

    .line 192
    return-void

    .line 184
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 8
    .parameter "policy"

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 198
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 238
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/sec_settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 222
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/sec_settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 226
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v6}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/sec_settings/widget/ChartSweepView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 235
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->requestLayout()V

    .line 237
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 231
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v6}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/sec_settings/widget/ChartSweepView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter "stats"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 175
    iput-object p1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 177
    invoke-direct {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 178
    invoke-direct {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 179
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->requestLayout()V

    .line 180
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-super {p0}, Lcom/android/sec_settings/widget/ChartView;->onFinishInflate()V

    .line 110
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mGrid:Lcom/android/sec_settings/widget/ChartGridView;

    .line 111
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    .line 112
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    .line 113
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 115
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    .line 116
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    .line 117
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    .line 118
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    .line 121
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/sec_settings/widget/ChartSweepView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/sec_settings/widget/ChartSweepView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 123
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/sec_settings/widget/ChartSweepView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/sec_settings/widget/ChartSweepView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 127
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setNeighbors([Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setNeighbors([Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 129
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setNeighbors([Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 130
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->setNeighbors([Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 132
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 138
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 141
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setClickable(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mGrid:Lcom/android/sec_settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mHoriz:Lcom/android/sec_settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartView;->mVert:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartGridView;->init(Lcom/android/sec_settings/widget/ChartAxis;Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mHoriz:Lcom/android/sec_settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartView;->mVert:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->init(Lcom/android/sec_settings/widget/ChartAxis;Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 149
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mHoriz:Lcom/android/sec_settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/sec_settings/widget/ChartView;->mVert:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->init(Lcom/android/sec_settings/widget/ChartAxis;Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 150
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mHoriz:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->init(Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 151
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mHoriz:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->init(Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 152
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mVert:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->init(Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/sec_settings/widget/ChartView;->mVert:Lcom/android/sec_settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/ChartSweepView;->init(Lcom/android/sec_settings/widget/ChartAxis;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 156
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    :goto_0
    return v0

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 384
    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 388
    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 171
    return-void
.end method

.method public setMaximumSetableValue(JJ)V
    .locals 1
    .parameter "warning_value"
    .parameter "limit_value"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, p1, p2}, Lcom/android/sec_settings/widget/ChartSweepView;->setMaximumSetableValue(J)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;

    invoke-virtual {v0, p3, p4}, Lcom/android/sec_settings/widget/ChartSweepView;->setMaximumSetableValue(J)V

    .line 166
    :cond_1
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 24
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartView;->mHoriz:Lcom/android/sec_settings/widget/ChartAxis;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v5

    .line 427
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mGrid:Lcom/android/sec_settings/widget/ChartGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartGridView;->setBounds(JJ)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 432
    .local v10, historyStart:J
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 434
    .local v8, historyEnd:J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    move-wide/from16 v18, p1

    .line 436
    .local v18, validStart:J
    :goto_0
    const-wide/high16 v20, -0x8000

    cmp-long v20, v8, v20

    if-nez v20, :cond_2

    move-wide/from16 v16, p3

    .line 444
    .local v16, validEnd:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/sec_settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 449
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 450
    .local v6, halfRange:J
    move-wide/from16 v12, v16

    .line 451
    .local v12, sweepMax:J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 453
    .local v14, sweepMin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/sec_settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/android/sec_settings/widget/ChartSweepView;->setValue(J)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->requestLayout()V

    .line 457
    if-eqz v5, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/sec_settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 462
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 465
    return-void

    .line 434
    .end local v6           #halfRange:J
    .end local v12           #sweepMax:J
    .end local v14           #sweepMin:J
    .end local v16           #validEnd:J
    .end local v18           #validStart:J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 436
    .restart local v18       #validStart:J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method
