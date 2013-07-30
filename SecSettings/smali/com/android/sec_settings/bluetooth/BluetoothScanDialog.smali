.class public Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;
.super Landroid/app/Activity;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mBtScanDialog:Z


# instance fields
.field mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "BluetoothScanDialog"

    const-string v1, "onClick :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f04001a

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-static {p0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    .line 37
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "BluetoothScanDialog"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_1
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothScanDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from bluetooth_scan_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_0

    .line 41
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    .line 46
    const v1, 0x7f0901b5

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->setTitle(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 66
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 67
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 71
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 81
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 83
    :cond_0
    return-void
.end method
