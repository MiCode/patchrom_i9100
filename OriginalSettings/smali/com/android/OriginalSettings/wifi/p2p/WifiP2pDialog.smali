.class public Lcom/android/settings/wifi/p2p/WifiP2pDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceAddress:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWpsSetupIndex:I


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040128

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b039c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 92
    .local v1, mWpsSetup:Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setInverseBackgroundForced(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f09036c

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setTitle(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0342

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b039b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v5, :cond_0

    .line 102
    const/4 v2, -0x1

    const v3, 0x7f090354

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    :cond_0
    const/4 v2, -0x2

    const v3, 0x7f090357

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v2, 0x7f0b039d

    .line 121
    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    .line 123
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
