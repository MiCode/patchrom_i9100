.class Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment$2;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, deviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothNameDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting device name to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    #calls: Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->access$100(Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 159
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_1
    return-void
.end method
