.class final Lcom/android/server/pm/ShutdownThread$Log$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread$Log;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 788
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 791
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v0, "-k -z -d -o /data/log/dumpstate_shutdownthread"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 797
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$500()Z

    move-result v0

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto :goto_0
.end method
