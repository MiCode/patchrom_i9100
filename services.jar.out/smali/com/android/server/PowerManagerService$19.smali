.class Lcom/android/server/PowerManagerService$19;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SAMPLING_PERIOD_MS:I = 0xc8


# instance fields
.field private mAccelerationDistrust:I

.field private mCnt:I

.field private mTiltDistrust:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5002
    iput-object p1, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5011
    iput v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    .line 5012
    iput v0, p0, Lcom/android/server/PowerManagerService$19;->mTiltDistrust:I

    .line 5013
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/PowerManagerService$19;->mCnt:I

    return-void
.end method

.method private handleAccelerationDistrust(F)V
    .locals 2
    .parameter "deviation"

    .prologue
    .line 5031
    const/high16 v0, 0x3fc0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 5032
    iget v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 5033
    iget v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    .line 5038
    :cond_0
    :goto_0
    return-void

    .line 5035
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    if-lez v0, :cond_0

    .line 5036
    iget v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    goto :goto_0
.end method

.method private lowpassFilter(FFF)F
    .locals 2
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    .line 5016
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .locals 2
    .parameter "z"
    .parameter "magnitude"

    .prologue
    .line 5027
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 5019
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 5071
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    .line 5042
    iget-object v7, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$10300(Lcom/android/server/PowerManagerService;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5043
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tilt onSensorChanged : return, isScreenTurningOffLocked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$10300(Lcom/android/server/PowerManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    :cond_0
    :goto_0
    return-void

    .line 5049
    :cond_1
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 5050
    .local v4, x:F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v5, v7, v8

    .line 5051
    .local v5, y:F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v6, v7, v8

    .line 5052
    .local v6, z:F
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/PowerManagerService$19;->vectorMagnitude(FFF)F

    move-result v2

    .line 5053
    .local v2, magnitude:F
    const v7, 0x411ce80a

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 5055
    .local v1, deviation:F
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService$19;->handleAccelerationDistrust(F)V

    .line 5056
    const/high16 v7, 0x3fc0

    cmpg-float v7, v2, v7

    if-ltz v7, :cond_0

    .line 5061
    const/high16 v0, 0x3f80

    .line 5062
    .local v0, alpha:F
    iget v7, p0, Lcom/android/server/PowerManagerService$19;->mAccelerationDistrust:I

    if-lez v7, :cond_2

    .line 5063
    const v0, 0x3dba2e8c

    .line 5065
    :cond_2
    invoke-direct {p0, v6, v2}, Lcom/android/server/PowerManagerService$19;->tiltAngle(FF)F

    move-result v3

    .line 5066
    .local v3, newTiltAngle:F
    iget-object v7, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v8, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTiltAngle:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$10600(Lcom/android/server/PowerManagerService;)F

    move-result v8

    invoke-direct {p0, v3, v8, v0}, Lcom/android/server/PowerManagerService$19;->lowpassFilter(FFF)F

    move-result v8

    #setter for: Lcom/android/server/PowerManagerService;->mTiltAngle:F
    invoke-static {v7, v8}, Lcom/android/server/PowerManagerService;->access$10602(Lcom/android/server/PowerManagerService;F)F

    goto :goto_0
.end method
