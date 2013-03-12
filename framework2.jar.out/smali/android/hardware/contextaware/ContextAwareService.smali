.class public Landroid/hardware/contextaware/ContextAwareService;
.super Landroid/hardware/contextaware/ICAService$Stub;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ContextAwareService$EventPool;,
        Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;,
        Landroid/hardware/contextaware/ContextAwareService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextAwareService"


# instance fields
.field private final mCAAutoTest:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

.field private final mContextManager:Landroid/hardware/contextaware/ContextManager;

.field private final mEventPool:Landroid/hardware/contextaware/ContextAwareService$EventPool;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/hardware/contextaware/ICAService$Stub;-><init>()V

    .line 57
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "context_aware"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, mHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v1, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;-><init>(Landroid/hardware/contextaware/ContextAwareService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;

    .line 77
    new-instance v1, Landroid/hardware/contextaware/ContextAwareService$EventPool;

    invoke-direct {v1}, Landroid/hardware/contextaware/ContextAwareService$EventPool;-><init>()V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService;->mEventPool:Landroid/hardware/contextaware/ContextAwareService$EventPool;

    .line 79
    new-instance v1, Landroid/hardware/contextaware/ContextManager;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/hardware/contextaware/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    .line 82
    new-instance v1, Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    invoke-direct {v1, p1}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService;->mCAAutoTest:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    .line 83
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/ContextAwareService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextAwareService;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/ContextAwareService;)Landroid/hardware/contextaware/ContextManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/ContextAwareService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/ContextAwareService;)Landroid/hardware/contextaware/ContextAwareService$EventPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mEventPool:Landroid/hardware/contextaware/ContextAwareService$EventPool;

    return-object v0
.end method

