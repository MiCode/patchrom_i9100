.class public Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/OriginalSettings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v7, -0x1

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 70
    iput-boolean v6, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 71
    iput-boolean v6, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 87
    sget-object v4, Lcom/android/OriginalSettings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 91
    .local v3, stroke:I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 92
    .local v1, fill:I
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 95
    .local v2, fillSecondary:I
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 101
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 102
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 103
    return-void
.end method

.method private generatePath()V
    .locals 45

    .prologue
    .line 169
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMax:J

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 173
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v44

    .line 181
    .local v44, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v28

    .line 183
    .local v28, height:I
    const/16 v41, 0x0

    .line 184
    .local v41, started:Z
    const/16 v30, 0x0

    .line 185
    .local v30, lastX:F
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v31, v0

    .line 186
    .local v31, lastY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    move/from16 v0, v30

    invoke-interface {v3, v0}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v6

    .line 189
    .local v6, lastTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    const-wide/16 v42, 0x0

    .line 197
    .local v42, totalData:J
    const/4 v10, 0x0

    .line 199
    .local v10, entry:Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStart:J

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v36

    .line 200
    .local v36, start:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEnd:J

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v21

    .line 201
    .local v21, end:I
    move/from16 v29, v36

    .local v29, i:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move/from16 v0, v29

    invoke-virtual {v3, v0, v10}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 204
    iget-wide v0, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v37, v0

    .line 205
    .local v37, startTime:J
    iget-wide v3, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v22, v37, v3

    .line 207
    .local v22, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    move-wide/from16 v0, v37

    invoke-interface {v3, v0, v1}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v39

    .line 208
    .local v39, startX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    move-wide/from16 v0, v22

    invoke-interface {v3, v0, v1}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v24

    .line 211
    .local v24, endX:F
    const/4 v3, 0x0

    cmpg-float v3, v24, v3

    if-gez v3, :cond_2

    .line 201
    :goto_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 214
    :cond_2
    iget-wide v3, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v11

    add-long v42, v42, v3

    .line 216
    move/from16 v40, v31

    .line 217
    .local v40, startY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/OriginalSettings/widget/ChartAxis;

    move-wide/from16 v0, v42

    invoke-interface {v3, v0, v1}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v25

    .line 219
    .local v25, endY:F
    cmp-long v3, v6, v37

    if-eqz v3, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    move/from16 v30, v24

    .line 230
    move/from16 v31, v25

    .line 231
    move-wide/from16 v6, v22

    goto :goto_2

    .line 235
    .end local v22           #endTime:J
    .end local v24           #endX:F
    .end local v25           #endY:F
    .end local v37           #startTime:J
    .end local v39           #startX:F
    .end local v40           #startY:F
    :cond_4
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v3, v6, v3

    if-gez v3, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v3, v4, v5}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v30

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v30

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    const/4 v4, 0x0

    move/from16 v0, v28

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMax:J

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 259
    .local v8, now:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v19

    .line 262
    .local v19, bucketDuration:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    const-wide/32 v4, 0x48190800

    sub-long v4, v6, v4

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 263
    iget-wide v3, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v11

    mul-long v3, v3, v19

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    div-long v32, v3, v11

    .line 266
    .local v32, longWindow:J
    const-wide/16 v26, 0x0

    .line 267
    .local v26, futureTime:J
    :goto_3
    move/from16 v0, v44

    int-to-float v3, v0

    cmpg-float v3, v30, v3

    if-gez v3, :cond_6

    .line 268
    add-long v26, v26, v19

    .line 271
    const-wide/32 v3, 0x240c8400

    sub-long v3, v6, v3

    const-wide/32 v11, 0x240c8400

    rem-long v11, v26, v11

    add-long v14, v3, v11

    .line 272
    .local v14, lastWeekTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    const-wide/32 v3, 0x5265c00

    sub-long v12, v14, v3

    move-wide/from16 v16, v8

    move-object/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 273
    iget-wide v3, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v11

    mul-long v3, v3, v19

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    div-long v34, v3, v11

    .line 276
    .local v34, shortWindow:J
    const-wide/16 v3, 0x7

    mul-long v3, v3, v32

    const-wide/16 v11, 0x3

    mul-long v11, v11, v34

    add-long/2addr v3, v11

    const-wide/16 v11, 0xa

    div-long/2addr v3, v11

    add-long v42, v42, v3

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    add-long v4, v6, v26

    invoke-interface {v3, v4, v5}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v30

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/OriginalSettings/widget/ChartAxis;

    move-wide/from16 v0, v42

    invoke-interface {v3, v0, v1}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v31

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 284
    .end local v14           #lastWeekTime:J
    .end local v34           #shortWindow:J
    :cond_6
    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .parameter "stats"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    .line 137
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 139
    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    .line 304
    .local v7, maxVisible:J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v6

    .line 307
    .local v6, entry:Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v0, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v7, v0, v2

    .line 309
    .end local v6           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v7           #maxVisible:J
    :cond_0
    return-wide v7

    .line 303
    :cond_1
    iget-wide v7, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lcom/android/OriginalSettings/widget/ChartAxis;Lcom/android/OriginalSettings/widget/ChartAxis;)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"

    .prologue
    .line 106
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    .line 107
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/OriginalSettings/widget/ChartAxis;

    .line 108
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mMax:J

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 160
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 317
    iget-boolean v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 321
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v3, v4, v5}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 322
    .local v0, primaryLeftPoint:F
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/OriginalSettings/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v3, v4, v5}, Lcom/android/OriginalSettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 324
    .local v1, primaryRightPoint:F
    iget-boolean v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v3, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 326
    .local v2, save:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 327
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 328
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 331
    .end local v2           #save:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 332
    .restart local v2       #save:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v6, v6, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 333
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 337
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 338
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 339
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 342
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 343
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 344
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 345
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 347
    return-void
.end method

.method public setBounds(JJ)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mStart:J

    .line 143
    iput-wide p3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEnd:J

    .line 144
    return-void
.end method

.method public setChartColor(III)V
    .locals 4
    .parameter "stroke"
    .parameter "fill"
    .parameter "fillSecondary"

    .prologue
    const/4 v3, 0x1

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 133
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 291
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 0
    .parameter "estimateVisible"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 296
    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    .line 152
    iput-wide p3, p0, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 154
    return-void
.end method
