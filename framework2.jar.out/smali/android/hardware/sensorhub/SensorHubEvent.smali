.class public Landroid/hardware/sensorhub/SensorHubEvent;
.super Ljava/lang/Object;
.source "SensorHubEvent.java"


# instance fields
.field public buffer:[B

.field public length:I

.field public sensorhub:Landroid/hardware/sensorhub/SensorHub;

.field public timestamp:J

.field public values:[F


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    .line 32
    return-void
.end method
