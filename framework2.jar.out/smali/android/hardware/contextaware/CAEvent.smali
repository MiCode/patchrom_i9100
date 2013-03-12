.class public Landroid/hardware/contextaware/CAEvent;
.super Ljava/lang/Object;
.source "CAEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUTO_ROTATION:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/CAEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final GESTURE_APPROACH:I

.field public static final LOCATION:I

.field public static final MOTION:I

.field public static final MOVEMENT:I

.field public static final MOVING:I

.field public static final PEDOMETER:I

.field public static final POWER_NOTI:I

.field public static final RAW_SENSOR:I

.field public static final STEP_COUNT_ALERT:I


# instance fields
.field private event:I

.field private mAutoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;

.field private mGestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;

.field private mLocationContext:Landroid/hardware/contextaware/CALocationContext;

.field private mMotionContext:Landroid/hardware/contextaware/CAMotionContext;

.field private mMovementContext:Landroid/hardware/contextaware/CAMovementContext;

.field private mMovingContext:Landroid/hardware/contextaware/CAMovingContext;

.field private mPedometerContext:Landroid/hardware/contextaware/CAPedometerContext;

.field private mPowerNoti:Landroid/hardware/contextaware/CAPowerNotiContext;

.field private mRawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;

.field private mStepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->LOCATION:I

    .line 30
    sget-object v0, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->MOVING:I

    .line 33
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->PEDOMETER:I

    .line 37
    sget-object v0, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_SENSOR:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->RAW_SENSOR:I

    .line 41
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->GESTURE_APPROACH:I

    .line 45
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->STEP_COUNT_ALERT:I

    .line 49
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->MOTION:I

    .line 53
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->MOVEMENT:I

    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->AUTO_ROTATION:I

    .line 60
    sget-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/CAEvent;->POWER_NOTI:I

    .line 377
    new-instance v0, Landroid/hardware/contextaware/CAEvent$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/CAEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/CAEvent;->event:I

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/CAEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 110
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAEvent;->event:I

    .line 354
    const-class v0, Landroid/hardware/contextaware/CALocationContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CALocationContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mLocationContext:Landroid/hardware/contextaware/CALocationContext;

    .line 356
    const-class v0, Landroid/hardware/contextaware/CAMovingContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAMovingContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMovingContext:Landroid/hardware/contextaware/CAMovingContext;

    .line 358
    const-class v0, Landroid/hardware/contextaware/CAPedometerContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAPedometerContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mPedometerContext:Landroid/hardware/contextaware/CAPedometerContext;

    .line 360
    const-class v0, Landroid/hardware/contextaware/CARawSensorContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CARawSensorContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mRawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;

    .line 362
    const-class v0, Landroid/hardware/contextaware/CAGestureApproachContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAGestureApproachContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mGestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;

    .line 364
    const-class v0, Landroid/hardware/contextaware/CAStepCountAlertContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAStepCountAlertContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mStepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;

    .line 366
    const-class v0, Landroid/hardware/contextaware/CAMotionContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAMotionContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMotionContext:Landroid/hardware/contextaware/CAMotionContext;

    .line 368
    const-class v0, Landroid/hardware/contextaware/CAMovementContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAMovementContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMovementContext:Landroid/hardware/contextaware/CAMovementContext;

    .line 370
    const-class v0, Landroid/hardware/contextaware/CAAutoRotationContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAAutoRotationContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mAutoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;

    .line 372
    const-class v0, Landroid/hardware/contextaware/CAPowerNotiContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/CAPowerNotiContext;

    iput-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mPowerNoti:Landroid/hardware/contextaware/CAPowerNotiContext;

    .line 374
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoRotationContext()Landroid/hardware/contextaware/CAAutoRotationContext;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mAutoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;

    return-object v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/hardware/contextaware/CAEvent;->event:I

    return v0
.end method

.method public getGestureApproachContext()Landroid/hardware/contextaware/CAGestureApproachContext;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mGestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;

    return-object v0
.end method

.method public getLocationContext()Landroid/hardware/contextaware/CALocationContext;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mLocationContext:Landroid/hardware/contextaware/CALocationContext;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/contextaware/CAMotionContext;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMotionContext:Landroid/hardware/contextaware/CAMotionContext;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/contextaware/CAMovementContext;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMovementContext:Landroid/hardware/contextaware/CAMovementContext;

    return-object v0
.end method

