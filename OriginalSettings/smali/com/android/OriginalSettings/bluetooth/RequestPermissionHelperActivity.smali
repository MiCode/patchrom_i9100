.class public Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private parseIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iput-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 149
    :goto_0
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 150
    .local v1, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_2

    .line 151
    const-string v4, "RequestPermissionHelperActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 157
    .end local v1           #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    iput-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 142
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v5, 0x78

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_1

    .line 155
    .restart local v1       #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :cond_2
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 157
    goto :goto_1
.end method


# virtual methods
.method createDialog()V
    .locals 7

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x108009b

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 70
    const v3, 0x7f0b0107

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, view:Landroid/view/View;
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, tv:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    if-eqz v3, :cond_0

    .line 77
    const v3, 0x7f0b0108

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    const v3, 0x7f0b008e

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 87
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    const v3, 0x7f0b008f

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 89
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    .line 92
    return-void

    .line 79
    :cond_0
    iget v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v3, :cond_1

    .line 80
    const v3, 0x7f0b010c

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_1
    const v3, 0x7f0b010b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 163
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    .line 164
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const/4 v0, 0x0

    .line 103
    .local v0, btState:I
    const/16 v1, 0x1e

    .line 105
    .local v1, retryCount:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 106
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 112
    :cond_1
    :goto_1
    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    :cond_2
    const/16 v2, -0x3e8

    .line 127
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .local v2, returnCode:I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_0

    .line 117
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :cond_3
    const/4 v2, 0x0

    .line 119
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 122
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .end local v2           #returnCode:I
    :pswitch_1
    const/4 v2, 0x0

    .line 123
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 108
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->finish()V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    goto :goto_0
.end method
