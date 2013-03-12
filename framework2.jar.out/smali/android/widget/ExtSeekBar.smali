.class public Landroid/widget/ExtSeekBar;
.super Landroid/widget/SeekBar;
.source "ExtSeekBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableChangeColor:Z

.field private mOffsetThumb:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private msetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 36
    iput-object p1, p0, Landroid/widget/ExtSeekBar;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private updateDrawable()V
    .locals 4

    .prologue
    const v3, 0x108093f

    const/high16 v2, 0x4320

    .line 72
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_1
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 85
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 89
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108096a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_3
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x41a8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 112
    :cond_5
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public isEnableChangeColor()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    return v0
.end method

.method public setChangeSeekbarColor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 49
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 50
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 42
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 44
    return-void
.end method

.method public setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 69
    :cond_0
    return-void
.end method
