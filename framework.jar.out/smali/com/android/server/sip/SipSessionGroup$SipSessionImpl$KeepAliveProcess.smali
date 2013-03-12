.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAliveProcess"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipKeepAlive"


# instance fields
.field private mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

.field private mInterval:I

.field private mPortChanged:Z

.field private mRPort:I

.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1503
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 1505
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 1508
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    .line 1509
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    return-void
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 2
    .parameter "response"

    .prologue
    .line 1633
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    move-object v0, v1

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 1635
    .local v0, viaHeader:Ljavax/sip/header/ViaHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v1

    goto :goto_0
.end method

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 4
    .parameter "evt"

    .prologue
    const/4 v2, 0x1

    .line 1611
    const-string v3, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 1612
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1613
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v1

    .line 1614
    .local v1, rPort:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1615
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    if-nez v3, :cond_0

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    .line 1616
    :cond_0
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    if-eq v3, v1, :cond_1

    .line 1617
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    .line 1620
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    .line 1629
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #rPort:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendKeepAlive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0x9

    iput v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1600
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipHelper;->sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1602
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1603
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1605
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x5

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$3000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V

    .line 1607
    monitor-exit v1

    .line 1608
    return-void

    .line 1607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1553
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    invoke-interface {v0, p2, p3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    .line 1554
    return-void
.end method

.method process(Ljava/util/EventObject;)Z
    .locals 2
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1531
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1533
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V

    .line 1535
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1540
    :goto_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    invoke-interface {v0, v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V

    .line 1541
    const/4 v0, 0x1

    .line 1545
    :goto_1
    return v0

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2800(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1538
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup;->access$1200(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    goto :goto_0

    .line 1545
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1560
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v2

    .line 1561
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    :goto_0
    return-void

    .line 1571
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->sendKeepAlive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1582
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1572
    :catch_0
    move-exception v0

    .line 1580
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 2
    .parameter "interval"
    .parameter "callback"

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1515
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 1516
    iput p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mInterval:I

    .line 1517
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-direct {v0, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1518
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2700(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->run()V

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1591
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 1592
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2700(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1593
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1594
    monitor-exit v1

    .line 1595
    return-void

    .line 1594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
