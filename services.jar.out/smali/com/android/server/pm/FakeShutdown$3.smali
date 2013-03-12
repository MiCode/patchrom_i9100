.class Lcom/android/server/pm/FakeShutdown$3;
.super Landroid/content/BroadcastReceiver;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/FakeShutdown;->waitForIntentBrDone(Landroid/content/Intent;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FakeShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FakeShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/server/pm/FakeShutdown$3;->this$0:Lcom/android/server/pm/FakeShutdown;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 624
    const-string v0, "FakeShutdown"

    const-string v1, "wait for intent broadcast done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/server/pm/FakeShutdown$3;->this$0:Lcom/android/server/pm/FakeShutdown;

    #getter for: Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/FakeShutdown;->access$300(Lcom/android/server/pm/FakeShutdown;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FakeShutdown$3;->this$0:Lcom/android/server/pm/FakeShutdown;

    #getter for: Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/FakeShutdown;->access$300(Lcom/android/server/pm/FakeShutdown;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/FakeShutdown$3;->this$0:Lcom/android/server/pm/FakeShutdown;

    #getter for: Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/FakeShutdown;->access$300(Lcom/android/server/pm/FakeShutdown;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
