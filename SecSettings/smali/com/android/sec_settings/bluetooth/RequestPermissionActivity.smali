.class public Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 74
    new-instance v0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v1, 0x7f0900b7

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-boolean v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_1

    .line 158
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 174
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 177
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 179
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 181
    :cond_0
    return-void

    .line 163
    :cond_1
    iget v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 164
    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    :goto_1
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 167
    :cond_2
    const v1, 0x7f0900b9

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 255
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 256
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    iput-boolean v2, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 276
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 277
    .local v1, manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_4

    .line 278
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 284
    .end local v1           #manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 258
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 263
    const-string v4, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v4, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_0

    .line 266
    :cond_2
    iput v7, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 269
    :cond_3
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    goto :goto_1

    .line 282
    .restart local v1       #manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    :cond_4
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 284
    goto :goto_1
.end method

.method private proceedAndFinish()V
    .locals 7

    .prologue
    .line 225
    iget-boolean v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_2

    .line 227
    const/4 v0, -0x1

    .line 242
    .local v0, returnCode:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 246
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 248
    return-void

    .line 228
    .end local v0           #returnCode:I
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {p0, v1, v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 233
    iget v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 235
    .restart local v0       #returnCode:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 239
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

    .line 185
    if-eq p1, v1, :cond_0

    .line 186
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

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 207
    :goto_0
    return-void

    .line 191
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 199
    :cond_1
    iput-boolean v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 201
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 299
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 216
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 210
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
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getState()I

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
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    const-class v1, Lcom/android/sec_settings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    iget-boolean v1, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    iput-boolean v3, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 137
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->createDialog()V

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
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    :cond_0
    return-void
.end method
