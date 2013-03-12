.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 273
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 276
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 279
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 282
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 285
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    .line 288
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 294
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    .line 297
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    .line 300
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleUserChanged(I)V

    goto :goto_0

    .line 303
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 306
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handlePcwInfoChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 309
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 312
    :sswitch_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleShortcutWidgetUpdate(ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    invoke-static {v1, v2, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    goto :goto_0

    .line 315
    :sswitch_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCallUpdate(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V

    goto :goto_0

    .line 318
    :sswitch_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedMsgUpdate(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V

    goto :goto_0

    .line 321
    :sswitch_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCallDelete()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 324
    :sswitch_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedMsgDelete(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 327
    :sswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGoToUnlockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 330
    :sswitch_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCsSimStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_2
        0x130 -> :sswitch_3
        0x131 -> :sswitch_4
        0x132 -> :sswitch_5
        0x133 -> :sswitch_6
        0x134 -> :sswitch_7
        0x135 -> :sswitch_8
        0x136 -> :sswitch_9
        0x137 -> :sswitch_c
        0x138 -> :sswitch_d
        0x139 -> :sswitch_b
        0x13a -> :sswitch_e
        0x13b -> :sswitch_f
        0x13c -> :sswitch_10
        0x13d -> :sswitch_11
        0x13e -> :sswitch_a
        0x143 -> :sswitch_13
        0x1f5 -> :sswitch_12
    .end sparse-switch
.end method
