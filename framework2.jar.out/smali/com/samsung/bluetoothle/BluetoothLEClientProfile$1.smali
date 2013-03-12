.class Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;
.super Landroid/os/Handler;
.source "BluetoothLEClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;


# direct methods
.method constructor <init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 68
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->onConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0           #address:Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 78
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->onDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
