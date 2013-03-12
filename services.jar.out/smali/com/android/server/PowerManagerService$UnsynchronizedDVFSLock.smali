.class Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsynchronizedDVFSLock"
.end annotation


# instance fields
.field mFrequency:I

.field mHeld:Z

.field mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "tag"

    .prologue
    .line 5558
    iput-object p1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mHeld:Z

    .line 5559
    iput p2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mType:I

    .line 5560
    iput p3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mFrequency:I

    .line 5561
    iput-object p4, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mTag:Ljava/lang/String;

    .line 5562
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mToken:Landroid/os/IBinder;

    .line 5563
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 9

    .prologue
    .line 5566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5568
    .local v7, ident:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mType:I

    iget v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mFrequency:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->MY_UID:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->MY_PID:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mTag:Ljava/lang/String;

    #calls: Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->access$11000(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 5569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5571
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5573
    return-void

    .line 5571
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 5582
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mHeld:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 5576
    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mToken:Landroid/os/IBinder;

    #calls: Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$10700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;)V

    .line 5577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mHeld:Z

    .line 5578
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsynchronizedDVFSLock(mType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->mHeld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
