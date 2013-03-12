.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, action:Ljava/lang/String;
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, chargePlug:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    .line 363
    .local v2, usbCharge:Z
    :goto_0
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received ACTION_POWER_DISCONNECTED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 368
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 369
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v3, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$502(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 371
    :cond_1
    return-void

    .line 361
    .end local v2           #usbCharge:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
