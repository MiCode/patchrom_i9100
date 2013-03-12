.class public Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
.super Ljava/lang/Object;
.source "RawSensorRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/RawSensorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawSensorContext"
.end annotation


# instance fields
.field public accAccuracy:F

.field public accelerometer:[F

.field public gyroAccuracy:F

.field public gyroscope:[F

.field public magAccuracy:F

.field public magnetic:[F

.field public oriAccuracy:F

.field public orientation:[F

.field public sysTime:J

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 96
    iput-wide v3, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->sysTime:J

    .line 97
    iput-wide v3, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->timeStamp:J

    .line 98
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    .line 99
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->orientation:[F

    .line 100
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magnetic:[F

    .line 101
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroscope:[F

    .line 102
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accAccuracy:F

    .line 103
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->oriAccuracy:F

    .line 104
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magAccuracy:F

    .line 105
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroAccuracy:F

    .line 106
    return-void

    .line 98
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 100
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
