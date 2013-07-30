.class public final Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final DBG:Z

.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    .line 55
    const/high16 v0, -0x8000

    sput v0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 66
    sget v1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 67
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 72
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    .line 74
    invoke-virtual {p2}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/sec_settings/bluetooth/DevicePickerActivity;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v1, :cond_2

    .line 76
    :cond_1
    const v1, 0x7f0400ab

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    const v5, 0x7f0900ae

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    :cond_0
    const v5, 0x7f0900a2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f0900a1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;)V

    .line 268
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/sec_settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 270
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 370
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 371
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 388
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    const v4, 0x7f02011c

    .line 407
    :goto_0
    return v4

    .line 374
    :sswitch_0
    const v4, 0x7f020123

    goto :goto_0

    .line 377
    :sswitch_1
    const v4, 0x7f020112

    goto :goto_0

    .line 380
    :sswitch_2
    invoke-static {v0}, Lcom/android/sec_settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_0

    .line 383
    :sswitch_3
    const v4, 0x7f02012e

    goto :goto_0

    .line 391
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    const v4, 0x7f02011d

    goto :goto_0

    .line 395
    :cond_1
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 399
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    .line 400
    .local v2, profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 401
    .local v4, resId:I
    if-eqz v4, :cond_3

    goto :goto_0

    .line 407
    .end local v2           #profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;
    .end local v4           #resId:I
    :cond_4
    const v4, 0x7f020114

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 13

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    .line 282
    .local v1, cachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    const/4 v9, 0x0

    .line 283
    .local v9, profileConnected:Z
    const/4 v0, 0x0

    .line 284
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 287
    .local v3, headsetNotConnected:Z
    const/4 v5, 0x0

    .line 288
    .local v5, isA2dpConnected:Z
    const/4 v6, 0x0

    .line 289
    .local v6, isHeadsetConnected:Z
    const/4 v7, 0x0

    .line 291
    .local v7, isHidConnected:Z
    sget-boolean v10, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "BluetoothDevicePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getConnectionSummary() device name::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;

    .line 293
    .local v8, profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v8}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 294
    .local v2, connectionStatus:I
    const-string v10, "BluetoothDevicePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "profile ::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  connectionStatus::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-static {v2}, Lcom/android/sec_settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v10

    .line 364
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v10

    .line 301
    .restart local v2       #connectionStatus:I
    .restart local v8       #profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;
    :pswitch_1
    const-string v10, "BluetoothDevicePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " profile Connected"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v9, 0x1

    .line 303
    instance-of v10, v8, Lcom/android/sec_settings/bluetooth/A2dpProfile;

    if-eqz v10, :cond_2

    .line 304
    const/4 v5, 0x1

    .line 306
    :cond_2
    instance-of v10, v8, Lcom/android/sec_settings/bluetooth/HeadsetProfile;

    if-eqz v10, :cond_3

    .line 307
    const/4 v6, 0x1

    .line 309
    :cond_3
    instance-of v10, v8, Lcom/android/sec_settings/bluetooth/HidProfile;

    if-eqz v10, :cond_1

    .line 310
    const/4 v7, 0x1

    goto :goto_0

    .line 343
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-eqz v9, :cond_9

    .line 344
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 345
    const v10, 0x7f090b73

    goto :goto_1

    .line 346
    :cond_5
    if-eqz v5, :cond_6

    .line 347
    const v10, 0x7f0901f0

    goto :goto_1

    .line 348
    :cond_6
    if-eqz v6, :cond_7

    .line 349
    const v10, 0x7f0901f1

    goto :goto_1

    .line 350
    :cond_7
    if-eqz v7, :cond_8

    .line 351
    const v10, 0x7f0901f6

    goto :goto_1

    .line 353
    :cond_8
    const v10, 0x7f0900a5

    goto :goto_1

    .line 357
    :cond_9
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 364
    const/4 v10, 0x0

    goto :goto_1

    .line 359
    :pswitch_2
    const v10, 0x7f0900ad

    goto :goto_1

    .line 361
    :pswitch_3
    const v10, 0x7f090b74

    goto :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 357
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901c6

    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 218
    instance-of v0, p1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 223
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public dismissDisconnectDialog()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 110
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 158
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 163
    const v3, 0x7f0b01d7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, deviceDetails:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/sec_settings/bluetooth/DevicePickerActivity;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v3, :cond_4

    .line 169
    :cond_1
    const v3, 0x7f0b01d6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 170
    .local v1, divider:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    .end local v1           #divider:Landroid/widget/ImageView;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 188
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 189
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 190
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 191
    const v3, -0xff6601

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .end local v2           #title:Landroid/widget/TextView;
    :cond_3
    return-void

    .line 177
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_4
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xff

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    :cond_5
    sget v3, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 200
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 230
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 234
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method onClickedForHeadset()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 244
    .local v0, bondState:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 6

    .prologue
    .line 119
    sget-boolean v3, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothDevicePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceAttributesChanged for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v2

    .line 123
    .local v2, summaryResId:I
    const-string v3, "BluetoothDevicePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is my device connected::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v2, :cond_2

    .line 125
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "summaryResId != 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v1

    .line 133
    .local v1, iconResId:I
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_2
    return-void

    .line 128
    .end local v1           #iconResId:I
    :cond_2
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "summaryResId else part"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    .restart local v1       #iconResId:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothDevicePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error has occurred during notifyHierarchyChanged():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 96
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 97
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 101
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 91
    return-void
.end method
