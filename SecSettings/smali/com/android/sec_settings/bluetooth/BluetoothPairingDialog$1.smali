.class Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, bondState:I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 95
    .end local v1           #bondState:I
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    const-string v3, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 91
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0
.end method
