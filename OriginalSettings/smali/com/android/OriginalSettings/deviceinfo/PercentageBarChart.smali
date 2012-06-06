.class public Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    .line 39
    iput v3, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 54
    sget-object v2, Lcom/android/OriginalSettings/R$styleable;->PercentageBarChart:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 56
    const/4 v2, 0x0

    const/high16 v3, -0x100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 57
    .local v1, emptyColor:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    return-void
.end method

.method public static createEntry(FI)Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
    .locals 2
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;

    invoke-direct {v1, p0, v0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;-><init>(FLandroid/graphics/Paint;)V

    return-object v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 65
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v15

    .line 68
    .local v15, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v3

    sub-int v16, v1, v3

    .line 69
    .local v16, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v17

    .line 70
    .local v17, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v3

    sub-int v11, v1, v3

    .line 72
    .local v11, bottom:I
    sub-int v18, v16, v15

    .line 74
    .local v18, width:I
    int-to-float v2, v15

    .line 76
    .local v2, lastX:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;

    .line 79
    .local v12, e:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
    iget v1, v12, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 80
    const/4 v13, 0x0

    .line 85
    .local v13, entryWidth:F
    :goto_1
    add-float v4, v2, v13

    .line 86
    .local v4, nextX:F
    move/from16 v0, v16

    int-to-float v1, v0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    .line 87
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .end local v4           #nextX:F
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    .end local v12           #e:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
    .end local v13           #entryWidth:F
    .end local v14           #i$:Ljava/util/Iterator;
    :goto_2
    return-void

    .line 82
    .restart local v12       #e:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v1, v1

    move/from16 v0, v18

    int-to-float v3, v0

    iget v5, v12, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .restart local v13       #entryWidth:F
    goto :goto_1

    .line 91
    .restart local v4       #nextX:F
    :cond_1
    move/from16 v0, v17

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    move v2, v4

    .line 93
    goto :goto_0

    .line 96
    .end local v4           #nextX:F
    .end local v12           #e:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
    .end local v13           #entryWidth:F
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_2
    move/from16 v0, v17

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    int-to-float v9, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;>;"
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    .line 125
    return-void
.end method
