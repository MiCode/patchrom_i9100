.class Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity$1;
.super Landroid/os/Handler;
.source "BluetoothEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 112
    :pswitch_0
    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "Received BT_ENABLING_TIMEOUT msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;->finish()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
