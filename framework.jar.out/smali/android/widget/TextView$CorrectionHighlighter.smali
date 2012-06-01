.class Landroid/widget/TextView$CorrectionHighlighter;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectionHighlighter"
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x190


# instance fields
.field private mEnd:I

.field private mFadingStartTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 6126
    iput-object p1, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    .line 6121
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 6127
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 6128
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6129
    return-void
.end method

.method static synthetic access$400(Landroid/widget/TextView$CorrectionHighlighter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6119
    invoke-direct {p0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    return-void
.end method

.method private invalidate(Z)V
    .locals 10
    .parameter "delayed"

    .prologue
    .line 6186
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 6203
    :goto_0
    return-void

    .line 6188
    :cond_0
    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v9

    monitor-enter v9

    .line 6189
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6191
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    .line 6192
    .local v7, left:I
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x1

    #calls: Landroid/widget/TextView;->getVerticalOffset(Z)I
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$800(Landroid/widget/TextView;Z)I

    move-result v1

    add-int v8, v0, v1

    .line 6194
    .local v8, top:I
    if-eqz p1, :cond_1

    .line 6195
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const-wide/16 v1, 0x10

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v7

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v7

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->postInvalidateDelayed(JIIII)V

    .line 6202
    :goto_1
    monitor-exit v9

    goto :goto_0

    .end local v7           #left:I
    .end local v8           #top:I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6199
    .restart local v7       #left:I
    .restart local v8       #top:I
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    invoke-static {}, Landroid/widget/TextView;->access$700()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->postInvalidate(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 6206
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$902(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;

    .line 6207
    return-void
.end method

.method private updatePaint()Z
    .locals 9

    .prologue
    .line 6160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/TextView$CorrectionHighlighter;->mFadingStartTime:J

    sub-long v2, v5, v7

    .line 6161
    .local v2, duration:J
    const-wide/16 v5, 0x190

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 6168
    :goto_0
    return v5

    .line 6163
    :cond_0
    const/high16 v5, 0x3f80

    long-to-float v6, v2

    const/high16 v7, 0x43c8

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 6164
    .local v0, coef:F
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static {v5}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 6165
    .local v4, highlightColorAlpha:I
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static {v5}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v0

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    add-int v1, v5, v6

    .line 6167
    .local v1, color:I
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6168
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private updatePath()Z
    .locals 6

    .prologue
    .line 6172
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v1, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6173
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 6182
    :goto_0
    return v4

    .line 6176
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6177
    .local v2, length:I
    iget v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6178
    .local v3, start:I
    iget v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6180
    .local v0, end:I
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 6181
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6182
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 3
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v2, 0x0

    .line 6142
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->updatePath()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->updatePaint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6143
    if-eqz p2, :cond_0

    .line 6144
    int-to-float v0, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6147
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6149
    if-eqz p2, :cond_1

    .line 6150
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6152
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    .line 6157
    :goto_0
    return-void

    .line 6154
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->stopAnimation()V

    .line 6155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    goto :goto_0
.end method

.method public highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 6132
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    .line 6133
    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    .line 6134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mFadingStartTime:J

    .line 6136
    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    if-gez v0, :cond_1

    .line 6137
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->stopAnimation()V

    .line 6139
    :cond_1
    return-void
.end method
