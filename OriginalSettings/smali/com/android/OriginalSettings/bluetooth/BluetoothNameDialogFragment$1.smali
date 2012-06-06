.class Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    goto :goto_0

    .line 79
    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->dismiss()V

    goto :goto_0
.end method
