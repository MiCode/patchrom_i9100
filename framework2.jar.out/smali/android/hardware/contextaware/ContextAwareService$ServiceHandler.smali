.class final Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/ContextAwareService;


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/ContextAwareService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 370
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    .line 371
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 382
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/contextaware/CAEvent;

    .line 384
    .local v0, event:Landroid/hardware/contextaware/CAEvent;
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    #getter for: Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/ContextAwareService;->access$400(Landroid/hardware/contextaware/ContextAwareService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 397
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    #getter for: Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/ContextAwareService;->access$400(Landroid/hardware/contextaware/ContextAwareService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/ContextAwareService$Listener;

    .line 390
    .local v2, next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    if-eqz v2, :cond_1

    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    invoke-virtual {v2, v0}, Landroid/hardware/contextaware/ContextAwareService$Listener;->callback(Landroid/hardware/contextaware/CAEvent;)V

    goto :goto_1

    .line 395
    .end local v2           #next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    :cond_2
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    #getter for: Landroid/hardware/contextaware/ContextAwareService;->mEventPool:Landroid/hardware/contextaware/ContextAwareService$EventPool;
    invoke-static {v3}, Landroid/hardware/contextaware/ContextAwareService;->access$500(Landroid/hardware/contextaware/ContextAwareService;)Landroid/hardware/contextaware/ContextAwareService$EventPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/ContextAwareService$EventPool;->recycle(Landroid/hardware/contextaware/CAEvent;)V

    goto :goto_0
.end method
