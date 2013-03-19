.class public Lcom/sec/android/app/camera/widget/TwSlider;
.super Landroid/widget/RelativeLayout;
.source "TwSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;
    }
.end annotation


# instance fields
.field protected mFocusSliderBarImageResourceId:I

.field protected mFocusSliderBarMarginTop:I

.field protected mFocusSliderBarWidth:I

.field protected mFocusSliderPosition:I

.field protected mNumberOfGauge:I

.field protected mSliderBarImageResourceId:I

.field protected mSliderBarImageWidth:I

.field protected mSliderBarMarginTop:I

.field protected mSliderFocusImageHeight:I

.field protected mSliderFocusImageWidth:I

.field protected mSliderGuages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mSliderImageHeight:I

.field protected mSliderImageWidth:I

.field protected mSliderLayoutWidth:I

.field private mSliderValueChangedListener:Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderGuages:Ljava/util/List;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderValueChangedListener:Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;

    .line 71
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSlider;->init(Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderGuages:Ljava/util/List;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderValueChangedListener:Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;

    .line 66
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSlider;->init(Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwSlider:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, attr:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7f0201ed

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageResourceId:I

    .line 84
    const/4 v1, 0x1

    const v2, 0x7f0201ee

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarImageResourceId:I

    .line 87
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mNumberOfGauge:I

    .line 90
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderLayoutWidth:I

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageWidth:I

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarWidth:I

    .line 99
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarMarginTop:I

    .line 103
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarMarginTop:I

    .line 107
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderImageWidth:I

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderImageHeight:I

    .line 110
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderFocusImageWidth:I

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderFocusImageHeight:I

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void
.end method

.method private initSliderLayout()V
    .locals 6

    .prologue
    .line 118
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderLayoutWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mNumberOfGauge:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 119
    .local v3, width:F
    const/4 v1, 0x1

    .local v1, ix:I
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mNumberOfGauge:I

    if-gt v1, v4, :cond_0

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, imageView:Landroid/widget/ImageView;
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageResourceId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 124
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderImageWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderImageHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 128
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarMarginTop:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderGuages:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentSliderPosition()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwSlider;->initAttrs(Landroid/util/AttributeSet;)V

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwSlider;->initSliderLayout()V

    .line 77
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnSliderValueChangedListener(Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;)V
    .locals 0
    .parameter "sliderValueChangedListener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderValueChangedListener:Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;

    .line 170
    return-void
.end method

.method public setSliderFocus(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 135
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mNumberOfGauge:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderGuages:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    .local v0, currentImageView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    .local v1, currentlp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageWidth:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 142
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarMarginTop:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderImageWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderImageHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageResourceId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v0           #currentImageView:Landroid/widget/ImageView;
    .end local v1           #currentlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    .line 149
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderGuages:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderBarImageWidth:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 153
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarMarginTop:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderFocusImageHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderFocusImageWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderBarImageResourceId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderValueChangedListener:Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mSliderValueChangedListener:Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSlider;->mFocusSliderPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/widget/TwSlider$OnSliderValueChangedListener;->onSliderValueChanged(I)V

    goto :goto_0
.end method