.method public getMovingContext()Landroid/hardware/contextaware/CAMovingContext;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMovingContext:Landroid/hardware/contextaware/CAMovingContext;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/contextaware/CAPedometerContext;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mPedometerContext:Landroid/hardware/contextaware/CAPedometerContext;

    return-object v0
.end method

.method public getPowerNotiContext()Landroid/hardware/contextaware/CAPowerNotiContext;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mPowerNoti:Landroid/hardware/contextaware/CAPowerNotiContext;

    return-object v0
.end method

.method public getRawSensorContext()Landroid/hardware/contextaware/CARawSensorContext;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mRawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/contextaware/CAStepCountAlertContext;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mStepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;

    return-object v0
.end method

.method protected setAutoRotationContext(Landroid/hardware/contextaware/CAAutoRotationContext;)V
    .locals 0
    .parameter "autoRotationContext"

    .prologue
    .line 304
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mAutoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;

    .line 305
    return-void
.end method

.method protected setEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 128
    iput p1, p0, Landroid/hardware/contextaware/CAEvent;->event:I

    .line 129
    return-void
.end method

.method protected setGestureApproachContext(Landroid/hardware/contextaware/CAGestureApproachContext;)V
    .locals 0
    .parameter "gestureApproachContext"

    .prologue
    .line 224
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mGestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;

    .line 225
    return-void
.end method

.method protected setLocationContext(Landroid/hardware/contextaware/CALocationContext;)V
    .locals 0
    .parameter "locationContext"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mLocationContext:Landroid/hardware/contextaware/CALocationContext;

    .line 148
    return-void
.end method

.method protected setMotionContext(Landroid/hardware/contextaware/CAMotionContext;)V
    .locals 0
    .parameter "motionContext"

    .prologue
    .line 264
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mMotionContext:Landroid/hardware/contextaware/CAMotionContext;

    .line 265
    return-void
.end method

.method protected setMovementContext(Landroid/hardware/contextaware/CAMovementContext;)V
    .locals 0
    .parameter "movementContext"

    .prologue
    .line 284
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mMovementContext:Landroid/hardware/contextaware/CAMovementContext;

    .line 285
    return-void
.end method

.method protected setMovingContext(Landroid/hardware/contextaware/CAMovingContext;)V
    .locals 0
    .parameter "movingContext"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mMovingContext:Landroid/hardware/contextaware/CAMovingContext;

    .line 167
    return-void
.end method

.method protected setPedometerContext(Landroid/hardware/contextaware/CAPedometerContext;)V
    .locals 0
    .parameter "pedometerContext"

    .prologue
    .line 185
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mPedometerContext:Landroid/hardware/contextaware/CAPedometerContext;

    .line 186
    return-void
.end method

.method protected setPowerNotiContext(Landroid/hardware/contextaware/CAPowerNotiContext;)V
    .locals 0
    .parameter "powerNoti"

    .prologue
    .line 313
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mPowerNoti:Landroid/hardware/contextaware/CAPowerNotiContext;

    .line 314
    return-void
.end method

.method protected setRawSensorContext(Landroid/hardware/contextaware/CARawSensorContext;)V
    .locals 0
    .parameter "rawsensorContext"

    .prologue
    .line 204
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mRawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;

    .line 205
    return-void
.end method

.method protected setStepCountAlertContext(Landroid/hardware/contextaware/CAStepCountAlertContext;)V
    .locals 0
    .parameter "stepCountAlertContext"

    .prologue
    .line 244
    iput-object p1, p0, Landroid/hardware/contextaware/CAEvent;->mStepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;

    .line 245
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 333
    iget v0, p0, Landroid/hardware/contextaware/CAEvent;->event:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mLocationContext:Landroid/hardware/contextaware/CALocationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 335
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMovingContext:Landroid/hardware/contextaware/CAMovingContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 336
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mPedometerContext:Landroid/hardware/contextaware/CAPedometerContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 337
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mRawSensorContext:Landroid/hardware/contextaware/CARawSensorContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mGestureApproachContext:Landroid/hardware/contextaware/CAGestureApproachContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 339
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mStepCountAlertContext:Landroid/hardware/contextaware/CAStepCountAlertContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 340
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMotionContext:Landroid/hardware/contextaware/CAMotionContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 341
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mMovementContext:Landroid/hardware/contextaware/CAMovementContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 342
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mAutoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 343
    iget-object v0, p0, Landroid/hardware/contextaware/CAEvent;->mPowerNoti:Landroid/hardware/contextaware/CAPowerNotiContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    return-void
.end method
