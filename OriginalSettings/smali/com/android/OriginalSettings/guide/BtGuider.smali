.class final Lcom/android/settings/guide/BtGuider;
.super Lcom/android/settings/guide/ListGuiderBase;
.source "BtGuider.java"


# instance fields
.field private mBTEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/guide/ListGuiderBase;-><init>(Landroid/app/Activity;)V

    .line 16
    iput-boolean v1, p0, Lcom/android/settings/guide/BtGuider;->mBTEnabled:Z

    .line 20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 21
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/guide/BtGuider;->mBTEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public showHelpDialog(Z)V
    .locals 6
    .parameter "isBluetoothOn"

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 30
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    :goto_0
    if-ne v3, v2, :cond_2

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 30
    :cond_1
    sget-object v2, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    goto :goto_0

    .line 35
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideModeHelper;->switchMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    :cond_3
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    :goto_2
    iput-object v2, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/app/ListActivity;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 45
    .local v1, list:Landroid/widget/ListView;
    new-instance v2, Lcom/android/settings/guide/BtGuider$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/guide/BtGuider$1;-><init>(Lcom/android/settings/guide/BtGuider;Landroid/widget/ListView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    if-eqz p1, :cond_5

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040066

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, guideView:Landroid/view/View;
    :goto_3
    invoke-super {p0, v0}, Lcom/android/settings/guide/ListGuiderBase;->showDialog(Landroid/view/View;)V

    goto :goto_1

    .line 40
    .end local v0           #guideView:Landroid/view/View;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_4
    sget-object v2, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    goto :goto_2

    .line 59
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040065

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3
.end method
