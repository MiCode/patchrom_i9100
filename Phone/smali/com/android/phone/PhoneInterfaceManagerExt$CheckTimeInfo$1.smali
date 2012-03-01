.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 571
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 572
    .local v1, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 585
    :goto_0
    return-void

    .line 574
    :pswitch_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "[EVENT_TIME_INFO]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    monitor-enter v3

    .line 576
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 578
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/String;

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mResult:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->access$602(Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mDone:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->access$702(Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;Z)Z

    .line 580
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 581
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 578
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
