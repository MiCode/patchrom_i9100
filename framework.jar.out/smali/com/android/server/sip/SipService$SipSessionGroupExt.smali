.class Lcom/android/server/sip/SipService$SipSessionGroupExt;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionGroupExt"
.end annotation


# instance fields
.field private mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

.field private mIncomingCallPendingIntent:Landroid/app/PendingIntent;

.field private mOpenedToReceiveCalls:Z

.field private mSipGroup:Lcom/android/server/sip/SipSessionGroup;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .locals 5
    .parameter
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 450
    new-instance v0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    .line 456
    new-instance v0, Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->duplicate(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {p1}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v3

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {p1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/sip/SipSessionGroup;-><init>(Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeupTimer;Lcom/android/server/sip/SipWakeLock;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    .line 458
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 459
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0, p4}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 460
    return-void
.end method

.method private duplicate(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .locals 3
    .parameter "p"

    .prologue
    .line 482
    :try_start_0
    new-instance v1, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v1, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipService"

    const-string v2, "duplicate()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "duplicate profile"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->getLocalProfileUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 524
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 525
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V

    .line 528
    return-void
.end method

.method public containsSession(Ljava/lang/String;)Z
    .locals 1
    .parameter "callId"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->containsSession(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 1
    .parameter "listener"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public isOpenedToReceiveCalls()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public onConnectivityChanged(Z)V
    .locals 1
    .parameter "connected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 510
    if-eqz p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->reset()V

    .line 512
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 518
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V

    goto :goto_0
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 568
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->onKeepAliveIntervalChanged()V

    .line 472
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 7
    .parameter "s"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 538
    move-object v2, p1

    check-cast v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 540
    .local v2, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v4

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    invoke-static {v3, p0, v2}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :goto_0
    return-void

    .line 548
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V
    invoke-static {v3, v2}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V

    .line 549
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/net/sip/SipManager;->createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 554
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 560
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_4
    const-string v3, "SipService"

    const-string/jumbo v5, "pendingIntent is canceled, drop incoming call"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public openToReceiveCalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 499
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mNetworkType:I
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->start(Lcom/android/server/sip/SipSessionGroup;)V

    .line 505
    :cond_0
    return-void
.end method

.method public setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "pIntent"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 495
    return-void
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 491
    return-void
.end method

.method setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 478
    return-void
.end method
