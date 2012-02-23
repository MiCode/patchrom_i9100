.class Lcom/android/server/location/GpsLocationProvider$SensorAiding;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorAiding"
.end annotation


# static fields
.field private static final ACCURACY_INDEX:I = 0x2

.field private static final ALTITUDE_INDEX:I = 0x2

.field private static final BEARING_INDEX:I = 0x0

.field private static final LATITUDE_INDEX:I = 0x0

.field private static final LONGITUDE_INDEX:I = 0x1

.field private static final SENSORAIDING_DR_ENABLE:Z = false

.field private static final SENSORAIDING_FORCECALL_CHECK_AHEAD_TIME:J = 0xc8L

.field private static final SENSORAIDING_FORCECALL_ENTRY_INTERVAL:J = 0x5dcL

.field private static final SENSORAIDING_FORCECALL_KEEP_INTERVAL:J = 0x3e8L

.field private static final SENSORAIDING_LOGGING:Ljava/lang/String; = "GpsLogging"

.field private static final SENSORAIDING_LOGGING_TEMP:Ljava/lang/String; = "DynamicAccuracyValue"

.field private static final SENSORAIDING_LPP_CHANGED_FULLPOWER:I = 0x3

.field private static final SENSORAIDING_LPP_CHANGED_LOWPOWER:I = 0x1

.field private static final SENSORAIDING_LPP_INVALID:I = -0x1

.field private static final SENSORAIDING_LPP_OPERATION_MODE_MAX:I = 0x4

.field private static final SENSORAIDING_LPP_RETAINED_FULLPOWER:I = 0x2

.field private static final SENSORAIDING_LPP_RETAINED_LOWPOWER:I = 0x0

.field private static final SENSORAIDING_OPMODE_MAX:I = 0x2

.field private static final SENSORAIDING_OPMODE_PEDESTRIAN:I = 0x0

.field private static final SENSORAIDING_OPMODE_UNKNOWN:I = -0x1

.field private static final SENSORAIDING_OPMODE_VEHICLE:I = 0x1

.field private static final SENSOR_PACKET_ARRAY_SIZE:I = 0x8

.field private static final SENSOR_PACKET_MEMBER_SIZE:I = 0x4

.field private static final SENSOR_SAMPLING_RATE:I = 0xea60

.field private static final SENSOR_SAMPLING_TIME:I = 0x3c

.field private static final SPEED_INDEX:I = 0x1


# instance fields
.field private mAccAccuracy:I

