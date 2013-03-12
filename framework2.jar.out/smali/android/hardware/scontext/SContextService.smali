.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$EventPool;,
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextService"


# instance fields
.field private final mCAListener:Landroid/hardware/contextaware/CAListener;

.field private final mContext:Landroid/content/Context;

.field private mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mSContext:Landroid/hardware/scontext/SContext;

.field private mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

.field private mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

.field private mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

.field private mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

.field private mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

.field private mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

.field mScreenReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    .line 55
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 57
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    .line 61
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 65
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .line 67
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .line 69
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .line 71
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .line 73
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .line 75
    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .line 414
    new-instance v1, Landroid/hardware/scontext/SContextService$1;

    invoke-direct {v1, p0}, Landroid/hardware/scontext/SContextService$1;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    .line 453
    new-instance v1, Landroid/hardware/scontext/SContextService$2;

    invoke-direct {v1, p0}, Landroid/hardware/scontext/SContextService$2;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    .line 79
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "context_aware"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 83
    new-instance v1, Landroid/hardware/scontext/SContextService$EventPool;

    invoke-direct {v1, p0}, Landroid/hardware/scontext/SContextService$EventPool;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    .line 84
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v2, "context_aware"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/ContextAwareManager;

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 85
    invoke-direct {p0, p0}, Landroid/hardware/scontext/SContextService;->addSContextListener(Landroid/hardware/scontext/ISContextListener;)V

    .line 87
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    const-string v1, "SContextService"

    const-string v2, "SContextService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextService$EventPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->setLEDNotification(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMotionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addSContextListener(Landroid/hardware/scontext/ISContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 91
    invoke-static {}, Landroid/hardware/scontext/SContextUpdateContext;->getInstance()Landroid/hardware/scontext/SContextUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextUpdateContext;->addListener(Landroid/hardware/scontext/ISContextListener;)V

    .line 92
    const-string v0, "SContextService"

    const-string v1, "addSContextListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .parameter "binder"
    .parameter "str"

    .prologue
    .line 247
    const-string v1, ""

    .line 249
    .local v1, client:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 250
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_0
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 257
    return-void

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setLEDNotification(Z)V
    .locals 10
    .parameter "ledOn"

    .prologue
    const/16 v9, 0x1428

    const/16 v8, 0x3e8

    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 260
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLEDNotification() LED ON : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v0, 0x1428

    .line 262
    .local v0, LED_NOTIF_ID:I
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 263
    .local v2, notiMgr:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 264
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 265
    .local v1, noti:Landroid/app/Notification;
    invoke-static {v7, v6, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, v1, Landroid/app/Notification;->ledARGB:I

    .line 266
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 267
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 268
    iput v8, v1, Landroid/app/Notification;->ledOnMS:I

    .line 269
    iput v8, v1, Landroid/app/Notification;->ledOffMS:I

    .line 270
    invoke-virtual {v2, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 274
    .end local v1           #noti:Landroid/app/Notification;
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private showListenerList()V
    .locals 8

    .prologue
    .line 236
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 237
    :try_start_0
    const-string v4, "SContextService"

    const-string v6, "===== Context Aware Service List ====="

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 239
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 240
    .local v3, j:Ljava/lang/Integer;
    const-string v4, "SContextService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Service : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #j:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    return-void
.end method


# virtual methods
.method public addSContextService(I)V
    .locals 5
    .parameter "service"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextService;->resetSContextService(I)V

    .line 336
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    const-string v1, "SContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSContextService() : service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 339
    :pswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v3, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v0           #filter:Landroid/content/IntentFilter;
    :pswitch_1
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v3, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getHeight()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;IF)V

    .line 348
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getWeight()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;IF)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v3, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getStepCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;II)V

    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v3, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :pswitch_4
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v3, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :pswitch_5
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v3, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getDeviceType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initializeSContextService(I)V
    .locals 4
    .parameter "service"

    .prologue
    .line 322
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->clear()V

    .line 324
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getStepCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(Ljava/lang/String;II)V

    .line 330
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextService;->resetSContextService(I)V

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    .locals 10
    .parameter "binder"
    .parameter "scontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v5, 0x0

    .line 161
    .local v5, used:I
    iput-object p2, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    .line 162
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v6}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    .line 164
    .local v4, service:I
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 165
    :try_start_0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move-object v3, v2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .local v3, listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 166
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 169
    :cond_0
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    if-ne p1, v6, :cond_4

    .line 170
    move-object v2, v0

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_1
    move-object v3, v2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_0

    .line 174
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    const-string v6, "SContextService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".registerCallback, used ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v3, :cond_3

    .line 177
    new-instance v2, Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {v2, p0, p1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {p1, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 179
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_2
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 183
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    if-nez v5, :cond_2

    .line 185
    invoke-virtual {p0, v4}, Landroid/hardware/scontext/SContextService;->addSContextService(I)V

    .line 189
    :cond_2
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 191
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v6, "registerCallback"

    invoke-direct {p0, p1, v6}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 193
    monitor-exit v7

    .line 194
    return-void

    .line 193
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_3

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_3
    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v0       #i:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_4
    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_1
.end method

.method public removeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 406
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 379
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/CAListener;

    sget-object v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/CAListener;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public resetSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 318
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 280
    :pswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .line 281
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->clear()V

    .line 282
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :pswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .line 287
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->clear()V

    .line 288
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .line 293
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->clear()V

    .line 294
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .line 299
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->clear()V

    .line 300
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .line 305
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->clear()V

    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .line 311
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->clear()V

    .line 312
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget-object v1, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized sendEvent(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 12
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    invoke-virtual {v9}, Landroid/hardware/scontext/SContextService$EventPool;->obtain()Landroid/hardware/scontext/SContextEvent;

    move-result-object v7

    .line 98
    .local v7, scontextEvent:Landroid/hardware/scontext/SContextEvent;
    iget-object v9, v7, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v9, p1}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 100
    const-string v9, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendEvent() : event = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 148
    .end local p2
    :goto_0
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 149
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 150
    .local v5, msg:Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v5, Landroid/os/Message;->what:I

    .line 151
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v9, v5}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v5           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    .restart local p2
    :pswitch_0
    :try_start_1
    new-instance v1, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    .line 106
    .local v1, approachContext:Landroid/hardware/scontext/SContextApproach;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->mApproach:I

    invoke-virtual {v1, v9}, Landroid/hardware/scontext/SContextApproach;->setApproach(I)V

    .line 107
    invoke-virtual {v7, v1}, Landroid/hardware/scontext/SContextEvent;->setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    .end local v1           #approachContext:Landroid/hardware/scontext/SContextApproach;
    .end local v7           #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 111
    .restart local v7       #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    .restart local p2
    :pswitch_1
    :try_start_2
    new-instance v6, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v6}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    .line 112
    .local v6, pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepCount:J

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setStepCount(J)V

    .line 113
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setCalorie(D)V

    .line 114
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setDistance(D)V

    .line 115
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setSpeed(D)V

    .line 116
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    invoke-virtual {v6, v9}, Landroid/hardware/scontext/SContextPedometer;->setStepStatus(I)V

    .line 117
    invoke-virtual {v7, v6}, Landroid/hardware/scontext/SContextEvent;->setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V

    goto :goto_0

    .line 121
    .end local v6           #pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    .restart local p2
    :pswitch_2
    new-instance v8, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {v8}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    .line 122
    .local v8, stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->mAlert:I

    invoke-virtual {v8, v9}, Landroid/hardware/scontext/SContextStepCountAlert;->setAlert(I)V

    .line 123
    invoke-virtual {v7, v8}, Landroid/hardware/scontext/SContextEvent;->setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V

    goto :goto_0

    .line 127
    .end local v8           #stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    .restart local p2
    :pswitch_3
    new-instance v3, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v3}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    .line 128
    .local v3, motionContext:Landroid/hardware/scontext/SContextMotion;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->mType:I

    invoke-virtual {v3, v9}, Landroid/hardware/scontext/SContextMotion;->setType(I)V

    .line 129
    invoke-virtual {v7, v3}, Landroid/hardware/scontext/SContextEvent;->setMotionContext(Landroid/hardware/scontext/SContextMotion;)V

    goto :goto_0

    .line 133
    .end local v3           #motionContext:Landroid/hardware/scontext/SContextMotion;
    .restart local p2
    :pswitch_4
    new-instance v4, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v4}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    .line 134
    .local v4, movementContext:Landroid/hardware/scontext/SContextMovement;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->mAction:I

    invoke-virtual {v4, v9}, Landroid/hardware/scontext/SContextMovement;->setAction(I)V

    .line 135
    invoke-virtual {v7, v4}, Landroid/hardware/scontext/SContextEvent;->setMovementContext(Landroid/hardware/scontext/SContextMovement;)V

    goto/16 :goto_0

    .line 139
    .end local v4           #movementContext:Landroid/hardware/scontext/SContextMovement;
    .restart local p2
    :pswitch_5
    new-instance v2, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {v2}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    .line 140
    .local v2, autoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->mAngle:I

    invoke-virtual {v2, v9}, Landroid/hardware/scontext/SContextAutoRotation;->setAngle(I)V

    .line 141
    invoke-virtual {v7, v2}, Landroid/hardware/scontext/SContextEvent;->setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 10
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v3, 0x0

    .line 200
    .local v3, used:I
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 201
    :try_start_0
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 202
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 205
    :cond_1
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v7

    if-ne p1, v7, :cond_0

    .line 206
    move-object v2, v0

    goto :goto_0

    .line 210
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    const-string v7, "SContextService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".unregisterCallback, used ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v2, :cond_3

    .line 213
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 215
    if-ne v3, v4, :cond_3

    .line 216
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 221
    :cond_3
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 223
    if-eqz v2, :cond_4

    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 224
    :cond_4
    monitor-exit v6

    move v4, v5

    .line 232
    :goto_1
    return v4

    .line 227
    :cond_5
    const/4 v5, 0x0

    invoke-interface {p1, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 228
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    const-string v5, "unregisterCallback"

    invoke-direct {p0, p1, v5}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 231
    monitor-exit v6

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 3
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 410
    invoke-static {}, Landroid/hardware/scontext/SContextUpdateContext;->getInstance()Landroid/hardware/scontext/SContextUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 411
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSContext() : event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method
