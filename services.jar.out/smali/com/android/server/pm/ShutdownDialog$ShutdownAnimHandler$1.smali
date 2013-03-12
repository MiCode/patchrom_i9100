.class Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler$1;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler$1;->this$1:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler$1;->this$1:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    iget-object v0, v0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$400(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Releasing animation end lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler$1;->this$1:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    iget-object v0, v0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$400(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 197
    :cond_0
    return-void
.end method
