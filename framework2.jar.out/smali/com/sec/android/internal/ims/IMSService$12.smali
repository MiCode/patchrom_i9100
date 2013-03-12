.class Lcom/sec/android/internal/ims/IMSService$12;
.super Landroid/os/Handler;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2808
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2810
    :pswitch_0
    const-string v0, "IMS/IMSService"

    const-string v1, "EVENT_IMSVT_DISABLED_ON_WIFI Alert Dialog shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10406f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2813
    .local v6, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 2814
    .local v7, toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2818
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #toast:Landroid/widget/Toast;
    :pswitch_1
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " performDisconnect.......mCurrentConnectedNtwrk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v0, v1, :cond_0

    .line 2820
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network is not active so performDisconnect.......isImsInited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2822
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2823
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2825
    :cond_1
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/16 v1, 0x8

    const/16 v2, 0x167

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V

    .line 2826
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0, v3}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 2827
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 2828
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->access$1700(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 2808
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
