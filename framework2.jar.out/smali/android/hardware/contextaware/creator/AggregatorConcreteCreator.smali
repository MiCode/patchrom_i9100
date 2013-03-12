.class public Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;
.super Landroid/hardware/contextaware/creator/ContextProviderCreator;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$1;,
        Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
    }
.end annotation


# static fields
.field private static runnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 1
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, runnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/creator/ContextProviderCreator;>;"
    invoke-direct {p0}, Landroid/hardware/contextaware/creator/ContextProviderCreator;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;->runnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    sput-object p1, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;->runnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    sput-object p2, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    .line 39
    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;->runnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "name"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->getAggregatorObj()Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "name"
    .parameter "property"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;->create(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public existContextProvider(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 181
    const/4 v1, 0x1

    .line 184
    .local v1, exist:Z
    :try_start_0
    invoke-static {p1}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method
