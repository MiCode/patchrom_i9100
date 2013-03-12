.class Lcom/android/server/usb/UsbHostManager$2;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 443
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB HOST UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v1, "ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, action:Ljava/lang/String;
    const-string v1, "DEVPATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, devPath:Ljava/lang/String;
    const-string v1, "STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 448
    .local v14, state:Ljava/lang/String;
    const-string v1, "SWITCH_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 449
    .local v13, name:Ljava/lang/String;
    const-string v1, "SWITCH_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 454
    .local v15, switchState:Ljava/lang/String;
    const-string v1, "add"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$200(Lcom/android/server/usb/UsbHostManager;)V

    .line 458
    :cond_0
    const-string v1, "remove"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->nNotiCount:I
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x108008a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "Unknown"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 459
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/usb/UsbHostManager;->nNotiCount:I
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbHostManager;->access$302(Lcom/android/server/usb/UsbHostManager;I)I

    .line 465
    .end local v12           #i:I
    :cond_2
    const-string v1, "change"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v14, :cond_4

    const-string v1, "/devices/virtual/host_notify"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    :try_start_0
    const-string v1, "ADD"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->removeMessages(I)V

    .line 473
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$200(Lcom/android/server/usb/UsbHostManager;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x104065d

    const/4 v3, 0x0

    const v4, 0x10806d6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "Cable"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbHostManager;->RemoveCableNotification()V

    .line 519
    :cond_4
    :goto_1
    return-void

    .line 481
    :cond_5
    const-string v1, "REMOVE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 482
    const-wide/16 v1, 0xfa0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x104065e

    const/4 v3, 0x0

    const v4, 0x10806d6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "Cable"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbHostManager;->RemoveCableNotification()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 515
    :catch_0
    move-exception v11

    .line 516
    .local v11, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse state or devPath from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 490
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :cond_6
    :try_start_1
    const-string v1, "OVERCURRENT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x104065a

    const v3, 0x104065b

    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "OVERCURRENT"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$308(Lcom/android/server/usb/UsbHostManager;)I

    goto :goto_1

    .line 498
    :cond_7
    const-string v1, "UNKNOWN"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x104065c

    const/4 v3, 0x0

    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "UNKNOWN"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$308(Lcom/android/server/usb/UsbHostManager;)I

    goto/16 :goto_1

    .line 506
    :cond_8
    const-string v1, "LOWBATT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x10403ed

    const/4 v3, 0x0

    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "LOWBATT"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$308(Lcom/android/server/usb/UsbHostManager;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
