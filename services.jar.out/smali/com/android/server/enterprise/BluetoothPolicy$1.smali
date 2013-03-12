.class Lcom/android/server/enterprise/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/BluetoothPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/enterprise/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 128
    .local v1, state:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    #getter for: Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z
    invoke-static {v2}, Lcom/android/server/enterprise/BluetoothPolicy;->access$000(Lcom/android/server/enterprise/BluetoothPolicy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "BluetoothPolicyService"

    const-string v3, "***** Restarting Bluetooth *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->access$002(Lcom/android/server/enterprise/BluetoothPolicy;Z)Z

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 134
    .end local v1           #state:I
    :cond_0
    return-void
.end method
