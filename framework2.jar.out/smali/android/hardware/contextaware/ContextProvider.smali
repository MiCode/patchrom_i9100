.class public abstract Landroid/hardware/contextaware/ContextProvider;
.super Ljava/lang/Object;
.source "ContextProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextObservable;
.implements Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;


# instance fields
.field protected mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

.field protected mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/IContextObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUsed:I


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 1
    .parameter "observable"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    iput-object p1, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    .line 40
    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected abstract initialize()V
.end method

.method protected isRunning()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V
    .locals 3
    .parameter "type"
    .parameter "context"

    .prologue
    .line 120
    iget-object v2, p0, Landroid/hardware/contextaware/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/IContextObserver;

    .line 122
    .local v1, observer:Landroid/hardware/contextaware/IContextObserver;
    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v1, p1, p2}, Landroid/hardware/contextaware/IContextObserver;->updateContext(ILandroid/hardware/contextaware/IContextBundle;)V

    goto :goto_0

    .line 126
    .end local v1           #observer:Landroid/hardware/contextaware/IContextObserver;
    :cond_1
    return-void
.end method

.method protected abstract registerAPPowerObserver()V
.end method

.method public registerListener(Landroid/hardware/contextaware/IContextObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)Z
    .locals 1
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, value:Ljava/lang/Object;,"TE;"
    if-eqz p2, :cond_0

    check-cast p2, Landroid/hardware/contextaware/CAPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/CAPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    .line 58
    invoke-virtual {p0}, Landroid/hardware/contextaware/ContextProvider;->registerAPPowerObserver()V

    .line 59
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/hardware/contextaware/ContextProvider;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    .line 69
    :cond_0
    iget v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    if-gez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/ContextProvider;->mUsed:I

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/ContextProvider;->unregisterAPPowerObserver()V

    .line 74
    return-void
.end method

.method protected abstract terminate()V
.end method

.method protected abstract unregisterAPPowerObserver()V
.end method

.method public unregisterListener(Landroid/hardware/contextaware/IContextObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public abstract updateAPPowerStatus(I)V
.end method
