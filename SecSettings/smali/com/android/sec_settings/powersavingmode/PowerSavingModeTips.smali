.class public Lcom/android/sec_settings/powersavingmode/PowerSavingModeTips;
.super Landroid/app/Fragment;
.source "PowerSavingModeTips.java"


# instance fields
.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/sec_settings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/sec_settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/powersavingmode/PowerSavingModeTips;->mSupportBrowser:Z

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0b01ca

    const/16 v7, 0x8

    .line 46
    const v5, 0x7f0400a4

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 52
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/sec_settings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, mBackgroundTips:Landroid/widget/TextView;
    const v5, 0x7f0909b8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 57
    .end local v0           #mBackgroundTips:Landroid/widget/TextView;
    :cond_0
    iget-boolean v5, p0, Lcom/android/sec_settings/powersavingmode/PowerSavingModeTips;->mSupportBrowser:Z

    if-eqz v5, :cond_1

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    :goto_1
    return-object v4

    .line 58
    :cond_1
    const v5, 0x7f0b01c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, mBackgroundTipsTitle:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .restart local v0       #mBackgroundTips:Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 67
    .end local v0           #mBackgroundTips:Landroid/widget/TextView;
    .end local v1           #mBackgroundTipsTitle:Landroid/widget/TextView;
    :cond_2
    const v5, 0x7f0b01cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, mHapticTipsTitle:Landroid/widget/TextView;
    const v5, 0x7f0b01cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, mHapticTips:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
