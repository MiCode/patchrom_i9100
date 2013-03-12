.class final Landroid/hardware/scontext/SContextService$ServiceHandler;
.super Landroid/os/Handler;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method public constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 494
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    .line 495
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 496
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 500
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/scontext/SContextEvent;

    .line 502
    .local v2, scontextEvent:Landroid/hardware/scontext/SContextEvent;
    iget-object v4, v2, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    .line 504
    .local v3, service:I
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 505
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextService$Listener;

    .line 506
    .local v1, l:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    invoke-virtual {v1, v2}, Landroid/hardware/scontext/SContextService$Listener;->callback(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_0

    .line 513
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Landroid/hardware/scontext/SContextService$Listener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 511
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextService$EventPool;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/scontext/SContextService$EventPool;->recycle(Landroid/hardware/scontext/SContextEvent;)V

    .line 512
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 513
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    return-void
.end method
