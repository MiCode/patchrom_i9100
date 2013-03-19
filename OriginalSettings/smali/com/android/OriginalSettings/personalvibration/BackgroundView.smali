.class public Lcom/android/settings/personalvibration/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;,
        Lcom/android/settings/personalvibration/BackgroundView$Stage;,
        Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    }
.end annotation


# static fields
.field static isTimerRun:Z

.field static timer:Ljava/util/Timer;


# instance fields
.field private final ADJUST_ANGLE:F

.field bm01:Landroid/graphics/Bitmap;

.field bm02:Landroid/graphics/Bitmap;

.field downtime:J

.field handler:Landroid/os/Handler;

.field private mBG:Landroid/graphics/RectF;

.field private mBigOval:Landroid/graphics/RectF;

.field mHandler:Landroid/os/Handler;

.field private mPaints:[Landroid/graphics/Paint;

.field private mPauseSweep:F

.field mSizeChanged:Z

.field private mSmallOval:Landroid/graphics/RectF;

.field private mStart:F

.field private mSweep:F

.field patternString:Ljava/lang/String;

.field pressedValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/personalvibration/BackgroundView$floatValue;",
            ">;"
        }
    .end annotation
.end field

.field stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field startTime:J

.field uptime:J

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 35
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 39
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 40
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 35
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 39
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 40
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 35
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 39
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 40
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "oval"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 154
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 154
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 167
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 168
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 167
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 173
    :cond_2
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 183
    .end local v6           #i:I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_6

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 191
    :cond_5
    :goto_4
    return-void

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_5

    .line 188
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4
.end method


# virtual methods
.method public getPatternString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternString is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .locals 3

    .prologue
    .line 338
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method init(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getMeasuredHeight()I

    move-result v1

    .line 96
    .local v1, Height:I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getMeasuredWidth()I

    move-result v3

    .line 97
    .local v3, Width:I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canvas height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v4, 0x6

    new-array v4, v4, [Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    .line 100
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    aput-object v5, v4, v9

    .line 101
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    int-to-double v5, v1

    const-wide/high16 v7, 0x4029

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v10

    .line 108
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v13

    .line 113
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v13

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v13

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v11

    .line 117
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v7, v7, v11

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v6, v4, v5

    .line 122
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v6, v4, v5

    .line 125
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    mul-int/lit8 v4, v1, 0xb

    div-int/lit16 v4, v4, 0x90

    int-to-float v0, v4

    .line 129
    .local v0, BigOvalOffset:F
    div-int/lit8 v4, v1, 0x1d

    int-to-float v2, v4

    .line 130
    .local v2, SmallOvalOffset:F
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v0

    int-to-float v6, v1

    sub-float/2addr v6, v0

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    .line 131
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v2

    int-to-float v6, v1

    sub-float/2addr v6, v2

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    .line 134
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    .line 137
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    .line 139
    sput-boolean v9, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02043f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020445

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    .line 144
    new-instance v4, Landroid/os/SystemVibrator;

    invoke-direct {v4}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    .line 145
    sget-object v4, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 147
    return-void
.end method

.method public isTimerRunning()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const v5, 0x3fe66666

    const/4 v4, 0x2

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    .line 195
    iget-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/personalvibration/BackgroundView;->init(Landroid/graphics/Canvas;)V

    .line 197
    iput-boolean v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 203
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 204
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 205
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 210
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 211
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 212
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 346
    const-string v4, "PersonalVibration"

    const-string v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v5, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v4, v5, :cond_1

    .line 349
    :cond_0
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() isTimerRunning() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v4, 0x0

    .line 401
    :goto_0
    return v4

    .line 355
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 357
    .local v0, action:I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(), action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    packed-switch v0, :pswitch_data_0

    .line 401
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 362
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button click started : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    const-wide/16 v5, 0x2710

    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 365
    iget-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 372
    :goto_2
    new-instance v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    invoke-direct {v2}, Lcom/android/settings/personalvibration/BackgroundView$floatValue;-><init>()V

    .line 373
    .local v2, temp:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    .line 374
    const/high16 v4, -0x4080

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 375
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    .end local v2           #temp:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    goto :goto_2

    .line 381
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 382
    .local v1, i:I
    if-ltz v1, :cond_2

    .line 384
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 385
    .local v3, temp2:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 387
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, temp2.up : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 392
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button clicked ended, clicked time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 397
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    .line 328
    return-void
.end method

.method public setPauseTimer()V
    .locals 3

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 273
    const-string v0, "PersonalVibration"

    const-string v1, "setPauseTimer, timer has already stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->validateLastValue()Z

    .line 278
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 279
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 280
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 282
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 286
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 287
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    .line 291
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 293
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 289
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    goto :goto_1
.end method

.method public setRunPlayTimer()V
    .locals 6

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 238
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 240
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 243
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunPlayTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    return-void
.end method

.method public setRunRecordingTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 220
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 222
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 223
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 226
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 227
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 231
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 233
    :cond_0
    return-void
.end method

.method public setStopTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 248
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 250
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 253
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 254
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 256
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 257
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 259
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 260
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 262
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 264
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    .line 268
    return-void
.end method

.method public validateLastValue()Z
    .locals 7

    .prologue
    const/high16 v4, 0x43b4

    .line 305
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 306
    .local v0, i:I
    if-gez v0, :cond_0

    .line 307
    const/4 v2, 0x0

    .line 323
    :goto_0
    return v2

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 310
    .local v1, temp2:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 311
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 312
    iput v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 316
    :goto_1
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 318
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 321
    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateLastValue(), missing last click up value is added now. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 314
    :cond_2
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    goto :goto_1
.end method
