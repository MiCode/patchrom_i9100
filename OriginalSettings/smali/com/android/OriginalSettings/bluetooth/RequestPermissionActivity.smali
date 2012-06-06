.class public Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 74
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v1, 0x7f0b0107

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_0

    .line 158
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 174
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 176
    return-void

    .line 163
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_1

    .line 164
    const v1, 0x7f0b010a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    :goto_1
    const v1, 0x7f0b008e

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    const v1, 0x7f0b008f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 167
    :cond_1
    const v1, 0x7f0b0109

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    iput-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 271
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 272
    .local v1, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_4

    .line 273
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 279
    .end local v1           #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 253
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 258
    const-string v4, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v4, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_0

    .line 261
    :cond_2
    iput v7, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 264
    :cond_3
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    goto :goto_1

    .line 277
    .restart local v1       #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :cond_4
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 279
    goto :goto_1
.end method

.method private proceedAndFinish()V
    .locals 7

    .prologue
    .line 220
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_2

    .line 222
    const/4 v0, -0x1

    .line 237
    .local v0, returnCode:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 241
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 243
    return-void

    .line 223
    .end local v0           #returnCode:I
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {p0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 228
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 230
    .restart local v0       #returnCode:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    .end local v0           #returnCode:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #returnCode:I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 180
    if-eq p1, v1, :cond_0

    .line 181
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 187
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 194
    :cond_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 293
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onBackPressed()V

    .line 294
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 211
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 105
    packed-switch v0, :pswitch_data_0

    .line 146
    const-string v1, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown adapter state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    const-class v1, Lcom/android/OriginalSettings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    iput-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 137
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 285
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    :cond_0
    return-void
.end method
