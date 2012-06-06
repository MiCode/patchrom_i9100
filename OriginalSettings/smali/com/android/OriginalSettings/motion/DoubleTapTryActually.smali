.class public Lcom/android/OriginalSettings/motion/DoubleTapTryActually;
.super Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;
.source "DoubleTapTryActually.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mIsListenerRegistered:Z

.field private mMainScreen:Landroid/widget/FrameLayout;

.field private nonTouchLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->close_dialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->finish_tutorial()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->registerListener()V

    return-void
.end method

.method private close_dialog()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    .line 202
    return-void
.end method

.method private finish_tutorial()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->close_dialog()V

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->unregisterListener()V

    .line 208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->finish()V

    .line 209
    return-void
.end method

.method private declared-synchronized registerListener()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mIsListenerRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterListener()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mIsListenerRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public createDialog(I)V
    .locals 10
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 135
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->unregisterListener()V

    .line 137
    iget-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 138
    iget-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    iput-object v7, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    .line 143
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 146
    .local v4, mContext:Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 148
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 149
    .local v3, layout:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;-><init>(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    iget-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 195
    iget-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 196
    return-void

    .line 151
    :pswitch_0
    const v6, 0x7f04009c

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 152
    const v6, 0x7f0b07f6

    new-instance v7, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$2;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$2;-><init>(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    const v6, 0x7f0b07f7

    new-instance v7, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$3;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$3;-><init>(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 164
    :pswitch_1
    const v6, 0x7f040043

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 165
    const v6, 0x7f080027

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 166
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f080095

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 167
    .local v1, imgView:Landroid/widget/ImageView;
    const v6, 0x7f020034

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    const v6, 0x7f0b07f1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x7f0b0807

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v6, 0x7f0b07d8

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 170
    const v6, 0x7f0b07f4

    new-instance v7, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$4;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$4;-><init>(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v6, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 46
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f0801c7

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMainScreen:Landroid/widget/FrameLayout;

    .line 50
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->nonTouchLayout:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->nonTouchLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 52
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->nonTouchLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 53
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMainScreen:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->nonTouchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 55
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, infoButton:Landroid/widget/ImageButton;
    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 58
    new-instance v1, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$1;-><init>(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->nonTouchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 65
    const-string v1, "motion_recognition"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v1, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 88
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mAlertDialog:Landroid/app/AlertDialog;

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mIsListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->unregisterListener()V

    .line 95
    :cond_1
    sput-object v1, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 96
    return-void
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 126
    const-string v0, "DoubleTapTryActually"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->createDialog(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->onPause()V

    .line 80
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->unregisterListener()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->registerListener()V

    .line 74
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->onWindowFocusChanged(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 104
    :cond_0
    return-void
.end method
