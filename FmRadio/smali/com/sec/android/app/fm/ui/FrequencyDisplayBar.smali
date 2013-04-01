.class public Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;
.super Landroid/widget/ImageView;
.source "FrequencyDisplayBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
    }
.end annotation


# instance fields
.field final CENTER_OFFSET_X:F

.field final CENTER_OFFSET_Y:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCountTimer:Landroid/os/CountDownTimer;

.field private mCurrentFrequencyPosition:J

.field private mDegree:F

.field private mDialerPaint:Landroid/graphics/Paint;

.field private mDrawingPointCircleRadius:D

.field private mFreqBar:Landroid/graphics/Bitmap;

.field private mFreqBgImageHeight:I

.field private mFreqBgImageWidth:I

.field private mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

.field private mFrequencyPosition:J

.field private mPreviousFrequencyPosition:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_X:F

    .line 26
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_Y:F

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDrawingPointCircleRadius:D

    .line 40
    new-instance v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;-><init>(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getBitmapImage()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_X:F

    .line 26
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_Y:F

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDrawingPointCircleRadius:D

    .line 40
    new-instance v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;-><init>(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    .line 90
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDialerPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDialerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getBitmapImage()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$114(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V

    return-void
.end method

.method private calculateFrequencyPosition()V
    .locals 3

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    long-to-float v0, v0

    const v1, 0x46002000

    sub-float/2addr v0, v1

    const v1, 0x3df5c28f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " calculateFrequencyPosition mDegree = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method private getBitmapImage()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020056

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageWidth:I

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageHeight:I

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    const/4 v0, 0x0

    .line 150
    :cond_0
    return-void
.end method

.method private setAnimationToFreqBar()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setAnimationToFreqBar mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPreviousFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 116
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 119
    return-void
.end method

.method private setCenterXY()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 172
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterX:F

    .line 173
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterY:F

    .line 174
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "isFreqLog"

    .prologue
    .line 196
    if-nez p2, :cond_0

    .line 197
    const-string v0, "FrequencyDisplayBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterX:F

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 131
    const/high16 v0, 0x4334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    neg-float v1, v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDrawingPointCircleRadius:D

    double-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    neg-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDialerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, maxHeight:I
    const/4 v2, 0x0

    .line 181
    .local v2, maxWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 184
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 187
    :cond_0
    invoke-static {v2, p1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setMeasuredDimension(II)V

    .line 189
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 165
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

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setCenterXY()V

    .line 167
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V

    .line 168
    return-void
.end method

.method public setFrequency(JZ)V
    .locals 3
    .parameter "frequency"
    .parameter "isAnimation"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setFrequency mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

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

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 99
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    .line 100
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    .line 101
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J

    .line 103
    if-eqz p3, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setAnimationToFreqBar()V

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->invalidate()V

    .line 110
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;->onFrequencyChanged(J)V

    goto :goto_0
.end method

.method public setOnFrequencyChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    .line 74
    return-void
.end method
