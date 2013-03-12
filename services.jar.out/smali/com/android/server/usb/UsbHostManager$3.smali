.class Lcom/android/server/usb/UsbHostManager$3;
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
    .line 524
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 21
    .parameter "event"

    .prologue
    .line 527
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "USB HOST DEVICE UEVENT: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/usb/UsbHostManager;->access$600(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 530
    :try_start_0
    const-string v17, "DEVPATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, devPath:Ljava/lang/String;
    const-string v17, "ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, action:Ljava/lang/String;
    const-string v17, "DEVTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, devtype:Ljava/lang/String;
    const-string v17, "DEVICE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, device:Ljava/lang/String;
    const-string v17, "PRODUCT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 535
    .local v14, product:Ljava/lang/String;
    const-string v17, "TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 536
    .local v16, type:Ljava/lang/String;
    const-string v17, "INTERFACE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 538
    .local v13, interfac:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onUEvent(device) :: action = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", devtype = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", device = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", product = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", interface = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", devpath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :try_start_1
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 545
    .local v15, tok:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v2, v15, v17

    .line 546
    .local v2, Class:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v4, v15, v17

    .line 547
    .local v4, SubClass:Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v3, v15, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    .local v3, Protocal:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    .end local v2           #Class:Ljava/lang/String;
    .end local v3           #Protocal:Ljava/lang/String;
    .end local v4           #SubClass:Ljava/lang/String;
    .end local v15           #tok:[Ljava/lang/String;
    :goto_0
    return-void

    .line 551
    .restart local v2       #Class:Ljava/lang/String;
    .restart local v3       #Protocal:Ljava/lang/String;
    .restart local v4       #SubClass:Ljava/lang/String;
    .restart local v15       #tok:[Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    :try_start_3
    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 552
    .local v10, iClass:I
    const/16 v17, 0x1

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 553
    .local v12, iSubClass:I
    const/16 v17, 0x2

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 555
    .local v11, iProtocal:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10, v12, v11}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 562
    .end local v2           #Class:Ljava/lang/String;
    .end local v3           #Protocal:Ljava/lang/String;
    .end local v4           #SubClass:Ljava/lang/String;
    .end local v10           #iClass:I
    .end local v11           #iProtocal:I
    .end local v12           #iSubClass:I
    .end local v15           #tok:[Ljava/lang/String;
    :goto_1
    :try_start_4
    monitor-exit v18

    goto :goto_0

    .end local v5           #action:Ljava/lang/String;
    .end local v6           #devPath:Ljava/lang/String;
    .end local v7           #device:Ljava/lang/String;
    .end local v8           #devtype:Ljava/lang/String;
    .end local v13           #interfac:Ljava/lang/String;
    .end local v14           #product:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 556
    .restart local v5       #action:Ljava/lang/String;
    .restart local v6       #devPath:Ljava/lang/String;
    .restart local v7       #device:Ljava/lang/String;
    .restart local v8       #devtype:Ljava/lang/String;
    .restart local v13       #interfac:Ljava/lang/String;
    .restart local v14       #product:Ljava/lang/String;
    .restart local v16       #type:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 557
    .local v9, e:Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could not parse state or devPath from event "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 558
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 559
    .local v9, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ArrayIndexOutOfBoundsException "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
