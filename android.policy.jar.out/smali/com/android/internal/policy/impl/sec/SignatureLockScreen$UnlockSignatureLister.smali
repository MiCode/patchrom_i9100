.class Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "SignatureLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 513
    :try_start_0
    const-string v0, "SignatureLockScreen"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "SignatureLockScreen"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 518
    monitor-exit v1

    .line 531
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    const-string v0, "SignatureLockScreen"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 526
    :cond_1
    const-string v0, "SignatureLockScreen"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->bindToSignatureLock()V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1302(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Z)Z

    .line 530
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddSignFailed(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 506
    return-void
.end method

.method public onAddSignSucceeded(I)V
    .locals 0
    .parameter "nCount"

    .prologue
    .line 509
    return-void
.end method

.method public onSignatureCleared()V
    .locals 2

    .prologue
    .line 448
    const-string v0, "SignatureLockScreen"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public onSignatureDetected()V
    .locals 6

    .prologue
    .line 458
    const-string v2, "SignatureLockScreen"

    const-string v3, "onSignatureDetected is called by SignView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 464
    const-string v2, "SignatureLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verification score for inputted signature is (* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->getVerifyScore(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " *) current threshold is (* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/SignView;->getThresholdValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " *)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    const-string v2, "SignatureLockScreen"

    const-string v3, "sign verification is successful, go to unlock screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v2, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->SUCCESS:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$702(Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 480
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 503
    :goto_1
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 482
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$702(Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1008(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)I

    .line 486
    const-string v2, "SignatureLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sign verification is failed, count("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mFailedAttempts:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mFailedAttempts:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 490
    const-string v2, "SignatureLockScreen"

    const-string v3, "user failed to unlock with signature until maximum try, go to unlock screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .line 495
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mGuideText:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$500(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, guideMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$600(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public onSignatureInputting()V
    .locals 2

    .prologue
    .line 452
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SignatureLockScreen"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 455
    return-void
.end method

.method public onSignatureStart()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "SignatureLockScreen"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$600(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mGuideText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$500(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/high16 v1, -0x7800

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    .line 442
    sget-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$700()Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 443
    sget-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->IDENTIFYING:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$702(Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    .line 445
    :cond_0
    return-void
.end method
