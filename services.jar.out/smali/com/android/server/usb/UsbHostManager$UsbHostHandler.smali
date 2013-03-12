.class Lcom/android/server/usb/UsbHostManager$UsbHostHandler;
.super Landroid/os/Handler;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbHostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 808
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 809
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const v3, 0x10806d6

    const/4 v1, 0x0

    .line 812
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 823
    :goto_0
    return-void

    .line 814
    :pswitch_0
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage -> CABLE_UPDATE_STATE Notification Removed!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->this$0:Lcom/android/server/usb/UsbHostManager;

    new-instance v7, Ljava/lang/String;

    const-string v2, "Cable"

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move v2, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :pswitch_1
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage -> USBDEVICE_UPDATE_STATE Notification Removed!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->this$0:Lcom/android/server/usb/UsbHostManager;

    new-instance v7, Ljava/lang/String;

    const-string v2, "UsbDevices"

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move v2, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
