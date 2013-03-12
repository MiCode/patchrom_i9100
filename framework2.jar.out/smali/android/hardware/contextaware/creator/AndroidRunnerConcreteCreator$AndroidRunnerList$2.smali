.class final enum Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$2;
.super Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getRunnerObj()Landroid/hardware/contextaware/ContextProvider;
    .locals 6

    .prologue
    .line 59
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    sget-object v3, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;->mLooper:Landroid/os/Looper;

    sget-object v5, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-direct {v2, v3, v4, v5}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    return-object v0
.end method

.method protected varargs getRunnerObj([Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 9
    .parameter "property"

    .prologue
    .line 70
    array-length v0, p1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    sget-object v1, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;->mLooper:Landroid/os/Looper;

    sget-object v3, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x3

    aget-object v7, p1, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x4

    aget-object v8, p1, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;IZZZZ)V

    goto :goto_0
.end method
