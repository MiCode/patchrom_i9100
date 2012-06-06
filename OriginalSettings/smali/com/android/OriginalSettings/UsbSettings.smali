.class public Lcom/android/OriginalSettings/UsbSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayState:Z

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 66
    new-instance v0, Lcom/android/OriginalSettings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/UsbSettings$1;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Lcom/android/OriginalSettings/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/UsbSettings$2;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mDisplayState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/UsbSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/UsbSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/UsbSettings;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/UsbSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/OriginalSettings/UsbSettings;->setDefaultMode()V

    return-void
.end method

.method private setDefaultMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 294
    const-string v0, "ptp"

    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ptp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private switchDisplay(Z)V
    .locals 3
    .parameter "usbStorageInUse"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, actionBar:Landroid/app/ActionBar;
    const v1, 0x7f0b0706

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 114
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 115
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 117
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 118
    const-string v1, "UsbSettings"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f0b070d

    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return-object v0

    .line 196
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b070e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/UsbSettings$5;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/UsbSettings$5;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0706

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b070c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/UsbSettings$6;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/UsbSettings$6;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03c4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0485

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b070f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b070e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/UsbSettings$7;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/UsbSettings$7;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 125
    const v1, 0x7f04009a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mMountButton:Landroid/widget/Button;

    .line 128
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mMountButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/OriginalSettings/UsbSettings$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/UsbSettings$3;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    .line 151
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/OriginalSettings/UsbSettings$4;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/UsbSettings$4;-><init>(Lcom/android/OriginalSettings/UsbSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f0801e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 158
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/UsbSettings;->mDisplayState:Z

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 174
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/UsbSettings;->switchDisplay(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/UsbSettings;->mDisplayState:Z

    .line 182
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "UsbSettings"

    const-string v2, "Failed to read UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
