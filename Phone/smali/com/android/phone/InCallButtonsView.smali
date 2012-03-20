.class public Lcom/android/phone/InCallButtonsView;
.super Landroid/widget/FrameLayout;
.source "InCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private inCallControlState:Lcom/android/phone/InCallControlState;

.field private mAddButton:Landroid/widget/Button;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCallEndIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHDVideoButton:Landroid/widget/Button;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mHoldButtonContainer:Landroid/view/View;

.field private mHoldButtonLabel:Landroid/widget/TextView;

.field private mHoldIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallSaveButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/InCallButtonsViewLand;

.field private mMergeIcon:Landroid/graphics/drawable/Drawable;

.field private mMultiCallButton:Landroid/widget/ImageButton;

.field private mMultiCallButtonContainer:Landroid/view/View;

.field private mMultiCallButtonLabel:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionView:Landroid/widget/ImageView;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mRecordButton:Landroid/widget/Button;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordIcon:Landroid/graphics/drawable/Drawable;

.field private mStopRecordIcon:Landroid/graphics/drawable/Drawable;

.field private mSwapIcon:Landroid/graphics/drawable/Drawable;

.field private mUnholdIcon:Landroid/graphics/drawable/Drawable;

.field private mVoiceCallEqView:Landroid/widget/ImageView;

.field private mWebExButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallButtonsView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 104
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0900f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0900e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f0900f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0900f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0900f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0900f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0900f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 125
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0900f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 129
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0900e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    .line 132
    const v0, 0x7f0900ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    .line 133
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0900eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonContainer:Landroid/view/View;

    .line 137
    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    .line 138
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    const v0, 0x7f0900e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0900e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 464
    const-string v0, "InCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method


