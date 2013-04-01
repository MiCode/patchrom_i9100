.class public Lcom/sec/android/app/fm/ui/FrequencyDialer;
.super Landroid/widget/ImageView;
.source "FrequencyDialer.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;,
        Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
    }
.end annotation


# instance fields
.field final CENTER_OFFSET_X:F

.field final CENTER_OFFSET_Y:F

.field final CIRCLE_RADIUS_OFFSET:F

.field private final POSITION_DIAL:I

.field private final POSITION_NONE:I

.field private final POSITION_POWER:I

.field private isStart:Z

.field mAnimation:Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;

.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentFrequencyPosition:J

.field private mDialFocus:Landroid/graphics/Bitmap;

.field private mDialPoint:Landroid/graphics/Bitmap;

.field private mDialerHeight:F

.field private mDialerPaint:Landroid/graphics/Paint;

.field private mDialerWidth:I

.field private mDownPosition:I

.field private mDrawingPointCircleRadius:D

.field private mFrequency:J

.field private mIsFocused:Z

.field private mIsLock:Z

.field private mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

.field private mPointVisible:Z

.field private mPreviousFrequencyPosition:J

.field private mStartInitialDegree:F

.field private powerPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_X:F

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_Y:F

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CIRCLE_RADIUS_OFFSET:F

    .line 59
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 82
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerWidth:I

    .line 83
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerHeight:F

    .line 88
    iput v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_NONE:I

    .line 89
    const/16 v0, 0xc9

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_POWER:I

    .line 90
    const/16 v0, 0xca

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_DIAL:I

    .line 91
    iput v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    .line 540
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPointVisible:Z

    .line 616
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsLock:Z

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->initCompassView()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_X:F

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_Y:F

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CIRCLE_RADIUS_OFFSET:F

    .line 59
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 82
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerWidth:I

    .line 83
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerHeight:F

    .line 88
    iput v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_NONE:I

    .line 89
    const/16 v0, 0xc9

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_POWER:I

    .line 90
    const/16 v0, 0xca

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_DIAL:I

    .line 91
    iput v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    .line 540
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPointVisible:Z

    .line 616
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsLock:Z

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->initCompassView()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_X:F

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_Y:F

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CIRCLE_RADIUS_OFFSET:F

    .line 59
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 82
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerWidth:I

    .line 83
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerHeight:F

    .line 88
    iput v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_NONE:I

    .line 89
    const/16 v0, 0xc9

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_POWER:I

    .line 90
    const/16 v0, 0xca

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->POSITION_DIAL:I

    .line 91
    iput v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    .line 540
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPointVisible:Z

    .line 616
    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsLock:Z

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->initCompassView()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/ui/FrequencyDialer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPreviousFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCurrentFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/ui/FrequencyDialer;J)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/ui/FrequencyDialer;)Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/ui/FrequencyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    return v0
.end method

.method private calculateDegree(FFFF)F
    .locals 6
    .parameter "circleX"
    .parameter "circleY"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/high16 v5, 0x43b4

    .line 219
    sub-float v1, p1, p3

    float-to-double v1, v1

    sub-float v3, p4, p2

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 220
    .local v0, degree:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "degree : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 221
    add-float v1, v5, v0

    rem-float/2addr v1, v5

    return v1
.end method

.method private calculatePositionFreqOfDialerPoint(J)F
    .locals 3
    .parameter "freq"

    .prologue
    .line 206
    long-to-float v1, p1

    const v2, 0x46002000

    sub-float/2addr v1, v2

    const v2, 0x3df5c28f

    mul-float v0, v1, v2

    .line 208
    .local v0, degree:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " calculatePositionFreqOfDialerPoint degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 209
    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    .line 210
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setCenterXY()V

    .line 212
    return v0
.end method

