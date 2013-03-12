.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;
.super Ljava/lang/Object;
.source "PowerNotiParser.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;


# instance fields
.field private mAPStatus:I

.field protected mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public display()V
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    .line 68
    const-string v0, "Noti Type : AP Sleep"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_2

    .line 70
    const-string v0, "Noti Type : AP Wakeup"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    const/16 v1, -0x2d

    if-ne v0, v1, :cond_0

    .line 72
    const-string v0, "Noti Type : AP Reset"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyListener(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 113
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;

    .line 115
    .local v1, observer:Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1, p1}, Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;->updateAPPowerStatus(I)V

    goto :goto_0

    .line 119
    .end local v1           #observer:Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;
    :cond_1
    return-void
.end method

.method public parse([BI)I
    .locals 3
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 43
    move v0, p2

    .line 45
    .local v0, tmpNext:I
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    .line 46
    const/4 v1, -0x1

    .line 54
    :goto_0
    return v1

    .line 49
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #tmpNext:I
    .local v1, tmpNext:I
    aget-byte v2, p1, v0

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    .line 51
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->display()V

    .line 52
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    invoke-virtual {p0, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->notifyListener(I)V

    move v0, v1

    .line 54
    .end local v1           #tmpNext:I
    .restart local v0       #tmpNext:I
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method
