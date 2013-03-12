.class final Landroid/hardware/contextaware/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/contextaware/ContextAwareService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/ContextAwareService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "token"

    .prologue
    .line 318
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p2, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->token:Landroid/os/IBinder;

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;

    .line 321
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/ContextAwareService$Listener;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    .line 330
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 331
    .local v0, i:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    #getter for: Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService;->access$300(Landroid/hardware/contextaware/ContextAwareService;)Landroid/hardware/contextaware/ContextManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #calls: Landroid/hardware/contextaware/ContextAwareService;->getServiceCode(I)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/hardware/contextaware/ContextAwareService;->access$200(Landroid/hardware/contextaware/ContextAwareService;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/ContextManager;->stop(Ljava/lang/String;Landroid/hardware/contextaware/IContextObserver;)V

    goto :goto_0

    .line 335
    .end local v0           #i:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/ContextAwareService;

    #getter for: Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService;->access$400(Landroid/hardware/contextaware/ContextAwareService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 338
    return-void
.end method

.method public callback(Landroid/hardware/contextaware/CAEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 348
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$Listener;->token:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/contextaware/ICACallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/ICACallback;

    move-result-object v0

    .line 350
    .local v0, callback:Landroid/hardware/contextaware/ICACallback;
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p1}, Landroid/hardware/contextaware/ICACallback;->caCallback(Landroid/hardware/contextaware/CAEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0           #callback:Landroid/hardware/contextaware/ICACallback;
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
