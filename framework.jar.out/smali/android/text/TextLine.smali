.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DBB8_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBB9_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBBA_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBBB_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final EMOJI_COLOR_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 73
    new-instance v0, Landroid/text/TextLine$1;

    invoke-direct {v0}, Landroid/text/TextLine$1;-><init>()V

    sput-object v0, Landroid/text/TextLine;->DBB8_REPLACE_TABLE:Ljava/util/HashMap;

    .line 92
    new-instance v0, Landroid/text/TextLine$2;

    invoke-direct {v0}, Landroid/text/TextLine$2;-><init>()V

    sput-object v0, Landroid/text/TextLine;->DBB9_REPLACE_TABLE:Ljava/util/HashMap;

    .line 111
    new-instance v0, Landroid/text/TextLine$3;

    invoke-direct {v0}, Landroid/text/TextLine$3;-><init>()V

    sput-object v0, Landroid/text/TextLine;->DBBA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 135
    new-instance v0, Landroid/text/TextLine$4;

    invoke-direct {v0}, Landroid/text/TextLine$4;-><init>()V

    sput-object v0, Landroid/text/TextLine;->DBBB_REPLACE_TABLE:Ljava/util/HashMap;

    .line 141
    new-instance v0, Landroid/text/TextLine$5;

    invoke-direct {v0}, Landroid/text/TextLine$5;-><init>()V

    sput-object v0, Landroid/text/TextLine;->EMOJI_COLOR_TABLE:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 64
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 66
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 68
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .parameter "c"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "needWidth"

    .prologue
    .line 566
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 567
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 568
    .local v13, w:F
    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 573
    .end local v13           #w:F
    :goto_1
    return v13

    .line 566
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 573
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v13

    goto :goto_1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 29
    .parameter "c"
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1182
    if-eqz p7, :cond_1

    const/4 v10, 0x1

    .line 1183
    .local v10, flags:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_7

    .line 1184
    sub-int v14, p4, p3

    .line 1185
    .local v14, count:I
    sub-int v16, p6, p5

    .line 1186
    .local v16, contextCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    const v4, 0xdbb8

    if-lt v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    const v4, 0xdbbb

    if-gt v2, v4, :cond_2

    const/4 v2, 0x2

    if-ne v14, v2, :cond_2

    .line 1189
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    new-array v3, v2, [C

    .line 1190
    .local v3, tmpChar:[C
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v4, v4, p3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mChars:[C

    add-int/lit8 v6, p3, 0x1

    aget-char v5, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextLine;->getEmojiCodeFromUACode(CC)C

    move-result v4

    aput-char v4, v3, v2

    .line 1191
    const/4 v2, 0x0

    aget-char v2, v3, v2

    invoke-static {v2}, Landroid/text/TextLine;->getEmojiColor(C)I

    move-result v28

    .line 1192
    .local v28, emojiColor:I
    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    .line 1193
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1194
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v0, p9

    int-to-float v9, v0

    move-object/from16 v2, p1

    move/from16 v8, p8

    move-object/from16 v11, p2

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 1215
    .end local v3           #tmpChar:[C
    .end local v14           #count:I
    .end local v16           #contextCount:I
    .end local v28           #emojiColor:I
    :goto_1
    return-void

    .line 1182
    .end local v10           #flags:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1196
    .restart local v10       #flags:I
    .restart local v14       #count:I
    .restart local v16       #contextCount:I
    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    const v4, 0xe63e

    if-lt v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    const v4, 0xe6ba

    if-le v2, v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    const v4, 0xe70c

    if-lt v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    const v4, 0xe757

    if-gt v2, v4, :cond_5

    .line 1199
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p3

    invoke-static {v2}, Landroid/text/TextLine;->getEmojiColor(C)I

    move-result v28

    .line 1200
    .restart local v28       #emojiColor:I
    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_5

    .line 1201
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1203
    .end local v28           #emojiColor:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v11, p1

    move/from16 v13, p3

    move/from16 v15, p5

    move/from16 v17, p8

    move/from16 v19, v10

    move-object/from16 v20, p2

    invoke-virtual/range {v11 .. v20}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1207
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v11, p1

    move/from16 v13, p3

    move/from16 v15, p5

    move/from16 v17, p8

    move/from16 v19, v10

    move-object/from16 v20, p2

    invoke-virtual/range {v11 .. v20}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1211
    .end local v14           #count:I
    .end local v16           #contextCount:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v27, v0

    .line 1212
    .local v27, delta:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int v19, v27, p3

    add-int v20, v27, p4

    add-int v21, v27, p5

    add-int v22, v27, p6

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v17, p1

    move/from16 v23, p8

    move/from16 v25, v10

    move-object/from16 v26, p2

    invoke-virtual/range {v17 .. v26}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .parameter "fmi"
    .parameter "wp"

    .prologue
    .line 860
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 861
    .local v1, previousTop:I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 862
    .local v2, previousAscent:I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 863
    .local v3, previousDescent:I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 864
    .local v4, previousBottom:I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 866
    .local v5, previousLeading:I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 868
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 870
    return-void
.end method

.method protected static getEmojiCodeFromUACode(CC)C
    .locals 6
    .parameter "UACode1"
    .parameter "UACode2"

    .prologue
    const/4 v5, 0x0

    .line 1259
    const/4 v4, 0x1

    new-array v1, v4, [C

    .line 1260
    .local v1, chars:[C
    aput-char p1, v1, v5

    .line 1261
    const/4 v3, 0x0

    .line 1262
    .local v3, replaceCode:Ljava/lang/String;
    const-string/jumbo v2, "\u3000"

    .line 1263
    .local v2, nullCode:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1264
    .local v0, c:Ljava/lang/String;
    const v4, 0xdbb8

    if-ne p0, v4, :cond_1

    .line 1265
    sget-object v4, Landroid/text/TextLine;->DBB8_REPLACE_TABLE:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #replaceCode:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1273
    .restart local v3       #replaceCode:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    .line 1274
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1276
    :goto_1
    return v4

    .line 1266
    :cond_1
    const v4, 0xdbb9

    if-ne p0, v4, :cond_2

    .line 1267
    sget-object v4, Landroid/text/TextLine;->DBB9_REPLACE_TABLE:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #replaceCode:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #replaceCode:Ljava/lang/String;
    goto :goto_0

    .line 1268
    :cond_2
    const v4, 0xdbba

    if-ne p0, v4, :cond_3

    .line 1269
    sget-object v4, Landroid/text/TextLine;->DBBA_REPLACE_TABLE:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #replaceCode:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #replaceCode:Ljava/lang/String;
    goto :goto_0

    .line 1270
    :cond_3
    const v4, 0xdbbb

    if-ne p0, v4, :cond_0

    .line 1271
    sget-object v4, Landroid/text/TextLine;->DBBB_REPLACE_TABLE:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #replaceCode:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #replaceCode:Ljava/lang/String;
    goto :goto_0

    .line 1276
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1
.end method

.method private static getEmojiColor(C)I
    .locals 4
    .parameter "emojiCode"

    .prologue
    .line 1280
    const/4 v3, 0x1

    new-array v1, v3, [C

    .line 1281
    .local v1, chars:[C
    const/4 v3, 0x0

    aput-char p0, v1, v3

    .line 1282
    const/4 v2, 0x0

    .line 1283
    .local v2, emojiColorStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1285
    .local v0, c:Ljava/lang/String;
    sget-object v3, Landroid/text/TextLine;->EMOJI_COLOR_TABLE:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emojiColorStr:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1287
    .restart local v2       #emojiColorStr:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1288
    const/4 v3, -0x1

    .line 1290
    :goto_0
    return v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .parameter "runIndex"
    .parameter "runStart"
    .parameter "runLimit"
    .parameter "runIsRtl"
    .parameter "offset"
    .parameter "after"

    .prologue
    .line 793
    if-ltz p1, :cond_0

    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 797
    :cond_0
    if-eqz p6, :cond_3

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 851
    :cond_1
    :goto_1
    return v20

    .line 793
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 800
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto :goto_1

    .line 803
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 804
    .local v2, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 806
    move/from16 v4, p2

    .line 808
    .local v4, spanStart:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_6

    .line 809
    move/from16 v20, p3

    .line 845
    .local v20, spanLimit:I
    :cond_5
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 846
    .local v6, flags:I
    :goto_2
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 847
    .local v8, cursorOpt:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v20

    goto :goto_1

    .line 811
    .end local v6           #flags:I
    .end local v8           #cursorOpt:I
    .end local v20           #spanLimit:I
    :cond_6
    if-eqz p6, :cond_7

    add-int/lit8 v22, p5, 0x1

    .line 812
    .local v22, target:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 814
    .local v17, limit:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 816
    .restart local v20       #spanLimit:I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 824
    .local v21, spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 826
    .restart local v21       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_5

    .line 827
    const/16 v18, 0x0

    .line 828
    .local v18, replacement:Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .local v16, j:I
    :goto_6
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_a

    .line 829
    aget-object v19, v21, v16

    .line 830
    .local v19, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_9

    move-object/from16 v18, v19

    .line 831
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 828
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v16           #j:I
    .end local v17           #limit:I
    .end local v18           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v19           #span:Landroid/text/style/MetricAffectingSpan;
    .end local v20           #spanLimit:I
    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v22           #target:I
    :cond_7
    move/from16 v22, p5

    .line 811
    goto :goto_4

    .line 819
    .restart local v17       #limit:I
    .restart local v20       #spanLimit:I
    .restart local v22       #target:I
    :cond_8
    move/from16 v4, v20

    goto :goto_5

    .line 833
    .restart local v16       #j:I
    .restart local v18       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v19       #span:Landroid/text/style/MetricAffectingSpan;
    .restart local v21       #spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_7

    .line 837
    .end local v19           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_a
    if-eqz v18, :cond_5

    .line 840
    if-nez p6, :cond_1

    move/from16 v20, v4

    goto/16 :goto_1

    .line 845
    .end local v16           #j:I
    .end local v17           #limit:I
    .end local v18           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v22           #target:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 846
    .restart local v6       #flags:I
    :cond_c
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 851
    .restart local v8       #cursorOpt:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto/16 :goto_1
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
    .parameter "replacement"
    .parameter "wp"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 1017
    const/16 v23, 0x0

    .line 1019
    .local v23, ret:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 1020
    .local v4, textStart:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 1022
    .local v5, textLimit:I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 1023
    :cond_0
    const/4 v7, 0x0

    .line 1024
    .local v7, previousTop:I
    const/4 v8, 0x0

    .line 1025
    .local v8, previousAscent:I
    const/4 v9, 0x0

    .line 1026
    .local v9, previousDescent:I
    const/4 v10, 0x0

    .line 1027
    .local v10, previousBottom:I
    const/4 v11, 0x0

    .line 1029
    .local v11, previousLeading:I
    if-eqz p11, :cond_6

    const/16 v22, 0x1

    .line 1031
    .local v22, needUpdateMetrics:Z
    :goto_0
    if-eqz v22, :cond_1

    .line 1032
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1033
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1034
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1035
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1036
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1039
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 1041
    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    .line 1042
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1047
    .end local v7           #previousTop:I
    .end local v8           #previousAscent:I
    .end local v9           #previousDescent:I
    .end local v10           #previousBottom:I
    .end local v11           #previousLeading:I
    .end local v22           #needUpdateMetrics:Z
    :cond_2
    if-eqz p6, :cond_4

    .line 1048
    if-eqz p5, :cond_3

    .line 1049
    sub-float p7, p7, v23

    .line 1051
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 1055
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23           #ret:F
    :cond_5
    return v23

    .line 1029
    .restart local v7       #previousTop:I
    .restart local v8       #previousAscent:I
    .restart local v9       #previousDescent:I
    .restart local v10       #previousBottom:I
    .restart local v11       #previousLeading:I
    .restart local v23       #ret:F
    :cond_6
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 29
    .parameter "start"
    .parameter "measureLimit"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 1082
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1084
    .local v3, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1085
    if-eqz p10, :cond_0

    .line 1086
    move-object/from16 v0, p10

    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1088
    :cond_0
    const/4 v2, 0x0

    .line 1163
    .end local v3           #wp:Landroid/text/TextPaint;
    :goto_0
    return v2

    .line 1091
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_4

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1093
    .restart local v3       #wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1094
    move/from16 v5, p2

    .line 1095
    .local v5, mlimit:I
    if-nez p11, :cond_2

    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_1
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1099
    .end local v3           #wp:Landroid/text/TextPaint;
    .end local v5           #mlimit:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1107
    move/from16 v27, p6

    .line 1108
    .local v27, originalX:F
    move/from16 v9, p1

    .local v9, i:I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_15

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1110
    .restart local v3       #wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v24, v2, v4

    .line 1114
    .local v24, inext:I
    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1116
    .restart local v5       #mlimit:I
    const/4 v7, 0x0

    .line 1118
    .local v7, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v12, 0x0

    .local v12, j:I
    move/from16 v25, v12

    .end local v12           #j:I
    .local v25, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_8

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    if-gt v2, v4, :cond_6

    .line 1118
    :cond_5
    :goto_4
    add-int/lit8 v12, v25, 0x1

    .end local v25           #j:I
    .restart local v12       #j:I
    move/from16 v25, v12

    .end local v12           #j:I
    .restart local v25       #j:I
    goto :goto_3

    .line 1123
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v28, v2, v25

    .line 1124
    .local v28, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v7, v28

    .line 1125
    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    .line 1129
    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_4

    .line 1133
    .end local v28           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v7, :cond_c

    .line 1134
    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v5, v0, :cond_b

    :cond_9
    const/16 v18, 0x1

    :goto_5
    move-object/from16 v6, p0

    move-object v8, v3

    move v10, v5

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v6 .. v18}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v12, v25

    .line 1108
    .end local v25           #j:I
    .restart local v12       #j:I
    :cond_a
    :goto_6
    move/from16 v9, v24

    goto/16 :goto_2

    .line 1134
    .end local v12           #j:I
    .restart local v25       #j:I
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 1139
    :cond_c
    if-nez p5, :cond_f

    .line 1140
    if-nez p11, :cond_d

    move/from16 v0, p2

    if-ge v5, v0, :cond_e

    :cond_d
    const/16 v23, 0x1

    :goto_7
    move-object/from16 v10, p0

    move-object v11, v3

    move v12, v9

    move v13, v5

    move v14, v9

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v12, v25

    .end local v25           #j:I
    .restart local v12       #j:I
    goto :goto_6

    .end local v12           #j:I
    .restart local v25       #j:I
    :cond_e
    const/16 v23, 0x0

    goto :goto_7

    .line 1143
    :cond_f
    move v12, v9

    .end local v25           #j:I
    .restart local v12       #j:I
    :goto_8
    if-ge v12, v5, :cond_a

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v13, v2, v4

    .line 1147
    .local v13, jnext:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1148
    const/16 v26, 0x0

    .local v26, k:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_12

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v13

    if-ge v2, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    if-gt v2, v4, :cond_11

    .line 1148
    :cond_10
    :goto_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1153
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v28, v2, v26

    .line 1154
    .local v28, span:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_a

    .line 1157
    .end local v28           #span:Landroid/text/style/CharacterStyle;
    :cond_12
    if-nez p11, :cond_13

    move/from16 v0, p2

    if-ge v13, v0, :cond_14

    :cond_13
    const/16 v23, 0x1

    :goto_b
    move-object/from16 v10, p0

    move-object v11, v3

    move v14, v9

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    .line 1143
    move v12, v13

    goto/16 :goto_8

    .line 1157
    :cond_14
    const/16 v23, 0x0

    goto :goto_b

    .line 1163
    .end local v3           #wp:Landroid/text/TextPaint;
    .end local v5           #mlimit:I
    .end local v7           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v12           #j:I
    .end local v13           #jnext:I
    .end local v24           #inext:I
    .end local v26           #k:I
    :cond_15
    sub-float v2, p6, v27

    goto/16 :goto_0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 39
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 905
    if-eqz p12, :cond_0

    .line 906
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 909
    :cond_0
    sub-int v20, p3, p2

    .line 911
    .local v20, runLen:I
    if-nez v20, :cond_2

    .line 912
    const/16 v38, 0x0

    .line 990
    :cond_1
    :goto_0
    return v38

    .line 915
    :cond_2
    const/16 v38, 0x0

    .line 917
    .local v38, ret:F
    sub-int v14, p5, p4

    .line 918
    .local v14, contextLen:I
    if-nez p13, :cond_3

    if-eqz p7, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_3

    if-eqz p6, :cond_4

    .line 919
    :cond_3
    if-eqz p6, :cond_9

    const/4 v8, 0x1

    .line 920
    .local v8, flags:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_d

    .line 921
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p2

    const v4, 0xdbb8

    if-lt v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, p2

    const v4, 0xdbbb

    if-gt v2, v4, :cond_a

    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    .line 924
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    new-array v3, v2, [C

    .line 925
    .local v3, tmpChar:[C
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v4, v4, p2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mChars:[C

    add-int/lit8 v6, p2, 0x1

    aget-char v5, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextLine;->getEmojiCodeFromUACode(CC)C

    move-result v4

    aput-char v4, v3, v2

    .line 926
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v38

    .line 950
    .end local v3           #tmpChar:[C
    .end local v8           #flags:I
    :cond_4
    :goto_2
    if-eqz p7, :cond_8

    .line 951
    if-eqz p6, :cond_5

    .line 952
    sub-float p8, p8, v38

    .line 955
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_6

    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v36

    .line 957
    .local v36, previousColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v37

    .line 959
    .local v37, previousStyle:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 960
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 961
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v24, p8, v38

    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v26, p1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 963
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 964
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 967
    .end local v36           #previousColor:I
    .end local v37           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_7

    .line 969
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    const v4, 0x3de38e39

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v23, v2, v4

    .line 971
    .local v23, underlineTop:F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v36

    .line 972
    .restart local v36       #previousColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v37

    .line 973
    .restart local v37       #previousStyle:Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v35

    .line 975
    .local v35, previousAntiAlias:Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 976
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 978
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 979
    add-float v24, p8, v38

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v25, v23, v2

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v26, p1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 981
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 982
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 983
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 986
    .end local v23           #underlineTop:F
    .end local v35           #previousAntiAlias:Z
    .end local v36           #previousColor:I
    .end local v37           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v33, p10, v2

    move-object/from16 v24, p0

    move-object/from16 v25, p7

    move-object/from16 v26, p1

    move/from16 v27, p2

    move/from16 v28, p3

    move/from16 v29, p4

    move/from16 v30, p5

    move/from16 v31, p6

    move/from16 v32, p8

    invoke-direct/range {v24 .. v33}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 990
    :cond_8
    if-eqz p6, :cond_1

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v38, v0

    goto/16 :goto_0

    .line 919
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 928
    .restart local v8       #flags:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    add-int/lit8 v4, v20, -0x1

    aget-char v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 929
    add-int v2, p2, v20

    if-ge v2, v14, :cond_b

    .line 930
    add-int/lit8 v2, v20, 0x1

    new-array v0, v2, [F

    move-object/from16 v16, v0

    .line 931
    .local v16, widths:[F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    add-int/lit8 v12, v20, 0x1

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v13, p4

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v38

    .line 933
    aget v2, v16, v20

    sub-float v38, v38, v2

    .line 934
    goto/16 :goto_2

    .line 935
    .end local v16           #widths:[F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v18, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, p1

    move/from16 v19, p2

    move/from16 v21, p4

    move/from16 v22, v14

    move/from16 v23, v8

    invoke-virtual/range {v17 .. v25}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v38

    goto/16 :goto_2

    .line 939
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v18, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, p1

    move/from16 v19, p2

    move/from16 v21, p4

    move/from16 v22, v14

    move/from16 v23, v8

    invoke-virtual/range {v17 .. v25}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v38

    goto/16 :goto_2

    .line 943
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v34, v0

    .line 944
    .local v34, delta:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int v23, v34, p2

    add-int v24, v34, p3

    add-int v25, v34, p4

    add-int v26, v34, p5

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v21, p1

    move/from16 v27, v8

    invoke-virtual/range {v21 .. v29}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    move-result v38

    goto/16 :goto_2
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .parameter "start"
    .parameter "offset"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "fmi"

    .prologue
    .line 592
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    .prologue
    .line 218
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    .line 219
    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 220
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 221
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    .line 222
    .local v1, tl:Landroid/text/TextLine;
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 223
    monitor-exit v3

    .line 231
    :goto_0
    return-object v1

    .line 226
    .end local v1           #tl:Landroid/text/TextLine;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .line 231
    .restart local v1       #tl:Landroid/text/TextLine;
    goto :goto_0

    .line 226
    .end local v1           #tl:Landroid/text/TextLine;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .parameter "tl"

    .prologue
    const/4 v3, 0x0

    .line 242
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 243
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 244
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 246
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 247
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 248
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 250
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 252
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 253
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0

    .line 257
    :cond_0
    monitor-exit v2

    .line 258
    return-object v3

    .line 251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .parameter "fmi"
    .parameter "previousTop"
    .parameter "previousAscent"
    .parameter "previousDescent"
    .parameter "previousBottom"
    .parameter "previousLeading"

    .prologue
    .line 874
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 875
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 876
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 877
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 878
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 879
    return-void
.end method


# virtual methods
.method ascent(I)F
    .locals 9
    .parameter "pos"

    .prologue
    .line 1225
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_0

    .line 1226
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 1240
    :goto_0
    return v6

    .line 1229
    :cond_0
    iget v6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v6

    .line 1230
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1231
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 1232
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0

    .line 1235
    :cond_1
    iget-object v5, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1236
    .local v5, wp:Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1237
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1238
    .local v3, span:Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1240
    .end local v3           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 33
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v3, :cond_2

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v3, v4, :cond_1

    .line 335
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mLen:I

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v3 .. v12}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v4, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v3, v4, :cond_2

    .line 339
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mLen:I

    const/4 v7, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v3 .. v12}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    goto :goto_0

    .line 344
    :cond_2
    const/16 v25, 0x0

    .line 345
    .local v25, h:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v3, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v30, v0

    .line 346
    .local v30, runs:[I
    const/16 v24, 0x0

    .line 348
    .local v24, emojiRect:Landroid/graphics/RectF;
    move-object/from16 v0, v30

    array-length v3, v0

    add-int/lit8 v27, v3, -0x2

    .line 349
    .local v27, lastRunIndex:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move-object/from16 v0, v30

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_0

    .line 350
    aget v29, v30, v26

    .line 351
    .local v29, runStart:I
    add-int/lit8 v3, v26, 0x1

    aget v3, v30, v3

    const v4, 0x3ffffff

    and-int/2addr v3, v4

    add-int v28, v29, v3

    .line 352
    .local v28, runLimit:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v28

    if-le v0, v3, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v28, v0

    .line 355
    :cond_3
    add-int/lit8 v3, v26, 0x1

    aget v3, v30, v3

    const/high16 v4, 0x400

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/4 v7, 0x1

    .line 357
    .local v7, runIsRtl:Z
    :goto_2
    move/from16 v5, v29

    .line 358
    .local v5, segstart:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_a

    move/from16 v6, v29

    .local v6, j:I
    :goto_3
    move/from16 v0, v28

    if-gt v6, v0, :cond_19

    .line 359
    const/16 v23, 0x0

    .line 360
    .local v23, codept:I
    const/16 v21, 0x0

    .line 361
    .local v21, bm:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 362
    .local v18, bEmoji:Z
    const/16 v19, 0x0

    .line 364
    .local v19, bNativeEmoji:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_4

    move/from16 v0, v28

    if-ge v6, v0, :cond_4

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v23, v3, v6

    .line 366
    const v3, 0xd800

    move/from16 v0, v23

    if-lt v0, v3, :cond_d

    const v3, 0xdc00

    move/from16 v0, v23

    if-ge v0, v3, :cond_d

    add-int/lit8 v3, v6, 0x1

    move/from16 v0, v28

    if-ge v3, v0, :cond_d

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v3, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v23

    .line 368
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v6

    const v4, 0xdbb8

    if-lt v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v6

    const v4, 0xdbbb

    if-gt v3, v4, :cond_b

    .line 371
    const/16 v18, 0x1

    .line 388
    :cond_4
    :goto_4
    move/from16 v0, v28

    if-eq v6, v0, :cond_5

    const/16 v3, 0x9

    move/from16 v0, v23

    if-eq v0, v3, :cond_5

    if-nez v21, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 389
    :cond_5
    add-float v8, p2, v25

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-eq v6, v3, :cond_10

    :cond_6
    const/4 v12, 0x1

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v3 .. v12}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v3

    add-float v25, v25, v3

    .line 392
    const/16 v3, 0x9

    move/from16 v0, v23

    if-ne v0, v3, :cond_11

    .line 393
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v4, v4

    mul-float v4, v4, v25

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->nextTab(F)F

    move-result v4

    mul-float v25, v3, v4

    .line 416
    :cond_7
    :goto_6
    add-int/lit8 v5, v6, 0x1

    .line 358
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 355
    .end local v5           #segstart:I
    .end local v6           #j:I
    .end local v7           #runIsRtl:Z
    .end local v18           #bEmoji:Z
    .end local v19           #bNativeEmoji:Z
    .end local v21           #bm:Landroid/graphics/Bitmap;
    .end local v23           #codept:I
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .restart local v5       #segstart:I
    .restart local v7       #runIsRtl:Z
    :cond_a
    move/from16 v6, v28

    .line 358
    goto/16 :goto_3

    .line 373
    .restart local v6       #j:I
    .restart local v18       #bEmoji:Z
    .restart local v19       #bNativeEmoji:Z
    .restart local v21       #bm:Landroid/graphics/Bitmap;
    .restart local v23       #codept:I
    :cond_b
    sget v3, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v23

    if-lt v0, v3, :cond_c

    sget v3, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v23

    if-gt v0, v3, :cond_c

    .line 374
    sget-object v3, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v21

    goto :goto_4

    .line 375
    :cond_c
    const v3, 0xffff

    move/from16 v0, v23

    if-le v0, v3, :cond_4

    .line 376
    add-int/lit8 v6, v6, 0x1

    .line 377
    goto :goto_7

    .line 380
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v6

    const v4, 0xe63e

    if-lt v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v6

    const v4, 0xe6ba

    if-le v3, v4, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v6

    const v4, 0xe70c

    if-lt v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v6

    const v4, 0xe757

    if-gt v3, v4, :cond_4

    .line 384
    :cond_f
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 389
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 394
    :cond_11
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_14

    .line 395
    add-int/lit8 v11, v6, 0x2

    add-float v13, p2, v25

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-eq v6, v3, :cond_13

    :cond_12
    const/16 v17, 0x1

    :goto_8
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v6

    move v12, v7

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-direct/range {v8 .. v17}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v3

    add-float v25, v25, v3

    .line 397
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 395
    :cond_13
    const/16 v17, 0x0

    goto :goto_8

    .line 398
    :cond_14
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_17

    .line 399
    add-int/lit8 v11, v6, 0x1

    add-float v13, p2, v25

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-eq v6, v3, :cond_16

    :cond_15
    const/16 v17, 0x1

    :goto_9
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v6

    move v12, v7

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-direct/range {v8 .. v17}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v3

    add-float v25, v25, v3

    goto/16 :goto_6

    :cond_16
    const/16 v17, 0x0

    goto :goto_9

    .line 401
    :cond_17
    if-eqz v21, :cond_7

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/TextLine;->ascent(I)F

    move-result v22

    .line 403
    .local v22, bmAscent:F
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    .line 404
    .local v20, bitmapHeight:F
    move/from16 v0, v22

    neg-float v3, v0

    div-float v31, v3, v20

    .line 405
    .local v31, scale:F
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v32, v3, v31

    .line 407
    .local v32, width:F
    if-nez v24, :cond_18

    .line 408
    new-instance v24, Landroid/graphics/RectF;

    .end local v24           #emojiRect:Landroid/graphics/RectF;
    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    .line 410
    .restart local v24       #emojiRect:Landroid/graphics/RectF;
    :cond_18
    add-float v3, p2, v25

    move/from16 v0, p4

    int-to-float v4, v0

    add-float v4, v4, v22

    add-float v8, p2, v25

    add-float v8, v8, v32

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 413
    add-float v25, v25, v32

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 349
    .end local v18           #bEmoji:Z
    .end local v19           #bNativeEmoji:Z
    .end local v20           #bitmapHeight:F
    .end local v21           #bm:Landroid/graphics/Bitmap;
    .end local v22           #bmAscent:F
    .end local v23           #codept:I
    .end local v31           #scale:F
    .end local v32           #width:F
    :cond_19
    add-int/lit8 v26, v26, 0x2

    goto/16 :goto_1
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 30
    .parameter "cursor"
    .parameter "toLeft"

    .prologue
    .line 625
    const/16 v17, 0x0

    .line 626
    .local v17, lineStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 627
    .local v16, lineEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v21, 0x1

    .line 628
    .local v21, paraIsRtl:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v28, v0

    .line 630
    .local v28, runs:[I
    const/16 v27, 0x0

    .local v27, runLevel:I
    move/from16 v4, v17

    .local v4, runStart:I
    move/from16 v5, v16

    .local v5, runLimit:I
    const/16 v18, -0x1

    .line 631
    .local v18, newCaret:I
    const/16 v29, 0x0

    .line 633
    .local v29, trailing:Z
    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 634
    const/4 v3, -0x2

    .line 712
    .local v3, runIndex:I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 713
    .local v8, advance:Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 714
    .local v10, otherRunIndex:I
    if-ltz v10, :cond_18

    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 715
    aget v2, v28, v10

    add-int v11, v17, v2

    .line 716
    .local v11, otherRunStart:I
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    .line 718
    .local v12, otherRunLimit:I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 719
    move/from16 v12, v16

    .line 721
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v20, v2, 0x3f

    .line 723
    .local v20, otherRunLevel:I
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 725
    .local v13, otherRunIsRtl:Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 726
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 727
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 730
    if-eqz v8, :cond_14

    .end local v12           #otherRunLimit:I
    :goto_7
    move/from16 v0, v18

    if-ne v0, v12, :cond_16

    .line 733
    move v3, v10

    .line 734
    move/from16 v27, v20

    .line 735
    goto :goto_1

    .line 627
    .end local v3           #runIndex:I
    .end local v4           #runStart:I
    .end local v5           #runLimit:I
    .end local v8           #advance:Z
    .end local v10           #otherRunIndex:I
    .end local v11           #otherRunStart:I
    .end local v13           #otherRunIsRtl:Z
    .end local v18           #newCaret:I
    .end local v20           #otherRunLevel:I
    .end local v21           #paraIsRtl:Z
    .end local v27           #runLevel:I
    .end local v28           #runs:[I
    .end local v29           #trailing:Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 635
    .restart local v4       #runStart:I
    .restart local v5       #runLimit:I
    .restart local v18       #newCaret:I
    .restart local v21       #paraIsRtl:Z
    .restart local v27       #runLevel:I
    .restart local v28       #runs:[I
    .restart local v29       #trailing:Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 636
    move-object/from16 v0, v28

    array-length v3, v0

    .restart local v3       #runIndex:I
    goto :goto_1

    .line 640
    .end local v3           #runIndex:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #runIndex:I
    :goto_8
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 641
    aget v2, v28, v3

    add-int v4, v17, v2

    .line 642
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 643
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 644
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 645
    move/from16 v5, v16

    .line 647
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 648
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v27, v2, 0x3f

    .line 650
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 655
    add-int/lit8 v22, p1, -0x1

    .line 656
    .local v22, pos:I
    const/16 v23, 0x0

    .local v23, prevRunIndex:I
    :goto_9
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_7

    .line 657
    aget v2, v28, v23

    add-int v26, v17, v2

    .line 658
    .local v26, prevRunStart:I
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    .line 659
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v25, v26, v2

    .line 661
    .local v25, prevRunLimit:I
    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 662
    move/from16 v25, v16

    .line 664
    :cond_6
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 665
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v24, v2, 0x3f

    .line 667
    .local v24, prevRunLevel:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 669
    move/from16 v3, v23

    .line 670
    move/from16 v27, v24

    .line 671
    move/from16 v4, v26

    .line 672
    move/from16 v5, v25

    .line 673
    const/16 v29, 0x1

    .line 690
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v24           #prevRunLevel:I
    .end local v25           #prevRunLimit:I
    .end local v26           #prevRunStart:I
    :cond_7
    move-object/from16 v0, v28

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 691
    and-int/lit8 v2, v27, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 692
    .local v6, runIsRtl:Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 693
    .restart local v8       #advance:Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v29

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 695
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 699
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    move/from16 v19, v18

    .line 770
    .end local v6           #runIsRtl:Z
    .end local v18           #newCaret:I
    .local v19, newCaret:I
    :goto_e
    return v19

    .line 656
    .end local v8           #advance:Z
    .end local v19           #newCaret:I
    .restart local v18       #newCaret:I
    .restart local v22       #pos:I
    .restart local v23       #prevRunIndex:I
    .restart local v26       #prevRunStart:I
    :cond_9
    add-int/lit8 v23, v23, 0x2

    goto :goto_9

    .line 640
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v26           #prevRunStart:I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 691
    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    .line 692
    .restart local v6       #runIsRtl:Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    .restart local v8       #advance:Z
    :cond_d
    move v2, v4

    .line 693
    goto :goto_c

    :cond_e
    move v2, v4

    .line 699
    goto :goto_d

    .line 712
    .end local v6           #runIsRtl:Z
    .end local v8           #advance:Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 713
    .restart local v8       #advance:Z
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 723
    .restart local v10       #otherRunIndex:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v20       #otherRunLevel:I
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 725
    .restart local v13       #otherRunIsRtl:Z
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 727
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 730
    goto/16 :goto_7

    .line 741
    :cond_15
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 743
    if-eqz v8, :cond_17

    move/from16 v18, v11

    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_16
    :goto_f
    move/from16 v19, v18

    .line 770
    .end local v18           #newCaret:I
    .restart local v19       #newCaret:I
    goto :goto_e

    .end local v19           #newCaret:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v13       #otherRunIsRtl:Z
    .restart local v18       #newCaret:I
    .restart local v20       #otherRunLevel:I
    :cond_17
    move/from16 v18, v12

    .line 743
    goto :goto_f

    .line 748
    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    .line 752
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    .line 753
    :goto_10
    goto :goto_f

    .line 752
    :cond_19
    const/16 v18, -0x1

    goto :goto_10

    .line 764
    :cond_1a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 765
    if-eqz v8, :cond_1b

    move/from16 v18, v16

    :goto_11
    goto :goto_f

    :cond_1b
    move/from16 v18, v17

    goto :goto_11
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 27
    .parameter "offset"
    .parameter "trailing"
    .parameter "fmi"

    .prologue
    .line 446
    if-eqz p2, :cond_1

    add-int/lit8 v24, p1, -0x1

    .line 447
    .local v24, target:I
    :goto_0
    if-gez v24, :cond_2

    .line 448
    const/16 v18, 0x0

    .line 543
    :cond_0
    :goto_1
    return v18

    .end local v24           #target:I
    :cond_1
    move/from16 v24, p1

    .line 446
    goto :goto_0

    .line 451
    .restart local v24       #target:I
    :cond_2
    const/16 v18, 0x0

    .line 453
    .local v18, h:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_4

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 455
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    goto :goto_1

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_4

    .line 458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    goto :goto_1

    .line 462
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v16, v0

    .line 463
    .local v16, chars:[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v23, v0

    .line 464
    .local v23, runs:[I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    move-object/from16 v0, v23

    array-length v1, v0

    move/from16 v0, v19

    if-ge v0, v1, :cond_0

    .line 465
    aget v22, v23, v19

    .line 466
    .local v22, runStart:I
    add-int/lit8 v1, v19, 0x1

    aget v1, v23, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v21, v22, v1

    .line 467
    .local v21, runLimit:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v21

    if-le v0, v1, :cond_5

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v21, v0

    .line 470
    :cond_5
    add-int/lit8 v1, v19, 0x1

    aget v1, v23, v1

    const/high16 v3, 0x400

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 472
    .local v5, runIsRtl:Z
    :goto_3
    move/from16 v2, v22

    .line 473
    .local v2, segstart:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_9

    move/from16 v4, v22

    .local v4, j:I
    :goto_4
    move/from16 v0, v21

    if-gt v4, v0, :cond_16

    .line 474
    const/16 v17, 0x0

    .line 475
    .local v17, codept:I
    const/4 v14, 0x0

    .line 476
    .local v14, bm:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 478
    .local v13, bEmoji:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    move/from16 v0, v21

    if-ge v4, v0, :cond_6

    .line 479
    aget-char v17, v16, v4

    .line 480
    const v1, 0xd800

    move/from16 v0, v17

    if-lt v0, v1, :cond_6

    const v1, 0xdc00

    move/from16 v0, v17

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    move/from16 v0, v21

    if-ge v1, v0, :cond_6

    .line 481
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v17

    .line 482
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-char v1, v16, v4

    const v3, 0xdbb8

    if-lt v1, v3, :cond_a

    aget-char v1, v16, v4

    const v3, 0xdbbb

    if-gt v1, v3, :cond_a

    .line 485
    const/4 v13, 0x1

    .line 497
    :cond_6
    :goto_5
    move/from16 v0, v21

    if-eq v4, v0, :cond_7

    const/16 v1, 0x9

    move/from16 v0, v17

    if-eq v0, v1, :cond_7

    if-nez v14, :cond_7

    const/4 v1, 0x1

    if-ne v13, v1, :cond_c

    .line 498
    :cond_7
    move/from16 v0, v24

    if-lt v0, v2, :cond_d

    move/from16 v0, v24

    if-ge v0, v4, :cond_d

    const/16 v20, 0x1

    .line 500
    .local v20, inSegment:Z
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    :goto_7
    if-ne v1, v5, :cond_f

    const/4 v12, 0x1

    .line 501
    .local v12, advance:Z
    :goto_8
    if-eqz v20, :cond_10

    if-eqz v12, :cond_10

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 502
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float v18, v18, v1

    goto/16 :goto_1

    .line 470
    .end local v2           #segstart:I
    .end local v4           #j:I
    .end local v5           #runIsRtl:Z
    .end local v12           #advance:Z
    .end local v13           #bEmoji:Z
    .end local v14           #bm:Landroid/graphics/Bitmap;
    .end local v17           #codept:I
    .end local v20           #inSegment:Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .restart local v2       #segstart:I
    .restart local v5       #runIsRtl:Z
    :cond_9
    move/from16 v4, v21

    .line 473
    goto/16 :goto_4

    .line 487
    .restart local v4       #j:I
    .restart local v13       #bEmoji:Z
    .restart local v14       #bm:Landroid/graphics/Bitmap;
    .restart local v17       #codept:I
    :cond_a
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v17

    if-lt v0, v1, :cond_b

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v17

    if-gt v0, v1, :cond_b

    .line 488
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_5

    .line 489
    :cond_b
    const v1, 0xffff

    move/from16 v0, v17

    if-le v0, v1, :cond_6

    .line 490
    add-int/lit8 v4, v4, 0x1

    .line 473
    :cond_c
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 498
    :cond_d
    const/16 v20, 0x0

    goto :goto_6

    .line 500
    .restart local v20       #inSegment:Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    :cond_f
    const/4 v12, 0x0

    goto :goto_8

    .restart local v12       #advance:Z
    :cond_10
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 505
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v25

    .line 506
    .local v25, w:F
    if-eqz v12, :cond_11

    .end local v25           #w:F
    :goto_a
    add-float v18, v18, v25

    .line 508
    if-eqz v20, :cond_12

    .line 509
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float v18, v18, v1

    goto/16 :goto_1

    .line 506
    .restart local v25       #w:F
    :cond_11
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    goto :goto_a

    .line 512
    .end local v25           #w:F
    :cond_12
    const/16 v1, 0x9

    move/from16 v0, v17

    if-ne v0, v1, :cond_13

    .line 513
    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float v3, v3, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v18, v1, v3

    .line 517
    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    .line 522
    :cond_13
    if-eqz v14, :cond_15

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    move-result v15

    .line 524
    .local v15, bmAscent:F
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v3, v15

    mul-float/2addr v1, v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v26, v1, v3

    .line 525
    .local v26, wid:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v26

    add-float v18, v18, v1

    .line 526
    add-int/lit8 v4, v4, 0x1

    .line 538
    .end local v15           #bmAscent:F
    .end local v26           #wid:F
    :cond_14
    add-int/lit8 v2, v4, 0x1

    goto :goto_9

    .line 527
    :cond_15
    if-eqz v13, :cond_14

    .line 528
    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 531
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v4, 0x2

    move-object/from16 v6, p0

    move v7, v4

    move v10, v5

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float v18, v18, v1

    .line 532
    add-int/lit8 v4, v4, 0x1

    .line 533
    move/from16 v0, v24

    if-ne v0, v4, :cond_14

    goto/16 :goto_1

    .line 464
    .end local v12           #advance:Z
    .end local v13           #bEmoji:Z
    .end local v14           #bm:Landroid/graphics/Bitmap;
    .end local v17           #codept:I
    .end local v20           #inSegment:Z
    :cond_16
    add-int/lit8 v19, v19, 0x2

    goto/16 :goto_2
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .parameter "fmi"

    .prologue
    .line 429
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .parameter "h"

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    .line 1253
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    goto :goto_0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "limit"
    .parameter "dir"
    .parameter "directions"
    .parameter "hasTabs"
    .parameter "tabStops"

    .prologue
    .line 275
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 276
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 277
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 278
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 279
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 280
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 281
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 282
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 285
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, hasReplacement:Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 289
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 290
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 291
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 294
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 296
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 297
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 298
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v7

    new-array v7, v7, [C

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 300
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 301
    if-eqz v3, :cond_8

    .line 307
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 308
    .local v1, chars:[C
    move v4, p3

    .local v4, i:I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 309
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 310
    .local v5, inext:I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 312
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 313
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, j:I
    sub-int v2, v5, p3

    .local v2, e:I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 314
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 291
    .end local v1           #chars:[C
    .end local v2           #e:I
    .end local v4           #i:I
    .end local v5           #inext:I
    .end local v6           #j:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 294
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 308
    .restart local v1       #chars:[C
    .restart local v4       #i:I
    .restart local v5       #inext:I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 320
    .end local v1           #chars:[C
    .end local v4           #i:I
    .end local v5           #inext:I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 321
    return-void
.end method