# virtual methods
.method disableInCallControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 457
    const-string v0, "support_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 460
    :cond_0
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040024

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 179
    sget-boolean v1, Lcom/android/phone/InCallButtonsView;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Inflate In call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02030d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020300

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020303

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02030b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mStartRecordIcon:Landroid/graphics/drawable/Drawable;

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mStopRecordIcon:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020371

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 197
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 407
    .local v1, id:I
    sget-boolean v4, Lcom/android/phone/InCallButtonsView;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 409
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 439
    const-string v4, "InCallButtonsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: unexpected click: View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    :goto_0
    const v4, 0x7f0900ea

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 443
    :cond_2
    return-void

    .line 427
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 430
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 431
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, phoneNumber:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 433
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900e6 -> :sswitch_0
        0x7f0900ea -> :sswitch_0
        0x7f0900ed -> :sswitch_0
        0x7f0900ef -> :sswitch_0
        0x7f0900f0 -> :sswitch_0
        0x7f0900f1 -> :sswitch_0
        0x7f0900f2 -> :sswitch_0
        0x7f0900f3 -> :sswitch_0
        0x7f0900f4 -> :sswitch_0
        0x7f0900f5 -> :sswitch_1
        0x7f0900f6 -> :sswitch_0
        0x7f0900f7 -> :sswitch_0
        0x7f0900f8 -> :sswitch_0
        0x7f090120 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 203
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 12
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 206
    iget v7, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    if-eq v7, p2, :cond_0

    .line 207
    iput p2, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 208
    iget v7, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    const/4 v5, 0x1

    .line 210
    .local v5, isPortrait:Z
    :goto_0
    if-eqz v5, :cond_e

    .line 211
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 212
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    .line 226
    .end local v5           #isPortrait:Z
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 228
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 229
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 230
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 231
    .local v1, bgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 233
    .local v6, isWebExEnabled:Z
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 235
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v7, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_1

    .line 236
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v7, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 238
    :cond_1
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    if-eqz v6, :cond_10

    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    :goto_3
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    if-eqz v6, :cond_14

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 248
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    :cond_2
    :goto_5
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 287
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v7, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v7

    if-nez v7, :cond_1a

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 291
    :goto_7
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 293
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v7, :cond_1c

    .line 297
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v8, 0x7f0e01c9

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 298
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_8
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 308
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v7, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 309
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const v8, 0x7f0e03b0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 310
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mStartRecordIcon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_3
    :goto_9
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canMute:Z

    if-eqz v7, :cond_1e

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_1e

    const/4 v7, 0x1

    :goto_a
    invoke-virtual {v8, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 320
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 323
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 324
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 327
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v7, :cond_4

    .line 331
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v7, :cond_20

    .line 332
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v8, 0x7f0e01c6

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 338
    :goto_c
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 341
    :cond_4
    const-string v7, "support_multi_call"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 342
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_22

    .line 343
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v7, v8, :cond_21

    .line 344
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v8, 0x7f0e043e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 360
    :cond_5
    :goto_d
    sget-boolean v7, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    if-eqz v7, :cond_24

    .line 361
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 364
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 372
    :cond_6
    :goto_e
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v7, :cond_7

    .line 373
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v7, :cond_8

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_9

    .line 377
    :cond_8
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "limited_service_state_for_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 389
    :cond_a
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    :cond_b
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    if-eqz v7, :cond_c

    .line 393
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    const-string v7, "voice_call_equalizer"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_c

    .line 396
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoiceCallEq()Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mVoiceCallEqView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    :cond_c
    return-void

    .line 208
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #bgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v4           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v6           #isWebExEnabled:Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 215
    .restart local v5       #isPortrait:Z
    :cond_e
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-nez v7, :cond_f

    .line 216
    const v7, 0x7f0900f9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/InCallButtonsViewLand;

    iput-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    .line 217
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v7}, Lcom/android/phone/InCallButtonsViewLand;->initialize()V

    .line 219
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v7, :cond_0

    .line 220
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 221
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    goto/16 :goto_1

    .line 238
    .end local v5           #isPortrait:Z
    .restart local v0       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v1       #bgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v3       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v6       #isWebExEnabled:Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 242
    :cond_11
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    if-eqz v6, :cond_12

    const/16 v7, 0x8

    :goto_10
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v7, :cond_13

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_13

    const/4 v7, 0x1

    :goto_11
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 242
    :cond_12
    const/4 v7, 0x0

    goto :goto_10

    .line 243
    :cond_13
    const/4 v7, 0x0

    goto :goto_11

    .line 245
    :cond_14
    const/16 v7, 0x8

    goto/16 :goto_4

    .line 257
    :cond_15
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_18

    .line 258
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, canSaveCall:Z
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v2, :cond_16

    const/16 v7, 0x8

    :goto_12
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 260
    :cond_16
    const/4 v7, 0x0

    goto :goto_12

    .line 262
    :cond_17
    const/16 v7, 0x8

    goto :goto_13

    .line 266
    .end local v2           #canSaveCall:Z
    :cond_18
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_19

    const/4 v7, 0x0

    :goto_14
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_19
    const/4 v7, 0x1

    goto :goto_14

    .line 287
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 289
    :cond_1b
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_7

    .line 302
    :cond_1c
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v8, 0x7f0e01c8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 303
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 312
    :cond_1d
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const v8, 0x7f0e03b1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 313
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/InCallButtonsView;->mStopRecordIcon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 319
    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 327
    :cond_1f
    const/16 v7, 0x8

    goto/16 :goto_b

    .line 335
    :cond_20
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v8, 0x7f0e01c5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c

    .line 346
    :cond_21
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v7, v8, :cond_5

    .line 347
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v8, 0x7f0e0440

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_d

    .line 350
    :cond_22
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_5

    .line 351
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v7, v8, :cond_23

    .line 352
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v8, 0x7f0e043e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_d

    .line 354
    :cond_23
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v7, v8, :cond_5

    .line 355
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallButtonsView;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v8, 0x7f0e043f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_d

    .line 366
    :cond_24
    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mMultiCallButtonContainer:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 396
    :cond_25
    const/16 v7, 0x8

    goto/16 :goto_f
.end method
