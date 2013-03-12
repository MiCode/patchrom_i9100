.class Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;
.super Ljava/lang/Object;
.source "SignatureLockScreen.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    invoke-static {p2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    #setter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$202(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 391
    const-string v2, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to sign service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 393
    const-string v2, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before set sign service, mSignView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/ISignServiceInterface;->getEngineStatus()Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mEngineStarted:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$402(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Z)Z

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mEngineStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$400(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/16 v4, 0xa

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v1

    .line 403
    .local v1, signNum:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->readSignatureData(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v1           #signNum:I
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    return-void

    .line 407
    .restart local v1       #signNum:I
    :cond_2
    :try_start_2
    const-string v2, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved signatures are not sufficient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 413
    .end local v1           #signNum:I
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 410
    :cond_3
    :try_start_4
    const-string v2, "SignatureLockScreen"

    const-string v4, "fail to init engine"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 421
    :try_start_0
    const-string v0, "SignatureLockScreen"

    const-string v2, "Disconnected to sign service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$202(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/SignatureLockScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mEngineStarted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->access$402(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Z)Z

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
