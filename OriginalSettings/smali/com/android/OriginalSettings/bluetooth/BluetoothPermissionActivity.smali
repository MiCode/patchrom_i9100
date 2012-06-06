.class public Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRememberChoice:Landroid/widget/CheckBox;

.field private mRememberChoiceValue:Z

.field private mRememberMapChoice:Landroid/widget/CheckBox;

.field private mRememberMapChoiceValue:Z

.field private mReturnClass:Ljava/lang/String;

.field private mReturnPackage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    .line 65
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    return p1
.end method

.method private createConnectionDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createConnectionDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createConnectionDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0b0472

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    const v2, 0x7f0b0112

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 157
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createMapDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createMapDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoice:Landroid/widget/CheckBox;

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$3;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createMapDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0b0472

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_0
    const v2, 0x7f0b0117

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 175
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPhonebookDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createPhonebookDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    .line 195
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$2;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createPhonebookDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0b0472

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_0
    const v2, 0x7f0b0114

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 166
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 79
    return-void
.end method

.method private onNegative()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 252
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegative mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->saveMapPermissionChoice(I)V

    .line 260
    :cond_1
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 264
    return-void
.end method

.method private onPositive()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositive mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    .line 238
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 249
    return-void

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->saveMapPermissionChoice(I)V

    .line 242
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method private saveMapPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    .line 327
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 328
    .local v0, bluetoothManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 330
    .local v2, cachedDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 331
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setMapPermissionChoice(I)V

    .line 332
    return-void
.end method

.method private savePhonebookPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    .line 319
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 320
    .local v0, bluetoothManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 322
    .local v2, cachedDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 323
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 324
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    if-eqz p3, :cond_1

    .line 279
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 283
    return-void

    .line 274
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private showConnectionDialog()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 119
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 120
    const v1, 0x7f0b0110

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 121
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createConnectionDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 122
    const v1, 0x7f0b008e

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    const v1, 0x7f0b008f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 128
    return-void
.end method

.method private showMapDialog()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 146
    const v1, 0x7f0b0116

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 147
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createMapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 148
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 149
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 150
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 151
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 152
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 154
    return-void
.end method

.method private showPhonebookDialog()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 132
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 133
    const v1, 0x7f0b0113

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 134
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 135
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 136
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 141
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    .line 311
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    .line 312
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 286
    packed-switch p2, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 288
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->setFinishOnTouchOutside(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    const-string v3, "BluetoothPermissionActivity"

    const-string v4, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 96
    const-string v3, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 97
    const-string v3, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 98
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 101
    .local v2, requestType:I
    if-ne v2, v6, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->showConnectionDialog()V

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iput-boolean v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    goto :goto_0

    .line 103
    :cond_1
    if-ne v2, v4, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->showPhonebookDialog()V

    goto :goto_1

    .line 105
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->showMapDialog()V

    goto :goto_1

    .line 108
    :cond_3
    const-string v3, "BluetoothPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 302
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 306
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method
