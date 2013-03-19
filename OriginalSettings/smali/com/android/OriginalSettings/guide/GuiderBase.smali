.class abstract Lcom/android/settings/guide/GuiderBase;
.super Ljava/lang/Object;
.source "GuiderBase.java"

# interfaces
.implements Lcom/android/settings/guide/OnInternalSwitcherListener;


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

.field private mIsSwitcherOn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/guide/GuiderBase;->mIsSwitcherOn:Z

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 74
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/guide/GuiderBase;->mIsSwitcherOn:Z

    if-eq v0, p2, :cond_0

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/settings/guide/GuiderBase;->showHelpDialog(Z)V

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showCompleteDialog()V
    .locals 6

    .prologue
    .line 97
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f090d79

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090d78

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0902d8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/guide/GuiderBase$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/guide/GuiderBase$1;-><init>(Lcom/android/settings/guide/GuiderBase;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected showDialog(Landroid/view/View;)V
    .locals 2
    .parameter "guide_view"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 82
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 83
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 90
    return-void
.end method

.method public showHelpDialog(Z)V
    .locals 0
    .parameter "isSwitcherON"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/settings/guide/GuiderBase;->mIsSwitcherOn:Z

    .line 94
    return-void
.end method
