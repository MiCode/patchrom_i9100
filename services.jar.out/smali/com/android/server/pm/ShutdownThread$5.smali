.class Lcom/android/server/pm/ShutdownThread$5;
.super Landroid/os/storage/IMountShutdownObserver$Stub;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThread;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$5;->this$0:Lcom/android/server/pm/ShutdownThread;

    invoke-direct {p0}, Landroid/os/storage/IMountShutdownObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutDownComplete(I)V
    .locals 3
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 559
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from MountService.shutdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$5;->this$0:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/pm/ShutdownThread;->actionDoneMount()V

    .line 561
    return-void
.end method