.method private getServiceCode(I)Ljava/lang/String;
    .locals 6
    .parameter "serviceOrdinal"

    .prologue
    .line 500
    const-string v1, ""

    .line 502
    .local v1, code:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/ContextList;->values()[Landroid/hardware/contextaware/ContextList;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/ContextList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 503
    .local v2, i:Landroid/hardware/contextaware/ContextList;
    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 504
    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 509
    .end local v2           #i:Landroid/hardware/contextaware/ContextList;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 510
    const-string v5, "service code is zero."

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 513
    :cond_1
    return-object v1

    .line 502
    .restart local v2       #i:Landroid/hardware/contextaware/ContextList;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getServiceOrdinal(Ljava/lang/String;)I
    .locals 6
    .parameter "serviceCode"

    .prologue
    .line 483
    const/4 v4, 0x0

    .line 485
    .local v4, ordinal:I
    invoke-static {}, Landroid/hardware/contextaware/ContextList;->values()[Landroid/hardware/contextaware/ContextList;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/ContextList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 486
    .local v1, i:Landroid/hardware/contextaware/ContextList;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 487
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v4

    .line 492
    .end local v1           #i:Landroid/hardware/contextaware/ContextList;
    :cond_0
    if-nez v4, :cond_1

    .line 493
    const-string v5, "service ordinal is zero."

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 496
    :cond_1
    return v4

    .line 485
    .restart local v1       #i:Landroid/hardware/contextaware/ContextList;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isUsableService(Landroid/hardware/contextaware/ContextAwareService$Listener;Ljava/lang/String;)Z
    .locals 2
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 479
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {p1}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/ContextAwareService;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "str"

    .prologue
    .line 285
    const-string v1, ""

    .line 287
    .local v1, client:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/contextaware/ICACallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/ICACallback;

    move-result-object v0

    .line 288
    .local v0, callback:Landroid/hardware/contextaware/ICACallback;
    if-nez v0, :cond_0

    .line 299
    .end local v0           #callback:Landroid/hardware/contextaware/ICACallback;
    :goto_0
    return-void

    .line 291
    .restart local v0       #callback:Landroid/hardware/contextaware/ICACallback;
    :cond_0
    invoke-interface {v0}, Landroid/hardware/contextaware/ICACallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 295
    .end local v0           #callback:Landroid/hardware/contextaware/ICACallback;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, e:Landroid/os/RemoteException;
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private showListenerList()V
    .locals 6

    .prologue
    .line 165
    const-string v4, "===== Context Aware Service List ====="

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/ContextAwareService$Listener;

    .line 168
    .local v3, next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {v3}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 169
    .local v2, j:Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:Ljava/lang/Integer;
    .end local v3           #next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    :cond_1
    return-void
.end method


# virtual methods
.method public isRunCAAutoTest()Z
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mCAAutoTest:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->isRun()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, listener:Landroid/hardware/contextaware/ContextAwareService$Listener;
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/ContextAwareService$Listener;

    .line 100
    .local v2, next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->token:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-direct {p0, v2, p2}, Landroid/hardware/contextaware/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/ContextAwareService$Listener;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    invoke-virtual {v3, p2, p0}, Landroid/hardware/contextaware/ContextManager;->start(Ljava/lang/String;Landroid/hardware/contextaware/IContextObserver;)V

    .line 103
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/ContextAwareService;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    invoke-direct {p0}, Landroid/hardware/contextaware/ContextAwareService;->showListenerList()V

    .line 120
    .end local v2           #next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    :goto_0
    return-void

    .line 110
    :cond_2
    new-instance v1, Landroid/hardware/contextaware/ContextAwareService$Listener;

    .end local v1           #listener:Landroid/hardware/contextaware/ContextAwareService$Listener;
    invoke-direct {v1, p0, p1}, Landroid/hardware/contextaware/ContextAwareService$Listener;-><init>(Landroid/hardware/contextaware/ContextAwareService;Landroid/os/IBinder;)V

    .line 111
    .restart local v1       #listener:Landroid/hardware/contextaware/ContextAwareService$Listener;
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 112
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0, v1, p2}, Landroid/hardware/contextaware/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/ContextAwareService$Listener;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    invoke-virtual {v3, p2, p0}, Landroid/hardware/contextaware/ContextManager;->start(Ljava/lang/String;Landroid/hardware/contextaware/IContextObserver;)V

    .line 116
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {v1}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/ContextAwareService;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    const-string v3, "registerCallback"

    invoke-direct {p0, p1, v3}, Landroid/hardware/contextaware/ContextAwareService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetCAService(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/ContextManager;->reset(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setCALogger(ZZIZ)V
    .locals 0
    .parameter "isConsole"
    .parameter "isFile"
    .parameter "level"
    .parameter "isCaller"

    .prologue
    .line 525
    invoke-static {p1}, Landroid/hardware/contextaware/utilbundle/CALogger;->setConsoleLoggingEnable(Z)V

    .line 526
    invoke-static {p2}, Landroid/hardware/contextaware/utilbundle/CALogger;->setFileLoggingEnable(Z)V

    .line 527
    invoke-static {p3, p4}, Landroid/hardware/contextaware/utilbundle/CALogger;->setLogOption(IZ)V

    .line 528
    return-void
.end method

.method public setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/contextaware/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setPacketListForCAAutoTest([BI)V
    .locals 1
    .parameter "packet"
    .parameter "delayTime"

    .prologue
    .line 560
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mCAAutoTest:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->setPacketList([BI)V

    .line 561
    return-void
.end method

.method public startCAAutoTest(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 537
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mCAAutoTest:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->startAutoTest(I)V

    .line 538
    return-void
.end method

.method public stopCAAutoTest()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareService;->mCAAutoTest:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->stopAutoTest()V

    .line 548
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 6
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, listener:Landroid/hardware/contextaware/ContextAwareService$Listener;
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/ContextAwareService$Listener;

    .line 137
    .local v2, next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->token:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    move-object v1, v2

    .line 139
    invoke-direct {p0, v2, p2}, Landroid/hardware/contextaware/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/ContextAwareService$Listener;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/ContextManager;

    invoke-virtual {v4, p2, p0}, Landroid/hardware/contextaware/ContextManager;->stop(Ljava/lang/String;Landroid/hardware/contextaware/IContextObserver;)V

    .line 141
    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/ContextAwareService;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0}, Landroid/hardware/contextaware/ContextAwareService;->showListenerList()V

    .line 148
    .end local v2           #next:Landroid/hardware/contextaware/ContextAwareService$Listener;
    :cond_1
    if-eqz v1, :cond_2

    #getter for: Landroid/hardware/contextaware/ContextAwareService$Listener;->services:Ljava/util/Set;
    invoke-static {v1}, Landroid/hardware/contextaware/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/ContextAwareService$Listener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 157
    :cond_2
    :goto_0
    return v3

    .line 152
    :cond_3
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 153
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    const-string v3, "unregisterCallback"

    invoke-direct {p0, p1, v3}, Landroid/hardware/contextaware/ContextAwareService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public updateContext(ILandroid/hardware/contextaware/IContextBundle;)V
    .locals 12
    .parameter "event"
    .parameter "context"

    .prologue
    .line 208
    iget-object v10, p0, Landroid/hardware/contextaware/ContextAwareService;->mEventPool:Landroid/hardware/contextaware/ContextAwareService$EventPool;

    invoke-virtual {v10}, Landroid/hardware/contextaware/ContextAwareService$EventPool;->obtain()Landroid/hardware/contextaware/CAEvent;

    move-result-object v1

    .line 209
    .local v1, caEvent:Landroid/hardware/contextaware/CAEvent;
    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/CAEvent;->setEvent(I)V

    .line 211
    sget v10, Landroid/hardware/contextaware/CAEvent;->PEDOMETER:I

    if-ne p1, v10, :cond_1

    .line 212
    new-instance v6, Landroid/hardware/contextaware/CAPedometerContext;

    invoke-direct {v6}, Landroid/hardware/contextaware/CAPedometerContext;-><init>()V

    .local v6, pedometerContext:Landroid/hardware/contextaware/CAPedometerContext;
    move-object v10, p2

    .line 213
    check-cast v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v10, v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    invoke-virtual {v6, v10, v11}, Landroid/hardware/contextaware/CAPedometerContext;->setStepCount(J)V

    move-object v10, p2

    .line 215
    check-cast v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v10, v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    invoke-virtual {v6, v10, v11}, Landroid/hardware/contextaware/CAPedometerContext;->setCalorie(D)V

    move-object v10, p2

    .line 216
    check-cast v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v10, v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    invoke-virtual {v6, v10, v11}, Landroid/hardware/contextaware/CAPedometerContext;->setDistance(D)V

    move-object v10, p2

    .line 217
    check-cast v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v10, v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->speed:D

    invoke-virtual {v6, v10, v11}, Landroid/hardware/contextaware/CAPedometerContext;->setSpeed(D)V

    .line 218
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepStatus:I

    invoke-virtual {v6, v10}, Landroid/hardware/contextaware/CAPedometerContext;->setStepStatus(I)V

    .line 220
    invoke-virtual {v1, v6}, Landroid/hardware/contextaware/CAEvent;->setPedometerContext(Landroid/hardware/contextaware/CAPedometerContext;)V

    .line 270
    .end local v6           #pedometerContext:Landroid/hardware/contextaware/CAPedometerContext;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 271
    .local v5, msg:Landroid/os/Message;
    const/4 v10, 0x0

    iput v10, v5, Landroid/os/Message;->what:I

    .line 272
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v10, p0, Landroid/hardware/contextaware/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;

    invoke-virtual {v10, v5}, Landroid/hardware/contextaware/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void

    .line 221
    .end local v5           #msg:Landroid/os/Message;
    .restart local p2
    :cond_1
    sget v10, Landroid/hardware/contextaware/CAEvent;->RAW_SENSOR:I

    if-ne p1, v10, :cond_2

    .line 222
    new-instance v8, Landroid/hardware/contextaware/CARawSensorContext;

    invoke-direct {v8}, Landroid/hardware/contextaware/CARawSensorContext;-><init>()V

    .local v8, rawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;
    move-object v10, p2

    .line 223
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-wide v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->sysTime:J

    invoke-virtual {v8, v10, v11}, Landroid/hardware/contextaware/CARawSensorContext;->setSysTime(J)V

    move-object v10, p2

    .line 224
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-wide v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->timeStamp:J

    invoke-virtual {v8, v10, v11}, Landroid/hardware/contextaware/CARawSensorContext;->setTimeStamp(J)V

    move-object v10, p2

    .line 226
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-object v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setAccelerometer([F)V

    move-object v10, p2

    .line 228
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-object v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->orientation:[F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setOrientation([F)V

    move-object v10, p2

    .line 230
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-object v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magnetic:[F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setMagnetic([F)V

    move-object v10, p2

    .line 231
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-object v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroscope:[F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setGyroscope([F)V

    move-object v10, p2

    .line 233
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accAccuracy:F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setAccAccuracy(F)V

    move-object v10, p2

    .line 235
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->oriAccuracy:F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setOriAccuracy(F)V

    move-object v10, p2

    .line 237
    check-cast v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget v10, v10, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magAccuracy:F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setMagAccuracy(F)V

    .line 239
    check-cast p2, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroAccuracy:F

    invoke-virtual {v8, v10}, Landroid/hardware/contextaware/CARawSensorContext;->setGyroAccuracy(F)V

    .line 241
    invoke-virtual {v1, v8}, Landroid/hardware/contextaware/CAEvent;->setRawSensorContext(Landroid/hardware/contextaware/CARawSensorContext;)V

    goto :goto_0

    .line 242
    .end local v8           #rawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;
    .restart local p2
    :cond_2
    sget v10, Landroid/hardware/contextaware/CAEvent;->GESTURE_APPROACH:I

    if-ne p1, v10, :cond_3

    .line 243
    new-instance v2, Landroid/hardware/contextaware/CAGestureApproachContext;

    invoke-direct {v2}, Landroid/hardware/contextaware/CAGestureApproachContext;-><init>()V

    .line 244
    .local v2, gestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;->proximity:I

    invoke-virtual {v2, v10}, Landroid/hardware/contextaware/CAGestureApproachContext;->setProximity(I)V

    .line 246
    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/CAEvent;->setGestureApproachContext(Landroid/hardware/contextaware/CAGestureApproachContext;)V

    goto :goto_0

    .line 247
    .end local v2           #gestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;
    .restart local p2
    :cond_3
    sget v10, Landroid/hardware/contextaware/CAEvent;->STEP_COUNT_ALERT:I

    if-ne p1, v10, :cond_4

    .line 248
    new-instance v9, Landroid/hardware/contextaware/CAStepCountAlertContext;

    invoke-direct {v9}, Landroid/hardware/contextaware/CAStepCountAlertContext;-><init>()V

    .line 249
    .local v9, stepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;->action:I

    invoke-virtual {v9, v10}, Landroid/hardware/contextaware/CAStepCountAlertContext;->setAction(I)V

    .line 251
    invoke-virtual {v1, v9}, Landroid/hardware/contextaware/CAEvent;->setStepCountAlertContext(Landroid/hardware/contextaware/CAStepCountAlertContext;)V

    goto/16 :goto_0

    .line 252
    .end local v9           #stepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;
    .restart local p2
    :cond_4
    sget v10, Landroid/hardware/contextaware/CAEvent;->MOTION:I

    if-ne p1, v10, :cond_5

    .line 253
    new-instance v3, Landroid/hardware/contextaware/CAMotionContext;

    invoke-direct {v3}, Landroid/hardware/contextaware/CAMotionContext;-><init>()V

    .line 254
    .local v3, motionContext:Landroid/hardware/contextaware/CAMotionContext;
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MotionRunner$MotionContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MotionRunner$MotionContext;->type:I

    invoke-virtual {v3, v10}, Landroid/hardware/contextaware/CAMotionContext;->setType(I)V

    .line 255
    invoke-virtual {v1, v3}, Landroid/hardware/contextaware/CAEvent;->setMotionContext(Landroid/hardware/contextaware/CAMotionContext;)V

    goto/16 :goto_0

    .line 256
    .end local v3           #motionContext:Landroid/hardware/contextaware/CAMotionContext;
    .restart local p2
    :cond_5
    sget v10, Landroid/hardware/contextaware/CAEvent;->MOVEMENT:I

    if-ne p1, v10, :cond_6

    .line 257
    new-instance v4, Landroid/hardware/contextaware/CAMovementContext;

    invoke-direct {v4}, Landroid/hardware/contextaware/CAMovementContext;-><init>()V

    .line 258
    .local v4, movementContext:Landroid/hardware/contextaware/CAMovementContext;
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;->action:I

    invoke-virtual {v4, v10}, Landroid/hardware/contextaware/CAMovementContext;->setAction(I)V

    .line 259
    invoke-virtual {v1, v4}, Landroid/hardware/contextaware/CAEvent;->setMovementContext(Landroid/hardware/contextaware/CAMovementContext;)V

    goto/16 :goto_0

    .line 260
    .end local v4           #movementContext:Landroid/hardware/contextaware/CAMovementContext;
    .restart local p2
    :cond_6
    sget v10, Landroid/hardware/contextaware/CAEvent;->AUTO_ROTATION:I

    if-ne p1, v10, :cond_7

    .line 261
    new-instance v0, Landroid/hardware/contextaware/CAAutoRotationContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAAutoRotationContext;-><init>()V

    .line 262
    .local v0, autoRotationContex:Landroid/hardware/contextaware/CAAutoRotationContext;
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/AutoRotationRunner$AutoRotationContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/AutoRotationRunner$AutoRotationContext;->angle:I

    invoke-virtual {v0, v10}, Landroid/hardware/contextaware/CAAutoRotationContext;->setAngle(I)V

    .line 263
    invoke-virtual {v1, v0}, Landroid/hardware/contextaware/CAEvent;->setAutoRotationContext(Landroid/hardware/contextaware/CAAutoRotationContext;)V

    goto/16 :goto_0

    .line 264
    .end local v0           #autoRotationContex:Landroid/hardware/contextaware/CAAutoRotationContext;
    .restart local p2
    :cond_7
    sget v10, Landroid/hardware/contextaware/CAEvent;->POWER_NOTI:I

    if-ne p1, v10, :cond_0

    .line 265
    new-instance v7, Landroid/hardware/contextaware/CAPowerNotiContext;

    invoke-direct {v7}, Landroid/hardware/contextaware/CAPowerNotiContext;-><init>()V

    .line 266
    .local v7, powerNotiContext:Landroid/hardware/contextaware/CAPowerNotiContext;
    check-cast p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    .end local p2
    iget v10, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;->noti:I

    invoke-virtual {v7, v10}, Landroid/hardware/contextaware/CAPowerNotiContext;->setNoti(I)V

    .line 267
    invoke-virtual {v1, v7}, Landroid/hardware/contextaware/CAEvent;->setPowerNotiContext(Landroid/hardware/contextaware/CAPowerNotiContext;)V

    goto/16 :goto_0
.end method
