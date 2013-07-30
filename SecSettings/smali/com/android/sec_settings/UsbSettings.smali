.class public Lcom/android/sec_settings/UsbSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisplayState:Z

.field private mHandler:Landroid/os/Handler;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUSBConnected:Z

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 87
    new-instance v0, Lcom/android/sec_settings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/UsbSettings$1;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/sec_settings/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/UsbSettings$2;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/android/sec_settings/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/UsbSettings$3;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/UsbSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/sec_settings/UsbSettings;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/sec_settings/UsbSettings;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/sec_settings/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/sec_settings/UsbSettings;->mUSBConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/sec_settings/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/sec_settings/UsbSettings;->mUSBConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/sec_settings/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/sec_settings/UsbSettings;->mDisplayState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/sec_settings/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/sec_settings/UsbSettings;->mDisplayState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/sec_settings/UsbSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/sec_settings/UsbSettings;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/UsbSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/UsbSettings;)Landroid/os/storage/StorageEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/sec_settings/UsbSettings;->setDefaultMode()V

    return-void
.end method

.method private setDefaultMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 316
    const-string v0, "ptp"

    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ptp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

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

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 124
    .local v0, actionBar:Landroid/app/ActionBar;
    const v1, 0x7f090906

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 126
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 128
    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 130
    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 131
    const-string v1, "UsbSettings"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f09090d

    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-object v0

    .line 224
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09090e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/sec_settings/UsbSettings$7;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/UsbSettings$7;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090906

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09090c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/sec_settings/UsbSettings$8;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/UsbSettings$8;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09050d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905e3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09090f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09090e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/sec_settings/UsbSettings$9;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/UsbSettings$9;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 222
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
    .line 138
    const v1, 0x7f0400f8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b02af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    .line 141
    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/sec_settings/UsbSettings$4;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/UsbSettings$4;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v1, 0x7f0b02b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    .line 159
    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/sec_settings/UsbSettings$5;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/UsbSettings$5;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v1, 0x7f0b02b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 167
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 211
    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/sec_settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/sec_settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/UsbSettings;->mDisplayState:Z

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/sec_settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v1, Lcom/android/sec_settings/UsbSettings$6;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/UsbSettings$6;-><init>(Lcom/android/sec_settings/UsbSettings;)V

    .line 204
    .local v1, handler:Landroid/os/Handler;
    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    return-void
.end method
