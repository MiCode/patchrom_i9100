.class Lcom/android/phone/CellBroadcastSms$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSms;


# direct methods
.method private constructor <init>(Lcom/android/phone/CellBroadcastSms;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CellBroadcastSms;Lcom/android/phone/CellBroadcastSms$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSms;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 535
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 565
    const-string v1, "CellBroadcastSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Unhandled message in CellBroadcastSms.java. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 538
    :pswitch_0
    const-string v1, "CellBroadcastSms"

    const-string v2, "Cell Broadcast SMS enabled/disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 544
    .local v0, result:[I
    aget v1, v0, v3

    if-nez v1, :cond_0

    .line 545
    const/16 v1, 0x1f

    aput v1, v0, v3

    .line 547
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    #getter for: Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSms;->access$700(Lcom/android/phone/CellBroadcastSms;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 548
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    #getter for: Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSms;->access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    #getter for: Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSms;->access$800(Lcom/android/phone/CellBroadcastSms;)Lcom/android/phone/CellBroadcastSms$MyHandler;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 550
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    #getter for: Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSms;->access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cdma_cell_broadcast_sms"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    #calls: Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/CellBroadcastSms;->access$1000(Lcom/android/phone/CellBroadcastSms;Z)V

    .line 556
    :cond_0
    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsConfig([I)V
    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$1100([I)V

    .line 557
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsBselectedValues()[I
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$1200()[I

    move-result-object v2

    #calls: Lcom/android/phone/CellBroadcastSms;->setAllCbConfigButtons([I)V
    invoke-static {v1, v2}, Lcom/android/phone/CellBroadcastSms;->access$1300(Lcom/android/phone/CellBroadcastSms;[I)V

    goto :goto_0

    .line 562
    .end local v0           #result:[I
    :pswitch_2
    const-string v1, "CellBroadcastSms"

    const-string v2, "Set Cell Broadcast SMS values."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
