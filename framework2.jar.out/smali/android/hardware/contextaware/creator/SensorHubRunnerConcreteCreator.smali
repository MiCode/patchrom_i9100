.class public Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;
.super Landroid/hardware/contextaware/creator/ContextProviderCreator;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$1;,
        Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
    }
.end annotation


# static fields
.field static mContext:Landroid/content/Context;

.field static mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/hardware/contextaware/creator/ContextProviderCreator;-><init>()V

    .line 49
    sput-object p1, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;->mContext:Landroid/content/Context;

    .line 50
    sput-object p2, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;->mLooper:Landroid/os/Looper;

    .line 51
    sput-object p3, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    .line 52
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "name"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->getRunnerObj()Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "name"
    .parameter "property"

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->getRunnerObj([Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public existContextProvider(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 295
    const/4 v1, 0x1

    .line 298
    .local v1, exist:Z
    :try_start_0
    invoke-static {p1}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method
