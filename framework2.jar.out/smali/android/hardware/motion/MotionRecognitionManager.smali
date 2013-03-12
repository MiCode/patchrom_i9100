.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "android.hardware.motion.MOTION_RECOGNITION_EVENT"

.field public static final EVENT_ALL:I = 0x3ffff

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x12

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x6

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0x1f

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_MOVEMENT:I = 0x10

.field public static final MOTION_USE_PROX:I = 0x4

.field public static final MOTION_USE_REACTIVE_ALERT:I = 0x20

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mSSPEnabled:Z

.field private motionService:Landroid/hardware/motion/IMotionRecognitionService;

.field private final mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final sListenerwithSSP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .parameter "mainLooper"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerwithSSP:Ljava/util/ArrayList;

    .line 427
    new-instance v1, Landroid/hardware/motion/MotionRecognitionManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionManager$1;-><init>(Landroid/hardware/motion/MotionRecognitionManager;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    .line 94
    const-string v1, "motion_recognition"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    .line 96
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 97
    new-instance v1, Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/hardware/scontext/SContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1}, Landroid/hardware/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in getSSPstatus: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    .line 400
    if-nez p0, :cond_0

    const-string v12, ""

    .line 423
    :goto_0
    return-object v12

    .line 401
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 403
    .local v10, encodedStr:Ljava/lang/StringBuffer;
    const/16 v8, 0x10

    .local v8, b4:C
    const/16 v6, 0x8

    .local v6, b3:C
    const/4 v4, 0x2

    .local v4, b1:C
    const/4 v2, 0x1

    .line 404
    .local v2, b0:C
    const/16 v3, 0xfe

    .local v3, b0mask:C
    const/16 v5, 0xfd

    .local v5, b1mask:C
    const/16 v7, 0xf7

    .local v7, b3mask:C
    const/16 v9, 0xef

    .line 406
    .local v9, b4mask:C
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 408
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .local v0, a:I
    move v1, v0

    .line 410
    .local v1, b:I
    and-int v12, v0, v4

    if-eqz v12, :cond_1

    or-int/2addr v1, v2

    .line 412
    :goto_2
    and-int v12, v0, v2

    if-eqz v12, :cond_2

    or-int/2addr v1, v4

    .line 415
    :goto_3
    and-int v12, v0, v8

    if-eqz v12, :cond_3

    or-int/2addr v1, v6

    .line 417
    :goto_4
    and-int v12, v0, v6

    if-eqz v12, :cond_4

    or-int/2addr v1, v8

    .line 420
    :goto_5
    int-to-char v12, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 406
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 411
    :cond_1
    and-int/2addr v1, v3

    goto :goto_2

    .line 413
    :cond_2
    and-int/2addr v1, v5

    goto :goto_3

    .line 416
    :cond_3
    and-int/2addr v1, v7

    goto :goto_4

    .line 418
    :cond_4
    and-int/2addr v1, v9

    goto :goto_5

    .line 423
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionManager;)Landroid/hardware/motion/IMotionRecognitionService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getMotionVersion()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x1

    .line 380
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/motion/MRListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 115
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 135
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 9
    .parameter "listener"
    .parameter "motion_sensors"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    and-int/lit8 p2, p2, 0x1f

    .line 145
    and-int/lit8 v5, p2, 0x1f

    if-nez v5, :cond_0

    .line 146
    const/4 p2, 0x1

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 150
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 151
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 152
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 153
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, strlistener:Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v6

    .line 175
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    .end local v4           #strlistener:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 151
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_3
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 161
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .restart local v4       #strlistener:Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .registerListener : success. listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", motion_sensors="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v6

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    .end local v4           #strlistener:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 164
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "MotionRecognitionManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 125
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_events"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 180
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 11
    .parameter "listener"
    .parameter "motion_events"
    .parameter "handler"

    .prologue
    const/4 v10, 0x1

    .line 183
    const/4 v4, 0x1

    .line 185
    .local v4, motion_sensors:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v7, 0x12

    if-ge v1, v7, :cond_1

    .line 186
    shl-int v3, v10, v1

    .line 187
    .local v3, motion_event:I
    and-int v7, v3, p2

    if-eqz v7, :cond_0

    .line 188
    sparse-switch v3, :sswitch_data_0

    .line 185
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :sswitch_1
    or-int/lit8 v4, v4, 0x20

    .line 197
    or-int/lit8 v4, v4, 0x10

    .line 198
    goto :goto_1

    .line 209
    :sswitch_2
    or-int/lit8 v4, v4, 0x2

    .line 210
    goto :goto_1

    .line 213
    :sswitch_3
    or-int/lit8 v4, v4, 0x6

    .line 214
    goto :goto_1

    .line 216
    :sswitch_4
    const/16 v4, 0x1f

    .line 217
    goto :goto_1

    .line 224
    .end local v3           #motion_event:I
    :cond_1
    if-eqz p1, :cond_2

    .line 225
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    .line 226
    :try_start_0
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 227
    .local v5, size:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_4

    .line 228
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 229
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v7

    if-ne v7, p1, :cond_3

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, strlistener:Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v8

    .line 272
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v5           #size:I
    .end local v6           #strlistener:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 227
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5       #size:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_4
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, v4, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 236
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionSensors()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    const/16 v9, 0x10

    if-ne v7, v9, :cond_7

    .line 239
    iget-boolean v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    if-ne v7, v10, :cond_6

    .line 240
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    if-nez v7, :cond_5

    .line 241
    const-string v7, "MotionRecognitionManager"

    const-string v9, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v10, 0x5

    invoke-virtual {v7, v9, v10}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 246
    :goto_4
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :goto_5
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .restart local v6       #strlistener:Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", motion_sensors="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    monitor-exit v8

    goto/16 :goto_3

    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v5           #size:I
    .end local v6           #strlistener:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 244
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5       #size:I
    :cond_5
    :try_start_3
    const-string v7, "MotionRecognitionManager"

    const-string v9, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in registerListenerEvent: "

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 250
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_5
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v7}, Landroid/hardware/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v7

    iput-boolean v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 254
    :goto_6
    :try_start_6
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSP disabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v7, v2, v4}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V

    goto/16 :goto_5

    .line 251
    :catch_1
    move-exception v0

    .line 252
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in getSSPstatus: "

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v7, v2, v4}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x3ffff -> :sswitch_4
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .locals 3

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1}, Landroid/hardware/motion/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1, p1}, Landroid/hardware/motion/IMotionRecognitionService;->setLogPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setLogPath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "status"

    .prologue
    .line 343
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 344
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 345
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 346
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 347
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 349
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 358
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 350
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 357
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 345
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 8
    .parameter "stopUp"
    .parameter "level1Up"
    .parameter "level2Up"
    .parameter "stopDown"
    .parameter "level1Down"
    .parameter "level2Down"

    .prologue
    .line 362
    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 363
    :catch_0
    move-exception v7

    .line 364
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    .line 275
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 276
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 278
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 279
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 280
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, listener_name:Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@ member "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #listener_name:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 285
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 286
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    if-ne v6, p1, :cond_5

    .line 287
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionSensors()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v8, 0x10

    if-ne v6, v8, :cond_4

    .line 290
    iget-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 291
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 292
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    if-gtz v6, :cond_1

    .line 293
    const-string v6, "MotionRecognitionManager"

    const-string v8, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 295
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 297
    :cond_1
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unregisterListener - mMovementCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_2
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, strlistener:Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .unregisterListener : / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    return-void

    .line 300
    .end local v5           #strlistener:Ljava/lang/String;
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_3
    :try_start_3
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6}, Landroid/hardware/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v6

    iput-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    :goto_3
    :try_start_4
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSP disabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in unregisterListener: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 321
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 301
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4       #size:I
    :catch_1
    move-exception v0

    .line 302
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in getSSPstatus: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 308
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 284
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .locals 7
    .parameter "listener"
    .parameter "bUseAlways"

    .prologue
    .line 325
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 326
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 327
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 328
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 329
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 331
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->useMotionAlways(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 340
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 332
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in useMotionAlways: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 339
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 327
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .useMotionAlways : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