.field private mAccPacket:[[F

.field private mAccRecent:[F

.field private mDeliverLocation:[D

.field private mDeliverLocationExt:[F

.field private mGyrAccuracy:I

.field private mGyrPacket:[[F

.field private mGyrRecent:[F

.field private mGyroSupported:Z

.field private mLPPCurrentMode:I

.field private mLPPIsInStop:Z

.field private mLPPPreviousMode:I

.field private mLPPTest_PositionMode:I

.field private mMagAccuracy:I

.field private mMagPacket:[[F

.field private mMagRecent:[F

.field private mNmeaAlti:D

.field private mNmeaAltiDiff:D

.field private mNmeaDate:J

.field private mNmeaEW:C

.field private mNmeaHeading:F

.field private mNmeaLat:D

.field private mNmeaLon:D

.field private mNmeaNS:C

.field private mNmeaOrgGGA:Ljava/lang/String;

.field private mNmeaOrgGLL:Ljava/lang/String;

.field private mNmeaOrgRMC:Ljava/lang/String;

.field private mNmeaOrgVTG:Ljava/lang/String;

.field private mNmeaSpeed:F

.field private mNmeaUTC:J

.field private mNmeaValid:C

.field private mNmeaVirGGA:Ljava/lang/String;

.field private mNmeaVirGLL:Ljava/lang/String;

.field private mNmeaVirLOG:Ljava/lang/String;

.field private mNmeaVirRMC:Ljava/lang/String;

.field private mNmeaVirVTG:Ljava/lang/String;

.field private mOriAccuracy:I

.field private mOriPacket:[[F

.field private mOriRecent:[F

.field private mReportNmeaCallFlag:I

.field private mRequestLocation:[D

.field private mRequestLocationExt:[F

.field private mRequestValid:[I

.field private mSensorAidingFlags:I

.field private mSensorAidingIsPedestrian:Z

.field private mSensorAidingIsValid:Z

.field private mSensorAidingIsVehicle:Z

.field private mSensorAidingLogging:I

.field private mSensorAidingOpMode:I

.field private mSensorAidingSetting:I

.field private mSensorPacketIndex:I

.field private mSensorPreviousSampledTime:J

.field private mSensorSamplingIntervalTime:[J

.field private mSensorSystemTime:[J

.field private mSnrs_SensorAiding:[F

.field private mSvAzimuths_SensorAiding:[F

.field private mSvCountSatInUse:I

.field private mSvCountUsed_SensorAiding:I

.field private mSvCountView_SensorAiding:I

.field private mSvElevations_SensorAiding:[F

.field private mSvMasks_SensorAiding:[I

.field private mSvs_SensorAiding:[I

.field private mTimeIntervalForceCall:J

.field private mTimeStampLastReportedLocation:J

.field private mTimeStampLastReportedNmea:J

.field private mTimeUTCLastReportedLocation:J

.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private final sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorOrientationListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1671
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    .line 1542
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    .line 1550
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    .line 1551
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    .line 1552
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    .line 1553
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    .line 1557
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    .line 1558
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    .line 1559
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    .line 1560
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 1563
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    .line 1564
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    .line 1565
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    .line 1566
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    .line 1568
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    .line 1569
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    .line 1570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 1572
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 1575
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    .line 1585
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    .line 1586
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    .line 1587
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    .line 1588
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    .line 1589
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    .line 1592
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1593
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    .line 1594
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 1595
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    .line 1606
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 1610
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    .line 1611
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    .line 1612
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    .line 1613
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    .line 1614
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    .line 1615
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 1616
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1617
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 1627
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1628
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 1630
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 1632
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1633
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1641
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    .line 1642
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    .line 1643
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    .line 1645
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    .line 1648
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 1649
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 1650
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 1651
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 1652
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    .line 1653
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 1654
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 1655
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    .line 1656
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    .line 1658
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 1659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    .line 1660
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 1661
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 1662
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 1663
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    .line 1664
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    .line 1665
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    .line 1666
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    .line 1667
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaValid:C

    .line 1668
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    .line 1669
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    .line 2235
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 2267
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    .line 2295
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    .line 2320
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 1672
    return-void
.end method

.method private SensorAidingActivateAllSensor(Z)V
    .locals 5
    .parameter "IsAllSensor"

    .prologue
    const/4 v3, 0x1

    const v4, 0xea60

    .line 1743
    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    .line 1745
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1748
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1749
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1753
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-nez v0, :cond_2

    .line 1755
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 1756
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingActivateAllSensor : Gyroscope sensor is NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_2
    return-void
.end method

.method private SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "Nmea"

    .prologue
    .line 2381
    const/4 v0, 0x0

    .line 2383
    .local v0, checkSumVal:C
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2384
    .local v2, szTemp:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2385
    aget-char v3, v2, v1

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_1

    .line 2392
    :cond_0
    const-string v3, "%02X\r\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2387
    :cond_1
    aget-char v3, v2, v1

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2

    .line 2388
    aget-char v3, v2, v1

    xor-int/2addr v3, v0

    int-to-char v0, v3

    .line 2384
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private SensorAidingDeactivateAllSensor(Z)V
    .locals 3
    .parameter "IsAllSensor"

    .prologue
    const/4 v2, 0x1

    .line 1761
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 1762
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeactivateAllSensor : No registered sensorManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_0
    :goto_0
    return-void

    .line 1766
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-ne v0, v2, :cond_2

    .line 1767
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1771
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 1772
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1774
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    .line 1775
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1778
    :cond_4
    if-ne p1, v2, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    .line 1780
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1782
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method private SensorAidingDeliverSensorPacket()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2117
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;[[F[[F[[F[J[J)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 2124
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    if-eq v0, v1, :cond_0

    .line 2125
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 2175
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAiding LPP : Not Supported Mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2181
    :cond_0
    return-void

    .line 2127
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2131
    :pswitch_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Keep GPS OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2135
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2136
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-ne v0, v7, :cond_1

    .line 2138
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    .line 2140
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2141
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_stop()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3900(Lcom/android/server/location/GpsLocationProvider;)Z

    .line 2142
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvCount:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    #calls: Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V
    invoke-static {v0, v7, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4100(Lcom/android/server/location/GpsLocationProvider;II)V

    .line 2143
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Turn GPS OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2145
    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Already GPS Turned OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2150
    :pswitch_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Keep GPS ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2154
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2155
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2156
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$3802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2157
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$2502(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 2158
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2402(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2159
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4202(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2160
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_start()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2161
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2162
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2163
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : native_start failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2166
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    .line 2167
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Turn GPS ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2170
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Already GPS Turned ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2125
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private SensorAidingDeliverSvStatus()V
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sv_status()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2114
    return-void
.end method

.method private SensorAidingDeregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1725
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    .line 1727
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_finalize()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)V

    .line 1732
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1733
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1736
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1737
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1739
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeregister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return-void
.end method

.method private SensorAidingGetAccuracy()F
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetAltitde()D
    .locals 2

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetBearing()F
    .locals 2

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetFlags()I
    .locals 1

    .prologue
    .line 2082
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    return v0
.end method

.method private SensorAidingGetLatitude()D
    .locals 2

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetLongitude()D
    .locals 2

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetOpMode()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2070
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-nez v0, :cond_0

    .line 2071
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    .line 2078
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    return v0

    .line 2072
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-ne v0, v1, :cond_1

    .line 2073
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0

    .line 2075
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0
.end method

.method private SensorAidingGetSpeed()F
    .locals 2

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetValid()I
    .locals 2

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingIncreaseUTC()V
    .locals 27

    .prologue
    .line 2349
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v21, v0

    .line 2350
    .local v21, nUTCTimeAll:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v19, v0

    .line 2353
    .local v19, nUTCDateAll:J
    const-wide/16 v3, 0x2710

    div-long v11, v21, v3

    .line 2354
    .local v11, nHour:J
    const-wide/16 v3, 0x2710

    rem-long v3, v21, v3

    const-wide/16 v5, 0x64

    div-long v13, v3, v5

    .line 2355
    .local v13, nMinute:J
    const-wide/16 v3, 0x64

    rem-long v17, v21, v3

    .line 2357
    .local v17, nSecond:J
    const-wide/16 v3, 0x2710

    div-long v9, v19, v3

    .line 2358
    .local v9, nDate:J
    const-wide/16 v3, 0x2710

    rem-long v3, v19, v3

    const-wide/16 v5, 0x64

    div-long v15, v3, v5

    .line 2359
    .local v15, nMonth:J
    const-wide/16 v3, 0x64

    rem-long v23, v19, v3

    .line 2362
    .local v23, nYear:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2363
    .local v2, utcDate:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 2364
    const-wide/16 v3, 0x7d0

    add-long v3, v3, v23

    long-to-int v3, v3

    const-wide/16 v4, 0x1

    sub-long v4, v15, v4

    long-to-int v4, v4

    long-to-int v5, v9

    long-to-int v6, v11

    long-to-int v7, v13

    const-wide/16 v25, 0x1

    add-long v25, v25, v17

    move-wide/from16 v0, v25

    long-to-int v8, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2367
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    int-to-long v0, v3

    move-wide/from16 v23, v0

    .line 2368
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v15, v3

    .line 2369
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v9, v3

    .line 2370
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v11, v3

    .line 2371
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v13, v3

    .line 2372
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 2374
    const-wide/16 v3, 0x2710

    mul-long/2addr v3, v11

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v13

    add-long/2addr v3, v5

    add-long v3, v3, v17

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 2375
    const-wide/16 v3, 0x2710

    mul-long/2addr v3, v9

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v15

    add-long/2addr v3, v5

    add-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    .line 2376
    return-void
.end method

.method private SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "NmeaOrg"

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 2596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    .line 2600
    const-string v2, "$GPGGA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 2601
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 2604
    const-string v2, "[,*]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2605
    .local v0, splitNmea:[Ljava/lang/String;
    const/4 v2, 0x6

    aget-object v2, v0, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2606
    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2607
    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    :cond_0
    move-object p1, v1

    .line 2641
    .end local v0           #splitNmea:[Ljava/lang/String;
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 2613
    .restart local p1
    :cond_2
    const-string v2, "$GPRMC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 2614
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 2617
    const-string v2, "[,*]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2618
    .restart local v0       #splitNmea:[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 2619
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2620
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 2622
    :cond_3
    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2623
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    :cond_4
    move-object p1, v1

    .line 2628
    goto :goto_0

    .line 2629
    .end local v0           #splitNmea:[Ljava/lang/String;
    :cond_5
    const-string v2, "$GPVTG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 2630
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    move-object p1, v1

    .line 2633
    goto :goto_0

    .line 2634
    :cond_6
    const-string v2, "$GPGLL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 2635
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    move-object p1, v1

    .line 2638
    goto :goto_0
.end method

.method private SensorAidingLocationChanged(IDDDFFFJ)V
    .locals 15
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1986
    const/4 v2, 0x6

    new-array v5, v2, [I

    .line 1988
    .local v5, utcTime:[I
    const-string v2, "RawGPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    float-to-double v6, v0

    const-wide v13, 0x400ccccccccccccdL

    mul-double/2addr v6, v13

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p11

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    .line 1991
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x1

    aput-wide p4, v2, v3

    .line 1992
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x2

    aput-wide p6, v2, v3

    .line 1993
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x0

    aput p9, v2, v3

    .line 1994
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x1

    const v4, 0x40666666

    mul-float v4, v4, p8

    aput v4, v2, v3

    .line 1995
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x2

    aput p10, v2, v3

    .line 1997
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1998
    .local v12, utcDate:Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1999
    .local v10, tempTimeInMillis:J
    move-wide/from16 v0, p11

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2000
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2001
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v2

    .line 2002
    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2003
    const/4 v2, 0x3

    const/16 v3, 0xb

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2004
    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2005
    const/4 v2, 0x5

    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    .line 2011
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2012
    const/4 v8, 0x1

    .line 2017
    .local v8, isValid:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_gps_data([D[F[IJII)V
    invoke-static/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;[D[F[IJII)V

    .line 2021
    return-void

    .line 2014
    .end local v8           #isValid:I
    :cond_0
    const/4 v8, 0x0

    .restart local v8       #isValid:I
    goto :goto_0
.end method

.method private SensorAidingMakeCompensatedNmea()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 2646
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2647
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2648
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2649
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2650
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2652
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2653
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2654
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2655
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2656
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2658
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2659
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2660
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2661
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2662
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2664
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2665
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2666
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2667
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2668
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2670
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2671
    return-void
.end method

.method private SensorAidingMakeSensorPacket()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    .line 2184
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    if-ne v0, v4, :cond_2

    .line 2185
    :cond_0
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingMakeSensorPacket : Not Ready ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_1
    :goto_0
    return-void

    .line 2190
    :cond_2
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    .line 2191
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2194
    :cond_3
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/4 v0, 0x4

    if-ge v13, v0, :cond_4

    .line 2195
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2196
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2197
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2198
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    .line 2194
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2201
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 2202
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    cmp-long v0, v4, v11

    if-nez v0, :cond_6

    .line 2203
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aput-wide v11, v0, v4

    .line 2207
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v4, v0, v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 2209
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2210
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    .line 2212
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSensorPacket()V

    .line 2217
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long/2addr v6, v9

    const-wide/16 v9, 0xc8

    sub-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 2220
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 2221
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SensorAidingMakeSensorPacket : Call reportLocation() forcefully : SystemTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Last : Systemtime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UTC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long v11, v4, v6

    move-wide v4, v2

    move-wide v6, v2

    move v9, v8

    move v10, v8

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportLocation(IDDDFFFJ)V
    invoke-static/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;IDDDFFFJ)V

    .line 2223
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    goto/16 :goto_0

    .line 2205
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v5, v5, v6

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    sub-long/2addr v5, v9

    aput-wide v5, v0, v4

    goto/16 :goto_2

    .line 2225
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2229
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1

    .line 2230
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    goto/16 :goto_0
.end method

.method private SensorAidingMakeVirtualNmea()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 2675
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingIncreaseUTC()V

    .line 2677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2699
    :goto_0
    return-void

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2683
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2684
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2686
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2687
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2688
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2690
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2691
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2692
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2694
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2695
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2696
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2698
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0
.end method

.method private SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sTitle"
    .parameter "sLog"

    .prologue
    const/4 v5, 0x0

    .line 2703
    if-nez p2, :cond_1

    .line 2722
    :cond_0
    :goto_0
    return-void

    .line 2709
    :cond_1
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-eqz v0, :cond_0

    .line 2713
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    .line 2719
    :goto_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2720
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2721
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0

    .line 2717
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@SENAD,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_1
.end method

.method private SensorAidingRegister()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1676
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    .line 1677
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    .line 1678
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    .line 1679
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 1680
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 1681
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 1682
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    .line 1683
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1684
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 1685
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 1686
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 1687
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1688
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 1689
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1690
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 1692
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 1693
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1694
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1696
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    .line 1700
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "GpsLogging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    .line 1709
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingRegister : Logging is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-nez v0, :cond_0

    const-string v0, "OFF"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_initialize(I)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 1716
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingSupportInversePortraitMode(I)V

    .line 1717
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    .line 1718
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    .line 1720
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingRegister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    return-void

    .line 1709
    :cond_0
    const-string v0, "ON"

    goto :goto_0
.end method

.method private SensorAidingReportLocation(IDDDFFFJ)V
    .locals 8
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1808
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_pdr_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1809
    .local v2, CurrentSetting:I
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-eq v2, v4, :cond_0

    .line 1810
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1811
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    .line 1815
    :goto_0
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 1816
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorAidingReportLocation : SensorAiding setting has been changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_0
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v4, :cond_2

    .line 1821
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1893
    :goto_1
    return-void

    .line 1813
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    goto :goto_0

    .line 1825
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1826
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 1828
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1829
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1830
    const-wide/16 v4, 0x5dc

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    .line 1833
    :cond_3
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingLocationChanged(IDDDFFFJ)V

    .line 1834
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRequestLocation()V

    .line 1837
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1838
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v3

    .line 1841
    .local v3, SensorAidingAccuracy:F
    float-to-double v4, v3

    const-wide v6, 0x4072c00000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 1842
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1843
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1848
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v5, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v4, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$2402(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 1849
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1851
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorAidingReportLocation : LOCATION_INVALID SensorAiding\'s accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    .end local v3           #SensorAidingAccuracy:F
    :cond_4
    :goto_2
    if-nez p1, :cond_9

    .line 1878
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1881
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeVirtualNmea()V

    .line 1889
    :cond_5
    :goto_3
    const-string v4, "RawGGA"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 1890
    const-string v4, "RawRMC"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 1891
    const-string v4, "RawVTG"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    .line 1892
    const-string v4, "RawGLL"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    goto/16 :goto_1

    .line 1856
    .restart local v3       #SensorAidingAccuracy:F
    :cond_6
    if-nez p1, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1857
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$2502(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 1859
    const-string v4, "GpsLocationProvider"

    const-string v5, "SensorAidingReportLocation : Set mTTFF = 1 to be sent an intent GPS_FIX_CHANGE_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_7
    const/16 v4, 0x1f

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1863
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1866
    cmpl-float v4, v3, p10

    if-eqz v4, :cond_4

    .line 1867
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v5, 0x2

    const/high16 v6, 0x41f0

    add-float/2addr v6, v3

    aput v6, v4, v5

    goto :goto_2

    .line 1872
    .end local v3           #SensorAidingAccuracy:F
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1874
    const-string v4, "GpsLocationProvider"

    const-string v5, "SensorAidingReportLocation : Bypass raw GPS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1884
    :cond_9
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeCompensatedNmea()V

    goto :goto_3
.end method

.method private SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "NmeaOrg"

    .prologue
    .line 1958
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v0, :cond_0

    .line 1977
    .end local p1
    :goto_0
    return-object p1

    .line 1962
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    packed-switch v0, :pswitch_data_0

    .line 1976
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingReportNmea : Invalid "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1964
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1966
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    goto :goto_0

    .line 1968
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    goto :goto_0

    .line 1970
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    goto :goto_0

    .line 1972
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    goto :goto_0

    .line 1974
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_0

    .line 1962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private SensorAidingReportSvStatus(I)V
    .locals 8
    .parameter "svCount"

    .prologue
    const/4 v7, 0x1

    const/16 v4, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1896
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v2, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1900
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSvStatus()V

    .line 1902
    const/4 v1, 0x0

    .line 1903
    .local v1, svCountUse:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 1905
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvs:[I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v3

    aget v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v7, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 1906
    add-int/lit8 v1, v1, 0x1

    .line 1903
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1911
    :cond_3
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 1914
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_4

    if-le v1, v6, :cond_5

    .line 1915
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvs:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1916
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1917
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1918
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1919
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v4, 0x3

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1920
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 1921
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1927
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    if-ne v2, v7, :cond_6

    .line 1930
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    .line 1947
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aput v5, v2, v6

    .line 1948
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    goto/16 :goto_0
.end method

.method private SensorAidingRequestLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2027
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_request_gps_data([D[F[I)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;[D[F[I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    .line 2030
    const-string v0, "AidGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v1, v0, v5

    const v2, 0x3e8e38e4

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 2034
    return-void
.end method

.method private SensorAidingRotationChanged()V
    .locals 4

    .prologue
    .line 2038
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 2040
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2041
    .local v0, nRotation:I
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorAidingRotationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_rotation_data(I)V
    invoke-static {v1, v0}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2048
    .end local v0           #nRotation:I
    :cond_0
    return-void
.end method

.method private SensorAidingStartNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1787
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 1788
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1789
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPTest_PositionMode:I

    .line 1791
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 1792
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1793
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    .line 1795
    :cond_0
    return-void
.end method

.method private SensorAidingStopNavigating()Z
    .locals 2

    .prologue
    .line 1799
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1800
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    .line 1801
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1803
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method private SensorAidingSupportInversePortraitMode(I)V
    .locals 3
    .parameter "isSupported"

    .prologue
    .line 2057
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingSupportInversePortraitMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_support_inverse_portrait_mode(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2063
    return-void
.end method

.method private SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "NmeaOrg"

    .prologue
    .line 2396
    const/4 v7, 0x0

    .line 2397
    .local v7, nTemp:I
    const-wide/16 v4, 0x0

    .line 2400
    .local v4, fTemp:D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetOpMode()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v3, p1

    .line 2589
    .end local p1
    .local v3, NmeaOrg:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2405
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v3, p1

    .line 2406
    .end local p1
    .restart local v3       #NmeaOrg:Ljava/lang/String;
    goto :goto_0

    .line 2410
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .restart local p1
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 2411
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    int-to-double v0, v7

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    .line 2412
    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2413
    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    .line 2414
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2415
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_6

    .line 2416
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2417
    const/16 v19, 0x53

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    .line 2423
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 2424
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    int-to-double v0, v7

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    .line 2425
    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2426
    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    .line 2427
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2428
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_7

    .line 2429
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2430
    const/16 v19, 0x57

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    .line 2435
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    .line 2436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    .line 2437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v19

    const v20, 0x40666666

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    .line 2440
    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2441
    .local v14, strLat:Ljava/lang/String;
    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2442
    .local v15, strLon:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2443
    .local v9, strAlti:Ljava/lang/String;
    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 2444
    .local v16, strSpeed_K:Ljava/lang/String;
    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    const v23, 0x3fed0e56

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 2445
    .local v17, strSpeed_N:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2447
    .local v13, strHeading:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 2449
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v22

    const/high16 v23, 0x42c8

    div-float v22, v22, v23

    const/high16 v23, 0x4000

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2450
    .local v12, strHDOP:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2451
    .local v10, strAltiDiff:Ljava/lang/String;
    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2452
    .local v18, strUTC:Ljava/lang/String;
    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2454
    .local v11, strDate:Ljava/lang/String;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGGA,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",1,00,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,,*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2455
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2457
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPRMC,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",,,A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2458
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2462
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPVTG,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",T,,M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",N,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",K*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2463
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2467
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 2468
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGLL,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2469
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2473
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v10           #strAltiDiff:Ljava/lang/String;
    .end local v11           #strDate:Ljava/lang/String;
    .end local v12           #strHDOP:Ljava/lang/String;
    .end local v18           #strUTC:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v3, p1

    .line 2589
    .end local p1
    .restart local v3       #NmeaOrg:Ljava/lang/String;
    goto/16 :goto_0

    .line 2419
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .end local v9           #strAlti:Ljava/lang/String;
    .end local v13           #strHeading:Ljava/lang/String;
    .end local v14           #strLat:Ljava/lang/String;
    .end local v15           #strLon:Ljava/lang/String;
    .end local v16           #strSpeed_K:Ljava/lang/String;
    .end local v17           #strSpeed_N:Ljava/lang/String;
    .restart local p1
    :cond_6
    const/16 v19, 0x4e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    goto/16 :goto_1

    .line 2432
    :cond_7
    const/16 v19, 0x45

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    goto/16 :goto_2

    .line 2477
    .restart local v9       #strAlti:Ljava/lang/String;
    .restart local v13       #strHeading:Ljava/lang/String;
    .restart local v14       #strLat:Ljava/lang/String;
    .restart local v15       #strLon:Ljava/lang/String;
    .restart local v16       #strSpeed_K:Ljava/lang/String;
    .restart local v17       #strSpeed_N:Ljava/lang/String;
    :cond_8
    const-string v19, "[,*]"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2479
    .local v8, splitNmea:[Ljava/lang/String;
    const-string v19, "$GPGGA"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 2480
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2481
    const/4 v6, 0x1

    .local v6, i:I
    :goto_4
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_9

    .line 2482
    packed-switch v6, :pswitch_data_0

    .line 2502
    :pswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2481
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2484
    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2485
    goto :goto_5

    .line 2487
    :pswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2488
    goto :goto_5

    .line 2490
    :pswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2491
    goto :goto_5

    .line 2493
    :pswitch_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2494
    goto/16 :goto_5

    .line 2496
    :pswitch_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2497
    goto/16 :goto_5

    .line 2499
    :pswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2500
    goto/16 :goto_5

    .line 2506
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2507
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2508
    .end local v6           #i:I
    :cond_a
    const-string v19, "$GPRMC"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 2509
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2510
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_6
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_b

    .line 2511
    packed-switch v6, :pswitch_data_1

    .line 2534
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2510
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2513
    :pswitch_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2514
    goto :goto_7

    .line 2516
    :pswitch_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2517
    goto :goto_7

    .line 2519
    :pswitch_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2520
    goto :goto_7

    .line 2522
    :pswitch_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2523
    goto :goto_7

    .line 2525
    :pswitch_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2526
    goto/16 :goto_7

    .line 2528
    :pswitch_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2529
    goto/16 :goto_7

    .line 2531
    :pswitch_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2532
    goto/16 :goto_7

    .line 2538
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2539
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2540
    .end local v6           #i:I
    :cond_c
    const-string v19, "$GPVTG"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 2541
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2542
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_8
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 2543
    sparse-switch v6, :sswitch_data_0

    .line 2554
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2542
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2545
    :sswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2546
    goto :goto_9

    .line 2548
    :sswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2549
    goto :goto_9

    .line 2551
    :sswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2552
    goto :goto_9

    .line 2558
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2559
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2560
    .end local v6           #i:I
    :cond_e
    const-string v19, "$GPGLL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 2561
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2562
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_a
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_f

    .line 2563
    packed-switch v6, :pswitch_data_2

    .line 2580
    :pswitch_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2562
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2565
    :pswitch_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2566
    goto :goto_b

    .line 2568
    :pswitch_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2569
    goto :goto_b

    .line 2571
    :pswitch_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2572
    goto :goto_b

    .line 2574
    :pswitch_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2575
    goto/16 :goto_b

    .line 2577
    :pswitch_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2578
    goto/16 :goto_b

    .line 2584
    :cond_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2585
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2482
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 2511
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2543
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 2563
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1540
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportSvStatus(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1540
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1540
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1540
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1540
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1540
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStartNavigating()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStopNavigating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;IDDDFFFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 1540
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportLocation(IDDDFFFJ)V

    return-void
.end method
