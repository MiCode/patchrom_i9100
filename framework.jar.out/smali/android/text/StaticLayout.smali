.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 151
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1100
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1130
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 154
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 155
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 157
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 92
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 82
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 106
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1100
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1130
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 121
    if-eqz p11, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 124
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 125
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 126
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 127
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 129
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 135
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 136
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 138
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 140
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 142
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 148
    return-void

    .line 106
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 132
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 61
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 63
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 863
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-nez p10, :cond_0

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 970
    :goto_0
    return-void

    .line 870
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    sget-object v17, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 873
    .local v6, ellipsisWidth:F
    const/4 v5, 0x0

    .line 874
    .local v5, ellipsisStart:I
    const/4 v4, 0x0

    .line 875
    .local v4, ellipsisCount:I
    sub-int v10, p2, p1

    .line 878
    .local v10, len:I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 879
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 880
    const/4 v15, 0x0

    .line 883
    .local v15, sum:F
    move v7, v10

    .local v7, i:I
    :goto_2
    if-ltz v7, :cond_1

    .line 885
    if-nez v7, :cond_4

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 898
    :cond_1
    const/4 v5, 0x0

    .line 899
    move v4, v7

    .line 968
    .end local v7           #i:I
    .end local v15           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    aput v5, v17, v18

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v4, v17, v18

    goto :goto_0

    .line 870
    .end local v4           #ellipsisCount:I
    .end local v5           #ellipsisStart:I
    .end local v6           #ellipsisWidth:F
    .end local v10           #len:I
    :cond_3
    sget-object v17, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 889
    .restart local v4       #ellipsisCount:I
    .restart local v5       #ellipsisStart:I
    .restart local v6       #ellipsisWidth:F
    .restart local v7       #i:I
    .restart local v10       #len:I
    .restart local v15       #sum:F
    :cond_4
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 891
    .local v16, w:F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-gtz v17, :cond_1

    .line 895
    add-float v15, v15, v16

    .line 883
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 901
    .end local v7           #i:I
    .end local v15           #sum:F
    .end local v16           #w:F
    :cond_5
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 902
    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 905
    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 907
    :cond_7
    const/4 v15, 0x0

    .line 910
    .restart local v15       #sum:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 911
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 913
    .restart local v16       #w:F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_9

    .line 920
    .end local v16           #w:F
    :cond_8
    move v5, v7

    .line 921
    sub-int v4, v10, v7

    .line 922
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 923
    add-int/lit8 v5, v10, -0x1

    .line 924
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 917
    .restart local v16       #w:F
    :cond_9
    add-float v15, v15, v16

    .line 910
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 928
    .end local v7           #i:I
    .end local v15           #sum:F
    .end local v16           #w:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 929
    const/4 v11, 0x0

    .local v11, lsum:F
    const/4 v14, 0x0

    .line 930
    .local v14, rsum:F
    const/4 v9, 0x0

    .local v9, left:I
    move v13, v10

    .line 932
    .local v13, right:I
    sub-float v17, p5, v6

    const/high16 v18, 0x4000

    div-float v12, v17, v18

    .line 933
    .local v12, ravail:F
    move v13, v10

    :goto_5
    if-ltz v13, :cond_b

    .line 935
    if-nez v13, :cond_d

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_d

    .line 948
    :cond_b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 949
    .local v8, lavail:F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_c

    .line 950
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 952
    .restart local v16       #w:F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .line 959
    .end local v16           #w:F
    :cond_c
    move v5, v9

    .line 960
    sub-int v4, v13, v9

    .line 961
    goto/16 :goto_3

    .line 939
    .end local v8           #lavail:F
    :cond_d
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 941
    .restart local v16       #w:F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-gtz v17, :cond_b

    .line 945
    add-float v14, v14, v16

    .line 933
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 956
    .restart local v8       #lavail:F
    :cond_e
    add-float v11, v11, v16

    .line 949
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 962
    .end local v8           #lavail:F
    .end local v9           #left:I
    .end local v11           #lsum:F
    .end local v12           #ravail:F
    .end local v13           #right:I
    .end local v14           #rsum:F
    .end local v16           #w:F
    :cond_f
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 963
    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 4
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 564
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    move p1, v0

    .line 726
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 567
    .restart local p1
    :cond_1
    const/16 v2, 0x3000

    if-ne p0, v2, :cond_2

    move p1, v0

    .line 568
    goto :goto_0

    .line 570
    :cond_2
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_4

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_4

    .line 571
    if-nez p1, :cond_3

    .line 572
    sparse-switch p0, :sswitch_data_0

    :cond_3
    move p1, v0

    .line 592
    goto :goto_0

    :sswitch_0
    move p1, v1

    .line 589
    goto :goto_0

    .line 594
    :cond_4
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_6

    .line 595
    if-nez p1, :cond_5

    .line 596
    sparse-switch p0, :sswitch_data_1

    :cond_5
    move p1, v0

    .line 617
    goto :goto_0

    :sswitch_1
    move p1, v1

    .line 614
    goto :goto_0

    .line 619
    :cond_6
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_7

    const/16 v2, 0x4db5

    if-gt p0, v2, :cond_7

    move p1, v0

    .line 620
    goto :goto_0

    .line 622
    :cond_7
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_8

    const v2, 0x9fbb

    if-gt p0, v2, :cond_8

    move p1, v0

    .line 623
    goto :goto_0

    .line 625
    :cond_8
    const v2, 0xf900

    if-lt p0, v2, :cond_9

    const v2, 0xfad9

    if-gt p0, v2, :cond_9

    move p1, v0

    .line 626
    goto :goto_0

    .line 628
    :cond_9
    const v2, 0xa000

    if-lt p0, v2, :cond_a

    const v2, 0xa48f

    if-gt p0, v2, :cond_a

    move p1, v0

    .line 629
    goto :goto_0

    .line 631
    :cond_a
    const v2, 0xa490

    if-lt p0, v2, :cond_b

    const v2, 0xa4cf

    if-gt p0, v2, :cond_b

    move p1, v0

    .line 632
    goto :goto_0

    .line 634
    :cond_b
    const v2, 0xfe62

    if-lt p0, v2, :cond_c

    const v2, 0xfe66

    if-gt p0, v2, :cond_c

    move p1, v0

    .line 635
    goto :goto_0

    .line 637
    :cond_c
    const v2, 0xff10

    if-lt p0, v2, :cond_d

    const v2, 0xff19

    if-gt p0, v2, :cond_d

    move p1, v0

    .line 638
    goto :goto_0

    .line 641
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 643
    const v2, 0xe63e

    if-lt p0, v2, :cond_e

    const v2, 0xe757

    if-gt p0, v2, :cond_e

    move p1, v0

    .line 644
    goto/16 :goto_0

    .line 647
    :cond_e
    const/16 v2, 0x3001

    if-lt p0, v2, :cond_10

    const/16 v2, 0x301f

    if-gt p0, v2, :cond_10

    .line 648
    if-nez p1, :cond_f

    .line 649
    packed-switch p0, :pswitch_data_0

    .line 662
    :cond_f
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    move p1, v0

    .line 671
    goto/16 :goto_0

    :pswitch_2
    move p1, v1

    .line 659
    goto/16 :goto_0

    :pswitch_3
    move p1, v1

    .line 669
    goto/16 :goto_0

    .line 673
    :cond_10
    const v2, 0xff01

    if-lt p0, v2, :cond_12

    const v2, 0xff9f

    if-gt p0, v2, :cond_12

    .line 674
    if-nez p1, :cond_11

    .line 675
    sparse-switch p0, :sswitch_data_2

    .line 695
    :cond_11
    sparse-switch p0, :sswitch_data_3

    move p1, v0

    .line 702
    goto/16 :goto_0

    :sswitch_2
    move p1, v1

    .line 692
    goto/16 :goto_0

    :sswitch_3
    move p1, v1

    .line 700
    goto/16 :goto_0

    .line 704
    :cond_12
    const/16 v2, 0x21

    if-lt p0, v2, :cond_14

    const/16 v2, 0x3f

    if-gt p0, v2, :cond_14

    .line 705
    if-nez p1, :cond_13

    .line 706
    sparse-switch p0, :sswitch_data_4

    :cond_13
    move p1, v0

    .line 717
    goto/16 :goto_0

    :sswitch_4
    move p1, v1

    .line 714
    goto/16 :goto_0

    .line 719
    :cond_14
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2019

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2032

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2033

    if-eq p0, v0, :cond_0

    .line 723
    const/16 v0, 0x309b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-eq p0, v0, :cond_0

    move p1, v1

    .line 726
    goto/16 :goto_0

    .line 572
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 596
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    .line 649
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 662
    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 675
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    .line 695
    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    .line 706
    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 741
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 742
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 743
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 745
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 746
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 747
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 748
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 750
    move-object/from16 v24, v19

    .line 752
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 753
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 758
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 759
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 760
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 761
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 762
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 764
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 765
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 766
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 764
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 770
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 774
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 775
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 776
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 777
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 780
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 781
    if-eqz p21, :cond_4

    .line 782
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 785
    :cond_4
    if-eqz p20, :cond_5

    .line 786
    move/from16 p4, p6

    .line 789
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 790
    if-eqz p21, :cond_6

    .line 791
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 794
    :cond_6
    if-eqz p20, :cond_7

    .line 795
    move/from16 p5, p7

    .line 801
    :cond_7
    if-eqz p15, :cond_10

    .line 802
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 803
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    .line 804
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 812
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 813
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 814
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 816
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 817
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 818
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 820
    if-eqz p14, :cond_8

    .line 821
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 823
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 824
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 828
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 835
    :goto_3
    if-eqz p25, :cond_e

    .line 838
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 839
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 840
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 842
    .local v12, forceEllipsis:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 847
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 848
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 854
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 855
    return p8

    .line 806
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 809
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_10
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 831
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 838
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 839
    .restart local v18       #firstLine:Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 840
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 842
    .restart local v12       #forceEllipsis:Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1081
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 133
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 168
    const/4 v15, 0x0

    .line 169
    .local v15, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v22, 0x1

    .line 171
    .local v22, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    .line 172
    .local v20, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v19, 0x0

    .line 174
    .local v19, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v114, v0

    .line 176
    .local v114, measured:Landroid/text/MeasuredText;
    const/16 v127, 0x0

    .line 177
    .local v127, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v127, p1

    .line 178
    check-cast v127, Landroid/text/Spanned;

    .line 180
    :cond_1
    const/16 v82, 0x1

    .line 183
    .local v82, DEFAULT_DIR:I
    move/from16 v31, p2

    .local v31, paraStart:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, p3

    if-gt v0, v1, :cond_35

    .line 184
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v40

    .line 185
    .local v40, paraEnd:I
    if-gez v40, :cond_4

    .line 186
    move/from16 v40, p3

    .line 190
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v101, v5, 0x1

    .line 191
    .local v101, firstWidthLineLimit:I
    move/from16 v100, p5

    .line 192
    .local v100, firstWidth:I
    move/from16 v122, p5

    .line 194
    .local v122, restWidth:I
    const/16 v18, 0x0

    .line 196
    .local v18, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v127, :cond_9

    .line 197
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v127

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v123

    check-cast v123, [Landroid/text/style/LeadingMarginSpan;

    .line 199
    .local v123, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v109, 0x0

    .local v109, i:I
    :goto_3
    move-object/from16 v0, v123

    array-length v5, v0

    move/from16 v0, v109

    if-ge v0, v5, :cond_5

    .line 200
    aget-object v111, v123, v109

    .line 201
    .local v111, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v123, v109

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v100, v100, v5

    .line 202
    aget-object v5, v123, v109

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v122, v122, v5

    .line 208
    move-object/from16 v0, v111

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v112, v111

    .line 209
    check-cast v112, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 210
    .local v112, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v127

    move-object/from16 v1, v112

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v113

    .line 211
    .local v113, lmsFirstLine:I
    invoke-interface/range {v112 .. v112}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v101, v113, v5

    .line 199
    .end local v112           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v113           #lmsFirstLine:I
    :cond_2
    add-int/lit8 v109, v109, 0x1

    goto :goto_3

    .line 169
    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #chooseHtv:[I
    .end local v20           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v22           #needMultiply:Z
    .end local v31           #paraStart:I
    .end local v40           #paraEnd:I
    .end local v82           #DEFAULT_DIR:I
    .end local v100           #firstWidth:I
    .end local v101           #firstWidthLineLimit:I
    .end local v109           #i:I
    .end local v111           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v114           #measured:Landroid/text/MeasuredText;
    .end local v122           #restWidth:I
    .end local v123           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v127           #spanned:Landroid/text/Spanned;
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 188
    .restart local v19       #chooseHtv:[I
    .restart local v20       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v22       #needMultiply:Z
    .restart local v31       #paraStart:I
    .restart local v40       #paraEnd:I
    .restart local v82       #DEFAULT_DIR:I
    .restart local v114       #measured:Landroid/text/MeasuredText;
    .restart local v127       #spanned:Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v40, v40, 0x1

    goto :goto_2

    .line 215
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v100       #firstWidth:I
    .restart local v101       #firstWidthLineLimit:I
    .restart local v109       #i:I
    .restart local v122       #restWidth:I
    .restart local v123       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v127

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v18, [Landroid/text/style/LineHeightSpan;

    .line 217
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v18

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 218
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    array-length v5, v0

    move-object/from16 v0, v18

    array-length v7, v0

    if-ge v5, v7, :cond_7

    .line 220
    :cond_6
    move-object/from16 v0, v18

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 224
    :cond_7
    const/16 v109, 0x0

    :goto_4
    move-object/from16 v0, v18

    array-length v5, v0

    move/from16 v0, v109

    if-ge v0, v5, :cond_9

    .line 225
    aget-object v5, v18, v109

    move-object/from16 v0, v127

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v115

    .line 227
    .local v115, o:I
    move/from16 v0, v115

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v19, v109

    .line 224
    :goto_5
    add-int/lit8 v109, v109, 0x1

    goto :goto_4

    .line 235
    :cond_8
    aput v15, v19, v109

    goto :goto_5

    .line 241
    .end local v109           #i:I
    .end local v115           #o:I
    .end local v123           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v114

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v40

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 242
    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v29, v0

    .line 243
    .local v29, chs:[C
    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v30, v0

    .line 244
    .local v30, widths:[F
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 246
    sub-int v5, v40, v31

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v30

    array-length v7, v0

    if-le v5, v7, :cond_a

    .line 247
    sub-int v5, v40, v31

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [F

    move-object/from16 v30, v0

    .line 248
    move-object/from16 v0, v30

    move-object/from16 v1, v114

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    .line 251
    :cond_a
    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v23, v0

    .line 252
    .local v23, chdirs:[B
    move-object/from16 v0, v114

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v24, v0

    .line 253
    .local v24, dir:I
    move-object/from16 v0, v114

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v25, v0

    .line 255
    .local v25, easy:Z
    move/from16 v132, v100

    .line 257
    .local v132, width:I
    const/16 v64, 0x0

    .line 259
    .local v64, w:F
    move/from16 v39, v31

    .line 263
    .local v39, here:I
    move/from16 v116, v31

    .line 264
    .local v116, ok:I
    move/from16 v121, v64

    .line 265
    .local v121, okWidth:F
    const/16 v117, 0x0

    .local v117, okAscent:I
    const/16 v119, 0x0

    .local v119, okDescent:I
    const/16 v120, 0x0

    .local v120, okTop:I
    const/16 v118, 0x0

    .line 269
    .local v118, okBottom:I
    move/from16 v102, v31

    .line 270
    .local v102, fit:I
    move/from16 v103, v64

    .line 271
    .local v103, fitWidth:F
    const/16 v41, 0x0

    .local v41, fitAscent:I
    const/16 v42, 0x0

    .local v42, fitDescent:I
    const/16 v43, 0x0

    .local v43, fitTop:I
    const/16 v44, 0x0

    .line 273
    .local v44, fitBottom:I
    const/16 v21, 0x0

    .line 274
    .local v21, hasTabOrEmoji:Z
    const/16 v108, 0x0

    .line 275
    .local v108, hasTab:Z
    const/16 v129, 0x0

    .line 277
    .local v129, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v126, v31

    .local v126, spanStart:I
    :goto_6
    move/from16 v0, v126

    move/from16 v1, v40

    if-ge v0, v1, :cond_32

    .line 279
    if-nez v127, :cond_1c

    .line 280
    move/from16 v124, v40

    .line 281
    .local v124, spanEnd:I
    sub-int v125, v124, v126

    .line 282
    .local v125, spanLen:I
    move-object/from16 v0, v114

    move-object/from16 v1, p4

    move/from16 v2, v125

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 293
    :goto_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v107, v0

    .line 294
    .local v107, fmTop:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v105, v0

    .line 295
    .local v105, fmBottom:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v104, v0

    .line 296
    .local v104, fmAscent:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v106, v0

    .line 297
    .local v106, fmDescent:I
    const/16 v95, 0x0

    .line 299
    .local v95, bZerowithspace:Z
    move/from16 v110, v126

    .local v110, j:I
    :goto_8
    move/from16 v0, v110

    move/from16 v1, v124

    if-ge v0, v1, :cond_1b

    .line 300
    sub-int v5, v110, v31

    aget-char v97, v29, v5

    .line 302
    .local v97, c:C
    const/16 v5, 0xa

    move/from16 v0, v97

    if-ne v0, v5, :cond_1d

    .line 378
    :goto_9
    move/from16 v0, v132

    int-to-float v5, v0

    cmpg-float v5, v64, v5

    if-gtz v5, :cond_2a

    .line 379
    move/from16 v103, v64

    .line 380
    add-int/lit8 v102, v110, 0x1

    .line 382
    move/from16 v0, v107

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 383
    move/from16 v43, v107

    .line 384
    :cond_b
    move/from16 v0, v104

    move/from16 v1, v41

    if-ge v0, v1, :cond_c

    .line 385
    move/from16 v41, v104

    .line 386
    :cond_c
    move/from16 v0, v106

    move/from16 v1, v42

    if-le v0, v1, :cond_d

    .line 387
    move/from16 v42, v106

    .line 388
    :cond_d
    move/from16 v0, v105

    move/from16 v1, v44

    if-le v0, v1, :cond_e

    .line 389
    move/from16 v44, v105

    .line 406
    :cond_e
    const/16 v5, 0x200b

    move/from16 v0, v97

    if-ne v0, v5, :cond_f

    .line 407
    const/16 v95, 0x1

    .line 410
    :cond_f
    const/16 v5, 0x200b

    move/from16 v0, v97

    if-eq v0, v5, :cond_16

    if-nez v95, :cond_1a

    const/16 v5, 0x20

    move/from16 v0, v97

    if-eq v0, v5, :cond_16

    const/16 v5, 0x9

    move/from16 v0, v97

    if-eq v0, v5, :cond_16

    const/16 v5, 0x2e

    move/from16 v0, v97

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2c

    move/from16 v0, v97

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3a

    move/from16 v0, v97

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3b

    move/from16 v0, v97

    if-ne v0, v5, :cond_12

    :cond_10
    add-int/lit8 v5, v110, -0x1

    move/from16 v0, v39

    if-lt v5, v0, :cond_11

    add-int/lit8 v5, v110, -0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_16

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_12
    const/16 v5, 0x2f

    move/from16 v0, v97

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2d

    move/from16 v0, v97

    if-ne v0, v5, :cond_14

    :cond_13
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_16

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_14
    if-nez v95, :cond_15

    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_15

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_15

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    if-nez v95, :cond_1a

    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_1a

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_1a

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 423
    :cond_16
    move/from16 v121, v64

    .line 424
    add-int/lit8 v116, v110, 0x1

    .line 426
    move/from16 v0, v43

    move/from16 v1, v120

    if-ge v0, v1, :cond_17

    .line 427
    move/from16 v120, v43

    .line 428
    :cond_17
    move/from16 v0, v41

    move/from16 v1, v117

    if-ge v0, v1, :cond_18

    .line 429
    move/from16 v117, v41

    .line 430
    :cond_18
    move/from16 v0, v42

    move/from16 v1, v119

    if-le v0, v1, :cond_19

    .line 431
    move/from16 v119, v42

    .line 432
    :cond_19
    move/from16 v0, v44

    move/from16 v1, v118

    if-le v0, v1, :cond_1a

    .line 433
    move/from16 v118, v44

    .line 498
    :cond_1a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v7, :cond_31

    .line 277
    .end local v97           #c:C
    :cond_1b
    :goto_a
    move/from16 v126, v124

    goto/16 :goto_6

    .line 284
    .end local v95           #bZerowithspace:Z
    .end local v104           #fmAscent:I
    .end local v105           #fmBottom:I
    .end local v106           #fmDescent:I
    .end local v107           #fmTop:I
    .end local v110           #j:I
    .end local v124           #spanEnd:I
    .end local v125           #spanLen:I
    :cond_1c
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v40

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v124

    .line 286
    .restart local v124       #spanEnd:I
    sub-int v125, v124, v126

    .line 287
    .restart local v125       #spanLen:I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v124

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 289
    .local v128, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move-object/from16 v1, v127

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    .end local v128           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 290
    .restart local v128       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v114

    move-object/from16 v1, p4

    move-object/from16 v2, v128

    move/from16 v3, v125

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 304
    .end local v128           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v95       #bZerowithspace:Z
    .restart local v97       #c:C
    .restart local v104       #fmAscent:I
    .restart local v105       #fmBottom:I
    .restart local v106       #fmDescent:I
    .restart local v107       #fmTop:I
    .restart local v110       #j:I
    :cond_1d
    const/16 v5, 0x9

    move/from16 v0, v97

    if-ne v0, v5, :cond_20

    .line 305
    if-nez v108, :cond_1e

    .line 306
    const/16 v108, 0x1

    .line 307
    const/16 v21, 0x1

    .line 308
    if-eqz v127, :cond_1e

    .line 310
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v127

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/TabStopSpan;

    .line 312
    .local v128, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v128

    array-length v5, v0

    if-lez v5, :cond_1e

    .line 313
    new-instance v129, Landroid/text/Layout$TabStops;

    .end local v129           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v129

    move-object/from16 v1, v128

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 317
    .end local v128           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v129       #tabStops:Landroid/text/Layout$TabStops;
    :cond_1e
    if-eqz v129, :cond_1f

    .line 318
    move-object/from16 v0, v129

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v64

    goto/16 :goto_9

    .line 320
    :cond_1f
    const/16 v5, 0x14

    move/from16 v0, v64

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v64

    goto/16 :goto_9

    .line 322
    :cond_20
    const v5, 0xd800

    move/from16 v0, v97

    if-lt v0, v5, :cond_26

    const v5, 0xdfff

    move/from16 v0, v97

    if-gt v0, v5, :cond_26

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_26

    .line 324
    sub-int v5, v110, v31

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v98

    .line 326
    .local v98, emoji:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const v5, 0xdbb8

    move/from16 v0, v97

    if-lt v0, v5, :cond_21

    const v5, 0xdbbb

    move/from16 v0, v97

    if-gt v0, v5, :cond_21

    .line 329
    const/16 v99, 0x0

    .line 330
    .local v99, emojiWidth:F
    const/4 v5, 0x1

    new-array v6, v5, [C

    .line 331
    .local v6, tmpChar:[C
    const/4 v5, 0x0

    const v7, 0xe757

    aput-char v7, v6, v5

    .line 332
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v5 .. v13}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v99

    .line 333
    add-float v64, v64, v99

    .line 334
    sub-int v5, v110, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    aput v99, v30, v5

    .line 335
    sub-int v5, v110, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    aput v7, v30, v5

    .line 336
    const/16 v21, 0x1

    .line 337
    add-int/lit8 v110, v110, 0x1

    .line 338
    goto/16 :goto_9

    .line 339
    .end local v6           #tmpChar:[C
    .end local v99           #emojiWidth:F
    :cond_21
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v98

    if-lt v0, v5, :cond_25

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v98

    if-gt v0, v5, :cond_25

    .line 340
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v96

    .line 342
    .local v96, bm:Landroid/graphics/Bitmap;
    if-eqz v96, :cond_24

    .line 345
    if-nez v127, :cond_22

    .line 346
    move-object/from16 v130, p4

    .line 351
    .local v130, whichPaint:Landroid/graphics/Paint;
    :goto_b
    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v130 .. v130}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v5, v7

    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v131, v5, v7

    .line 353
    .local v131, wid:F
    const/16 v21, 0x1

    .line 354
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 356
    const v5, 0x400ab021

    mul-float v5, v5, v131

    add-float v64, v64, v5

    .line 357
    sub-int v5, v110, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    const v7, 0x400ab021

    mul-float v7, v7, v131

    aput v7, v30, v5

    .line 358
    sub-int v5, v110, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    aput v7, v30, v5

    .line 361
    :goto_c
    add-int/lit8 v110, v110, 0x1

    .line 362
    goto/16 :goto_9

    .line 348
    .end local v130           #whichPaint:Landroid/graphics/Paint;
    .end local v131           #wid:F
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v130, v0

    .restart local v130       #whichPaint:Landroid/graphics/Paint;
    goto :goto_b

    .line 360
    .restart local v131       #wid:F
    :cond_23
    add-float v64, v64, v131

    goto :goto_c

    .line 363
    .end local v130           #whichPaint:Landroid/graphics/Paint;
    .end local v131           #wid:F
    :cond_24
    sub-int v5, v110, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 366
    .end local v96           #bm:Landroid/graphics/Bitmap;
    :cond_25
    sub-int v5, v110, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 369
    .end local v98           #emoji:I
    :cond_26
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    const v5, 0xe63e

    move/from16 v0, v97

    if-lt v0, v5, :cond_27

    const v5, 0xe6ba

    move/from16 v0, v97

    if-le v0, v5, :cond_28

    :cond_27
    const v5, 0xe70c

    move/from16 v0, v97

    if-lt v0, v5, :cond_29

    const v5, 0xe757

    move/from16 v0, v97

    if-gt v0, v5, :cond_29

    .line 372
    :cond_28
    const/16 v21, 0x1

    .line 373
    sub-int v5, v110, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 375
    :cond_29
    sub-int v5, v110, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 436
    :cond_2a
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_2c

    const/16 v36, 0x1

    .line 441
    .local v36, moreChars:Z
    :goto_d
    move/from16 v0, v116

    move/from16 v1, v39

    if-eq v0, v1, :cond_2f

    .line 443
    const/16 v5, 0x20

    move/from16 v0, v97

    if-ne v0, v5, :cond_2b

    add-int/lit8 v116, v110, 0x1

    .line 445
    :cond_2b
    :goto_e
    move/from16 v0, v116

    move/from16 v1, v124

    if-ge v0, v1, :cond_2d

    sub-int v5, v116, v31

    aget-char v5, v29, v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_2d

    .line 446
    add-int/lit8 v116, v116, 0x1

    goto :goto_e

    .line 436
    .end local v36           #moreChars:Z
    :cond_2c
    const/16 v36, 0x0

    goto :goto_d

    .line 449
    .restart local v36       #moreChars:Z
    :cond_2d
    move/from16 v10, v116

    .line 450
    .local v10, endPos:I
    move/from16 v11, v117

    .line 451
    .local v11, above:I
    move/from16 v12, v119

    .line 452
    .local v12, below:I
    move/from16 v13, v120

    .line 453
    .local v13, top:I
    move/from16 v14, v118

    .line 454
    .local v14, bottom:I
    move/from16 v34, v121

    .local v34, currentTextWidth:F
    :goto_f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, v39

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v26, p3

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v32, p12

    move/from16 v33, p11

    move-object/from16 v35, p4

    .line 471
    invoke-direct/range {v7 .. v36}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 478
    move/from16 v39, v10

    .line 479
    add-int/lit8 v110, v39, -0x1

    .line 480
    move/from16 v102, v39

    move/from16 v116, v39

    .line 481
    const/16 v64, 0x0

    .line 482
    const/16 v44, 0x0

    move/from16 v43, v44

    move/from16 v42, v44

    move/from16 v41, v44

    .line 483
    const/16 v118, 0x0

    move/from16 v120, v118

    move/from16 v119, v118

    move/from16 v117, v118

    .line 485
    add-int/lit8 v101, v101, -0x1

    if-gtz v101, :cond_2e

    .line 486
    move/from16 v132, v122

    .line 489
    :cond_2e
    move/from16 v0, v39

    move/from16 v1, v126

    if-ge v0, v1, :cond_1a

    .line 492
    move-object/from16 v0, v114

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/text/MeasuredText;->setPos(I)V

    .line 493
    move/from16 v124, v39

    .line 494
    goto/16 :goto_a

    .line 455
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    :cond_2f
    move/from16 v0, v102

    move/from16 v1, v39

    if-eq v0, v1, :cond_30

    .line 456
    move/from16 v10, v102

    .line 457
    .restart local v10       #endPos:I
    move/from16 v11, v41

    .line 458
    .restart local v11       #above:I
    move/from16 v12, v42

    .line 459
    .restart local v12       #below:I
    move/from16 v13, v43

    .line 460
    .restart local v13       #top:I
    move/from16 v14, v44

    .line 461
    .restart local v14       #bottom:I
    move/from16 v34, v103

    .restart local v34       #currentTextWidth:F
    goto :goto_f

    .line 463
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    :cond_30
    add-int/lit8 v10, v39, 0x1

    .line 464
    .restart local v10       #endPos:I
    move-object/from16 v0, v20

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 465
    .restart local v11       #above:I
    move-object/from16 v0, v20

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 466
    .restart local v12       #below:I
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 467
    .restart local v13       #top:I
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 468
    .restart local v14       #bottom:I
    sub-int v5, v39, v31

    aget v34, v30, v5

    .restart local v34       #currentTextWidth:F
    goto :goto_f

    .line 299
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    .end local v36           #moreChars:Z
    :cond_31
    add-int/lit8 v110, v110, 0x1

    goto/16 :goto_8

    .line 504
    .end local v95           #bZerowithspace:Z
    .end local v97           #c:C
    .end local v104           #fmAscent:I
    .end local v105           #fmBottom:I
    .end local v106           #fmDescent:I
    .end local v107           #fmTop:I
    .end local v110           #j:I
    .end local v124           #spanEnd:I
    .end local v125           #spanLen:I
    :cond_32
    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v7, :cond_34

    .line 505
    or-int v5, v43, v44

    or-int v5, v5, v42

    or-int v5, v5, v41

    if-nez v5, :cond_33

    .line 506
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 508
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v43, v0

    .line 509
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    .line 510
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v41, v0

    .line 511
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v42, v0

    .line 516
    :cond_33
    move/from16 v0, v40

    move/from16 v1, p3

    if-eq v0, v1, :cond_38

    const/16 v66, 0x1

    :goto_10
    move-object/from16 v37, p0

    move-object/from16 v38, p1

    move/from16 v45, v15

    move/from16 v46, p7

    move/from16 v47, p8

    move-object/from16 v48, v18

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    move/from16 v51, v21

    move/from16 v52, v22

    move-object/from16 v53, v23

    move/from16 v54, v24

    move/from16 v55, v25

    move/from16 v56, p3

    move/from16 v57, p9

    move/from16 v58, p10

    move-object/from16 v59, v29

    move-object/from16 v60, v30

    move/from16 v61, v31

    move-object/from16 v62, p12

    move/from16 v63, p11

    move-object/from16 v65, p4

    invoke-direct/range {v37 .. v66}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 528
    :cond_34
    move/from16 v31, v40

    .line 530
    move/from16 v0, v40

    move/from16 v1, p3

    if-ne v0, v1, :cond_39

    .line 534
    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v21           #hasTabOrEmoji:Z
    .end local v23           #chdirs:[B
    .end local v24           #dir:I
    .end local v25           #easy:Z
    .end local v29           #chs:[C
    .end local v30           #widths:[F
    .end local v39           #here:I
    .end local v40           #paraEnd:I
    .end local v41           #fitAscent:I
    .end local v42           #fitDescent:I
    .end local v43           #fitTop:I
    .end local v44           #fitBottom:I
    .end local v64           #w:F
    .end local v100           #firstWidth:I
    .end local v101           #firstWidthLineLimit:I
    .end local v102           #fit:I
    .end local v103           #fitWidth:F
    .end local v108           #hasTab:Z
    .end local v116           #ok:I
    .end local v117           #okAscent:I
    .end local v118           #okBottom:I
    .end local v119           #okDescent:I
    .end local v120           #okTop:I
    .end local v121           #okWidth:F
    .end local v122           #restWidth:I
    .end local v126           #spanStart:I
    .end local v129           #tabStops:Landroid/text/Layout$TabStops;
    .end local v132           #width:I
    :cond_35
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_36

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v7, :cond_37

    .line 538
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 540
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v69, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v70, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v71, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v72, v0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v83, 0x1

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v92, 0x0

    const/16 v94, 0x0

    move-object/from16 v65, p0

    move-object/from16 v66, p1

    move/from16 v67, p3

    move/from16 v68, p3

    move/from16 v73, v15

    move/from16 v74, p7

    move/from16 v75, p8

    move-object/from16 v78, v20

    move/from16 v80, v22

    move/from16 v84, p3

    move/from16 v85, p9

    move/from16 v86, p10

    move/from16 v89, p2

    move-object/from16 v90, p12

    move/from16 v91, p11

    move-object/from16 v93, p4

    invoke-direct/range {v65 .. v94}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 551
    :cond_37
    return-void

    .line 516
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v21       #hasTabOrEmoji:Z
    .restart local v23       #chdirs:[B
    .restart local v24       #dir:I
    .restart local v25       #easy:Z
    .restart local v29       #chs:[C
    .restart local v30       #widths:[F
    .restart local v39       #here:I
    .restart local v40       #paraEnd:I
    .restart local v41       #fitAscent:I
    .restart local v42       #fitDescent:I
    .restart local v43       #fitTop:I
    .restart local v44       #fitBottom:I
    .restart local v64       #w:F
    .restart local v100       #firstWidth:I
    .restart local v101       #firstWidthLineLimit:I
    .restart local v102       #fit:I
    .restart local v103       #fitWidth:F
    .restart local v108       #hasTab:Z
    .restart local v116       #ok:I
    .restart local v117       #okAscent:I
    .restart local v118       #okBottom:I
    .restart local v119       #okDescent:I
    .restart local v120       #okTop:I
    .restart local v121       #okWidth:F
    .restart local v122       #restWidth:I
    .restart local v126       #spanStart:I
    .restart local v129       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v132       #width:I
    :cond_38
    const/16 v66, 0x0

    goto/16 :goto_10

    .line 183
    :cond_39
    move/from16 v31, v40

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1054
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1058
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1063
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1064
    const/4 v0, 0x0

    .line 1067
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1014
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1015
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1017
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1019
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 978
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 979
    .local v1, high:I
    const/4 v3, -0x1

    .line 981
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 982
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 983
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 984
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 985
    move v1, v0

    goto :goto_0

    .line 987
    :cond_0
    move v3, v0

    goto :goto_0

    .line 990
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 991
    const/4 v3, 0x0

    .line 993
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1004
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1005
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1009
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1076
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1077
    return-void
.end method
