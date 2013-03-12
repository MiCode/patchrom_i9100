.class public Landroid/hardware/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    }
.end annotation


# static fields
.field public static final AUTO_ROTATION_SERVICE:Ljava/lang/String; = null

.field public static final GESTURE_APPROACH_SERVICE:Ljava/lang/String; = null

.field public static final LOCATION_SERVICE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_DEBUG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_ERROR:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_INFO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_TRACE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_WARN:I = 0x0

.field public static final MOTION_SERVICE:Ljava/lang/String; = null

.field public static final MOVEMENT_SERVICE:Ljava/lang/String; = null

.field public static final MOVING_SERVICE:Ljava/lang/String; = null

.field public static final PEDOMETER_SERVICE:Ljava/lang/String; = null

.field public static final POWER_NOTI_SERVICE:Ljava/lang/String; = null

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x5

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x3

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x2

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x4

.field public static final RAW_SENSOR_SERVICE:Ljava/lang/String; = null

.field public static final STEP_COUNT_ALERT_SERVICE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ContextAwareManager"


# instance fields
.field private final mCAService:Landroid/hardware/contextaware/ICAService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->LOCATION_SERVICE:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVING_SERVICE:Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_SENSOR:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_SENSOR_SERVICE:Ljava/lang/String;

    .line 56
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:Ljava/lang/String;

    .line 60
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    .line 64
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:Ljava/lang/String;

    .line 68
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:Ljava/lang/String;

    .line 72
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:Ljava/lang/String;

    .line 93
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_TRACE:I

    .line 96
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_DEBUG:I

    .line 99
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_INFO:I

    .line 102
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_WARN:I

    .line 105
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    const-string v0, "context_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/ICAService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/ICAService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    .line 125
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    .line 126
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "propertyObj"

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/contextaware/ICAService;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contextaware/CAListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p2, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, packet:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p4, delayTime:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 453
    const-string v3, "ContextAwareManager"

    const-string v4, "Fail to create the packet map."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, i:Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .end local v1           #i:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 463
    iget-object v5, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v3, v4}, Landroid/hardware/contextaware/ICAService;->setPacketListForCAAutoTest([BI)V

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 466
    :cond_2
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v3, p5}, Landroid/hardware/contextaware/ICAService;->startCAAutoTest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isRunCAAutoTest()Z
    .locals 3

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 481
    .local v1, isRun:Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v2}, Landroid/hardware/contextaware/ICAService;->isRunCAAutoTest()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V
    .locals 6
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, caListener:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

    .line 146
    .local v1, delegate:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->getListener()Landroid/hardware/contextaware/CAListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    move-object v0, v1

    .line 152
    .end local v1           #delegate:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    :cond_2
    if-nez v0, :cond_3

    .line 153
    new-instance v0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

    .end local v0           #caListener:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;-><init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/CAListener;Landroid/os/Handler;)V

    .line 154
    .restart local v0       #caListener:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    :try_start_0
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v4, v0, p2}, Landroid/hardware/contextaware/ICAService;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "ContextAwareManager"

    const-string v5, "RemoteException in registerListener: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetCAService(Ljava/lang/String;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v1, p1}, Landroid/hardware/contextaware/ICAService;->resetCAService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCALogger(ZZIZ)V
    .locals 2
    .parameter "isConsole"
    .parameter "isFile"
    .parameter "level"
    .parameter "isCaller"

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/contextaware/ICAService;->setCALogger(ZZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCAProperty(Ljava/lang/String;ID)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 300
    new-instance v0, Landroid/hardware/contextaware/CAPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPropertyBundle;-><init>()V

    .line 301
    .local v0, propertyObj:Landroid/hardware/contextaware/CAPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/CAPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 302
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 303
    return-void
.end method

.method public setCAProperty(Ljava/lang/String;IF)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 283
    new-instance v0, Landroid/hardware/contextaware/CAPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPropertyBundle;-><init>()V

    .line 284
    .local v0, propertyObj:Landroid/hardware/contextaware/CAPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/CAPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 285
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 286
    return-void
.end method

.method public setCAProperty(Ljava/lang/String;II)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 249
    new-instance v0, Landroid/hardware/contextaware/CAPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPropertyBundle;-><init>()V

    .line 250
    .local v0, propertyObj:Landroid/hardware/contextaware/CAPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/CAPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 251
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 252
    return-void
.end method

.method public setCAProperty(Ljava/lang/String;IJ)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 266
    new-instance v0, Landroid/hardware/contextaware/CAPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPropertyBundle;-><init>()V

    .line 267
    .local v0, propertyObj:Landroid/hardware/contextaware/CAPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/CAPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 268
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 269
    return-void
.end method

.method public setCAProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 317
    new-instance v0, Landroid/hardware/contextaware/CAPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPropertyBundle;-><init>()V

    .line 318
    .local v0, propertyObj:Landroid/hardware/contextaware/CAPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/CAPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 319
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 320
    return-void
.end method

.method public setCAProperty(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 232
    new-instance v0, Landroid/hardware/contextaware/CAPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPropertyBundle;-><init>()V

    .line 233
    .local v0, propertyObj:Landroid/hardware/contextaware/CAPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/CAPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 234
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 235
    return-void
.end method

.method public startCAAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contextaware/CAListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, packet:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p4, delayTime:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/contextaware/ContextAwareManager;->startAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 411
    return-void
.end method

.method public startCAManagerAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contextaware/CAListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, packet:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p4, delayTime:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/contextaware/ContextAwareManager;->startAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 379
    return-void
.end method

.method public stopCAAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;)V
    .locals 4
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contextaware/CAListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    .local v1, i:Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v1           #i:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v3}, Landroid/hardware/contextaware/ICAService;->stopCAAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopCAManagerAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;)V
    .locals 0
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contextaware/CAListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p2, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/ContextAwareManager;->stopCAAutoTest(Landroid/hardware/contextaware/CAListener;Ljava/util/List;)V

    .line 392
    return-void
.end method

.method public unregisterListener(Landroid/hardware/contextaware/CAListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 171
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 172
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_SENSOR_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 173
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 174
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 175
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 176
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 177
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 178
    sget-object v0, Landroid/hardware/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V
    .locals 6
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 192
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 198
    .local v0, caListener:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

    .line 200
    .local v1, delegate:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->getListener()Landroid/hardware/contextaware/CAListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    move-object v0, v1

    .line 207
    .end local v1           #delegate:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
    :cond_3
    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCAService:Landroid/hardware/contextaware/ICAService;

    invoke-interface {v4, v0, p2}, Landroid/hardware/contextaware/ICAService;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "ContextAwareManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
