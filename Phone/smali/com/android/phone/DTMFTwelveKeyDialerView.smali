.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# instance fields
.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mLandscape:Landroid/view/View;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 103
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 104
    packed-switch v0, :pswitch_data_0

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getDialerOrientationView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 89
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    if-ne v1, v0, :cond_0

    .line 90
    .local v0, isPortrait:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    :goto_1
    return-object v1

    .line 89
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    .restart local v0       #isPortrait:Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    goto :goto_1
.end method

.method resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V
    .locals 4
    .parameter "dialer"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 72
    iput p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 75
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 1
    .parameter "dialer"

    .prologue
    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 65
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    .line 66
    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    .line 67
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V

    .line 68
    return-void
.end method
