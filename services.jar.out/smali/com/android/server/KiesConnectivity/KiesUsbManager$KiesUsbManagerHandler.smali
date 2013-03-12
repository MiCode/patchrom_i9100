.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 193
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 237
    const-string v2, "KiesUsbManager"

    const-string v3, "SCSI -> unknow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 196
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 197
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.online"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.offline"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :sswitch_2
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.time_stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    goto :goto_0

    .line 213
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 214
    .local v0, bEnabled_ACM:Z
    if-nez v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 216
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    .line 217
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.time_reset"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0           #bEnabled_ACM:Z
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 224
    .restart local v0       #bEnabled_ACM:Z
    if-nez v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "mass_storage,acm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 226
    const-string v2, "KiesUsbManager"

    const-string v3, "Enabled_ACM -> mass_storage,acm"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v0           #bEnabled_ACM:Z
    :sswitch_5
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x1388 -> :sswitch_2
        0x1770 -> :sswitch_3
        0x1b58 -> :sswitch_4
        0x1f40 -> :sswitch_5
    .end sparse-switch
.end method
