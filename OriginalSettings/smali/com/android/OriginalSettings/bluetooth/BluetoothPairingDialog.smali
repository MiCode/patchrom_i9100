.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mType:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 295
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 296
    const v1, 0x7f0b01f0

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 298
    const v1, 0x7f0b01fa

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 299
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 300
    const v1, 0x7f0b01fb

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 301
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 302
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 303
    return-void
.end method

.method private createConsentDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 307
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 308
    const v1, 0x7f0b01f0

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 309
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 310
    const v1, 0x7f0b01fa

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 311
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 312
    const v1, 0x7f0b01fb

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 313
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 314
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 315
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 4
    .parameter "deviceManager"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 320
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 321
    const v2, 0x7f0b01f0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 322
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 323
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 324
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 325
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 329
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 333
    .local v1, pinBytes:[B
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView(Ljava/lang/String;)Landroid/view/View;
    .locals 13
    .parameter "deviceName"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f040015

    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 217
    .local v7, view:Landroid/view/View;
    const v8, 0x7f080027

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 218
    .local v5, messageView:Landroid/widget/TextView;
    const v8, 0x7f08002e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 219
    .local v6, messageView2:Landroid/widget/TextView;
    const v8, 0x7f08002d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 220
    .local v0, alphanumericPin:Landroid/widget/CheckBox;
    const v8, 0x7f08002b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 221
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 244
    const-string v8, "BluetoothPairingDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 259
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return-object v7

    .line 229
    .restart local v7       #view:Landroid/view/View;
    :pswitch_0
    const v2, 0x7f0b01f1

    .line 230
    .local v2, messageId1:I
    const v3, 0x7f0b01f5

    .line 232
    .local v3, messageId2:I
    const/16 v1, 0x10

    .line 249
    .local v1, maxLength:I
    :goto_1
    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-virtual {p0, v2, v8}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, messageText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 253
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-array v9, v12, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 256
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 236
    .end local v1           #maxLength:I
    .end local v2           #messageId1:I
    .end local v3           #messageId2:I
    .end local v4           #messageText:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0b01f2

    .line 237
    .restart local v2       #messageId1:I
    const v3, 0x7f0b01f6

    .line 239
    .restart local v3       #messageId2:I
    const/4 v1, 0x6

    .line 240
    .restart local v1       #maxLength:I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .parameter "deviceManager"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 202
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 203
    const v1, 0x7f0b01f0

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 204
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createPinEntryView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 205
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 206
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 207
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 208
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 211
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 212
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method private createView(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;
    .locals 10
    .parameter "deviceManager"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040014

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 264
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, name:Ljava/lang/String;
    const v5, 0x7f080027

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    .local v1, messageView:Landroid/widget/TextView;
    iget v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 286
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not creating view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 290
    .end local v3           #view:Landroid/view/View;
    :goto_0
    return-object v3

    .line 270
    .restart local v3       #view:Landroid/view/View;
    :pswitch_0
    const v4, 0x7f0b01f7

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, messageText:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f0b01f8

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 281
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f0b01f9

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private destroyNotification()V
    .locals 2

    .prologue
    .line 446
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 447
    .local v0, manager:Landroid/app/NotificationManager;
    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 448
    return-void
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->destroyNotification()V

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 401
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->destroyNotification()V

    .line 365
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 394
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 368
    .local v1, pinBytes:[B
    if-eqz v1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 375
    .end local v1           #pinBytes:[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, passkey:I
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 381
    .end local v0           #passkey:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 390
    :pswitch_4
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    :cond_0
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 429
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 437
    if-eqz p2, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 411
    packed-switch p2, :pswitch_data_0

    .line 422
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 425
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, -0x8000

    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 111
    .local v5, pm:Landroid/os/PowerManager;
    const v6, 0x3000001a

    const-string v7, "BluetoothPairingDialog"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    const-string v6, "BluetoothPairingDialog"

    invoke-virtual {v5, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    const/16 v6, 0xa

    const-string v7, "BluetoothPairingDialog"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 115
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 120
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 198
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 127
    .local v2, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_1

    .line 128
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Error: BluetoothAdapter not supported by system"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 134
    .local v0, deviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 135
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 138
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 140
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 144
    :cond_2
    iget v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 184
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    :cond_3
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 151
    :pswitch_1
    const-string v6, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 153
    .local v4, passkey:I
    if-ne v4, v8, :cond_4

    .line 154
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_4
    const-string v6, "%06d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 163
    .end local v4           #passkey:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createConsentDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 168
    :pswitch_3
    const-string v6, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 170
    .local v3, pairingKey:I
    if-ne v3, v8, :cond_5

    .line 171
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_5
    iget v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 175
    const-string v6, "%06d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 179
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 177
    :cond_6
    const-string v6, "%04d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 350
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->destroyNotification()V

    .line 353
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 354
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 404
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 407
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 433
    return-void
.end method
