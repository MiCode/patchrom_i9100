.class final Lcom/android/server/pm/FakeShutdown$2;
.super Landroid/content/BroadcastReceiver;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 433
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$000()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 435
    :try_start_0
    const-string v0, "plugged"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/FakeShutdown;->access$202(I)I

    .line 440
    :goto_0
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/android/server/pm/FakeShutdown;->access$202(I)I

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
