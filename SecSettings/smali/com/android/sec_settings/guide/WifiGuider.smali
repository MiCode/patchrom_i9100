.class final Lcom/android/sec_settings/guide/WifiGuider;
.super Lcom/android/sec_settings/guide/ListGuiderBase;
.source "WifiGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mWiFiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/sec_settings/guide/ListGuiderBase;-><init>(Landroid/app/Activity;)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/sec_settings/guide/WifiGuider;->mWiFiEnabled:Z

    .line 25
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 27
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/sec_settings/guide/WifiGuider;->mWiFiEnabled:Z

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 86
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/WifiGuider;->showCompleteDialog()V

    .line 90
    :cond_0
    return-void
.end method

.method public showHelpDialog(Z)V
    .locals 8
    .parameter "isWifiOn"

    .prologue
    const/4 v7, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/android/sec_settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 36
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/sec_settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    if-eqz p1, :cond_1

    sget-object v4, Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    :goto_0
    if-ne v5, v4, :cond_2

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    sget-object v4, Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    goto :goto_0

    .line 41
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/sec_settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/guide/GuideModeHelper;->switchMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    :cond_3
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v4}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    :goto_2
    iput-object v4, p0, Lcom/android/sec_settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    .line 48
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/app/ListActivity;

    invoke-virtual {v4}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 51
    .local v1, list:Landroid/widget/ListView;
    new-instance v4, Lcom/android/sec_settings/guide/WifiGuider$1;

    invoke-direct {v4, p0, v1}, Lcom/android/sec_settings/guide/WifiGuider$1;-><init>(Lcom/android/sec_settings/guide/WifiGuider;Landroid/widget/ListView;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v4, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 63
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 65
    .local v2, wifiApState:I
    const/16 v4, 0xc

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    .line 73
    .end local v2           #wifiApState:I
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    if-eqz p1, :cond_6

    .line 74
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04006d

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, guideView:Landroid/view/View;
    :goto_3
    invoke-super {p0, v0}, Lcom/android/sec_settings/guide/ListGuiderBase;->showDialog(Landroid/view/View;)V

    goto :goto_1

    .line 46
    .end local v0           #guideView:Landroid/view/View;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_5
    sget-object v4, Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    goto :goto_2

    .line 77
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04006c

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3
.end method