.method private calculatePositionOfDialerPoint(FFF)F
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "degree"

    .prologue
    .line 181
    const v3, 0x46002000

    const v4, 0x453b8000

    mul-float/2addr v4, p3

    const/high16 v5, 0x43b4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-long v3, v3

    iput-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 184
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_0

    .line 186
    const-wide/16 v1, 0x0

    .line 187
    .local v1, tempDigit:J
    iget-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    const-wide/16 v5, 0xa

    rem-long v1, v3, v5

    .line 189
    iget-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x2

    mul-long/2addr v7, v1

    const-wide/16 v9, 0xa

    rem-long/2addr v7, v9

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 195
    .end local v1           #tempDigit:J
    :goto_0
    iget-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F

    move-result v0

    .line 197
    .local v0, newDegree:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePositionOfDialerPoint degree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " freq : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 200
    return v0

    .line 192
    .end local v0           #newDegree:F
    :cond_0
    iget-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    const-wide/16 v5, 0x5

    add-long/2addr v3, v5

    const-wide/16 v5, 0xa

    div-long/2addr v3, v5

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    goto :goto_0
.end method

.method private drawDialer(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    neg-float v1, v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDrawingPointCircleRadius:D

    double-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 236
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getFocusedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialFocus:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialFocus:Landroid/graphics/Bitmap;

    .line 245
    :cond_0
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialFocus:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialFocus:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    neg-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialFocus:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    neg-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 250
    :cond_1
    return-void
.end method

.method private getBitmapImage()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method

.method private getFocusedState()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsFocused:Z

    return v0
.end method

.method private initCompassView()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getBitmapImage()V

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerWidth:I

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerHeight:F

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    const/4 v0, 0x0

    .line 146
    :cond_0
    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CIRCLE_RADIUS_OFFSET:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDrawingPointCircleRadius:D

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 148
    return-void
.end method

.method private isIgnoreSpace(FFI)Z
    .locals 7
    .parameter "touchX"
    .parameter "touchY"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x4248

    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, isFMPlayerOn:Z
    :try_start_0
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    const/4 v1, 0x1

    .line 315
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIgnoreSpace touchX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " touchY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFMPlayerOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCenterX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCenterY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 331
    iget v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    sub-float/2addr v4, v6

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    add-float/2addr v4, v6

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    sub-float/2addr v4, v6

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    add-float/2addr v4, v6

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPointVisible:Z

    if-nez v4, :cond_5

    .line 335
    :cond_2
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v4, :cond_4

    if-ne p3, v3, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    if-eqz v4, :cond_4

    .line 341
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setPressState(Z)V

    .line 347
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    move v2, v3

    .line 355
    :goto_2
    return v2

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 312
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    if-nez p3, :cond_3

    .line 344
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setPressState(Z)V

    goto :goto_1

    .line 351
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setPressState(Z)V

    goto :goto_2
.end method

.method private isOnTouching(Z)V
    .locals 5
    .parameter "isTouch"

    .prologue
    const v3, 0x7f02004e

    const/4 v4, 0x0

    .line 510
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v1, :cond_0

    .line 511
    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 522
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    .line 530
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 531
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private judgeDirection(F)V
    .locals 4
    .parameter "degree"

    .prologue
    .line 125
    const/4 v0, -0x1

    .line 126
    .local v0, action:I
    iput p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 128
    iget-boolean v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    iget-wide v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onDegreeChanged(JI)V

    .line 131
    :cond_0
    return-void
.end method

.method private setCenterXY()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 156
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    .line 157
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialerHeight:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->CENTER_OFFSET_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCenterXY mCenterX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCenterY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method private setPressState(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    if-eq v0, p1, :cond_0

    .line 366
    iput-boolean p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    .line 368
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->powerPressed:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchPower(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchPower(I)V

    goto :goto_0
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsLock:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsLock:Z

    .line 620
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 554
    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "isFreqLog"

    .prologue
    .line 557
    if-nez p2, :cond_0

    .line 558
    const-string v0, "FrequencyDialer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "cv"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPointVisible:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->drawDialer(Landroid/graphics/Canvas;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "state"

    .prologue
    .line 608
    iput-boolean p2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsFocused:Z

    .line 609
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 174
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setCenterXY()V

    .line 175
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mStartInitialDegree:F

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionOfDialerPoint(FFF)F

    .line 176
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0xca

    const/16 v8, 0xc9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isIgnoreSpace(FFI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 395
    iput v8, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 398
    iput-boolean v6, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 399
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 400
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    if-eq v2, v8, :cond_2

    .line 401
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    if-ne v2, v9, :cond_1

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    .line 502
    :cond_1
    :goto_0
    return v6

    .line 407
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 412
    :cond_3
    :try_start_0
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 422
    iput-boolean v6, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 423
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 432
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 416
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 417
    :catch_1
    move-exception v2

    goto :goto_1

    .line 424
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 425
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 426
    invoke-direct {p0, v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->clearAnimation()V

    .line 430
    :cond_6
    iput v9, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    goto :goto_2

    .line 437
    :cond_7
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    iget v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculateDegree(FFFF)F

    move-result v0

    .line 439
    .local v0, degree:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent degree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 441
    const/high16 v2, 0x43a1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 443
    iput-boolean v6, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 444
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 446
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    if-eq v2, v8, :cond_1

    .line 455
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    goto/16 :goto_0

    .line 449
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 450
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 451
    invoke-direct {p0, v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 453
    iput v9, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    goto :goto_3

    .line 457
    :cond_a
    const/high16 v2, 0x4260

    cmpg-float v2, v0, v2

    if-gez v2, :cond_d

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_c

    .line 459
    iput-boolean v6, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 460
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 462
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    if-eq v2, v8, :cond_1

    .line 471
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    goto/16 :goto_0

    .line 465
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_b

    .line 466
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 467
    invoke-direct {p0, v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 469
    iput v9, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    goto :goto_4

    .line 475
    :cond_d
    const/high16 v2, 0x439c

    cmpl-float v2, v0, v2

    if-lez v2, :cond_10

    .line 476
    const/high16 v0, 0x439c

    .line 480
    :cond_e
    :goto_5
    iget-boolean v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    if-eqz v2, :cond_f

    .line 481
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 483
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_11

    .line 484
    iput-boolean v6, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 485
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 496
    :goto_6
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    if-eq v2, v8, :cond_1

    .line 498
    iget v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterX:F

    iget v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCenterY:F

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionOfDialerPoint(FFF)F

    move-result v0

    .line 499
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->judgeDirection(F)V

    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    goto/16 :goto_0

    .line 477
    :cond_10
    const/high16 v2, 0x4284

    cmpg-float v2, v0, v2

    if-gez v2, :cond_e

    .line 478
    const/high16 v0, 0x4284

    goto :goto_5

    .line 486
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_13

    .line 487
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    .line 488
    invoke-direct {p0, v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->clearAnimation()V

    .line 492
    :cond_12
    iput v9, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDownPosition:I

    goto :goto_6

    .line 494
    :cond_13
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    goto :goto_6
.end method

.method public setFrequency(JZ)V
    .locals 5
    .parameter "freq"
    .parameter "isAnimation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setFrequency mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAnimation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;Z)V

    .line 256
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPreviousFrequencyPosition:J

    .line 257
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 258
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCurrentFrequencyPosition:J

    .line 259
    if-eqz p3, :cond_3

    .line 260
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPreviousFrequencyPosition:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-interface {v0, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->clearAnimation()V

    .line 265
    :cond_0
    new-instance v0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;-><init>(Lcom/sec/android/app/fm/ui/FrequencyDialer;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mAnimation:Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mAnimation:Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->setDuration(J)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mAnimation:Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z

    if-eqz v0, :cond_5

    .line 280
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 286
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 287
    return-void

    .line 269
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onFreqChanged(J)V

    goto :goto_0

    .line 273
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_4

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onFreqChanged(J)V

    goto :goto_0

    .line 282
    :cond_5
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    goto :goto_1
.end method

.method public setOnDegreeChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    .line 104
    return-void
.end method

.method public showPoint()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPointVisible:Z

    .line 549
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->clearAnimation()V

    .line 634
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCurrentFrequencyPosition:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    .line 635
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onFreqChanged(J)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    .line 640
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mIsLock:Z

    .line 623
    return-void
.end method

.method public updateDialPointState(Z)V
    .locals 4
    .parameter "isFMPlayerOn"

    .prologue
    const/4 v3, 0x0

    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isOnTouching(Z)V

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 301
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer;->mDialPoint:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
