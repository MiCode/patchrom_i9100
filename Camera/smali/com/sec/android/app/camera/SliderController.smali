.class public Lcom/sec/android/app/camera/SliderController;
.super Ljava/lang/Object;
.source "SliderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

.field private mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field mSlider:Lcom/sec/android/app/camera/widget/TwSlider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwSlider;Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;)V
    .locals 1
    .parameter "plusButton"
    .parameter "minusButton"
    .parameter "slider"
    .parameter "listener"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 42
    iput-object p2, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_1
    iput-object p4, p0, Lcom/sec/android/app/camera/SliderController;->mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

    .line 52
    iput-object p3, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    .line 53
    return-void
.end method


# virtual methods
.method public doMinus()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v0

    .line 71
    .local v0, value:I
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setSliderFocus(I)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 73
    return-void
.end method

.method public doPlus()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v0

    .line 65
    .local v0, value:I
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setSliderFocus(I)V

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SliderController;->doMinus()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SliderController;->doPlus()V

    goto :goto_0
.end method

.method public setCurrentSlider(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwSlider;->setSliderFocus(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;->OnSliderValueChange(I)V

    .line 61
    :cond_0
    return-void
.end method
