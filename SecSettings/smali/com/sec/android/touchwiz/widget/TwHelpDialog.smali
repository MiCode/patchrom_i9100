.class public Lcom/sec/android/touchwiz/widget/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHelpDialog$1;,
        Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const v0, 0x7f100031

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 29
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    .line 30
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 49
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090d80

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    .line 55
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setCancelable(Z)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 79
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 80
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 85
    :cond_0
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog$1;->$SwitchMap$com$sec$android$touchwiz$widget$TwHelpDialog$TouchMode:[I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    :cond_1
    :goto_0
    if-eq v0, v5, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_3

    .line 118
    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 120
    :cond_3
    return v4

    .line 87
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 90
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    if-eqz v1, :cond_5

    if-eq v0, v3, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 100
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    if-eq v0, v3, :cond_1

    .line 102
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .parameter "pShowWrongInputToast"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    .line 68
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;)V
    .locals 0
    .parameter "touchTransparencyMode"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    .line 60
    return-void
.end method
