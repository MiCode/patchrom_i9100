.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mOkButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 69
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 88
    .local v0, localManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 89
    return-void
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "deviceName"

    .prologue
    const/4 v4, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040041

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 130
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-array v3, v4, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/OriginalSettings/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/android/OriginalSettings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 134
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 139
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$3;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    iget-boolean v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    if-eqz v6, :cond_1

    .line 198
    iput-boolean v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 199
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v3, 0x0

    .line 202
    .local v3, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 203
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_3
    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 212
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 213
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq v2, v3, :cond_4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, deviceName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 95
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 98
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$2;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 116
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 152
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 153
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 154
    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 160
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v5, :cond_2

    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, spaceNum:I
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 163
    .local v3, length:I
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, deviceName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 167
    add-int/lit8 v4, v4, 0x1

    .line 165
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 172
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eq v3, v4, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #spaceNum:I
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v5, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void

    .line 172
    .end local v1           #filter:Landroid/content/IntentFilter;
    .restart local v0       #deviceName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #spaceNum:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 121
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 224
    return-void
.end method

.method updateDeviceName()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    return-void
.end method
