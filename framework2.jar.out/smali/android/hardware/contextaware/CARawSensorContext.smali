.class public Landroid/hardware/contextaware/CARawSensorContext;
.super Ljava/lang/Object;
.source "CARawSensorContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/CARawSensorContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accAccuracy:F

.field private accelerometer:[F

.field private gyroAccuracy:F

.field private gyroscope:[F

.field private magAccuracy:F

.field private magnetic:[F

.field private oriAccuracy:F

.field private orientation:[F

.field private sysTime:J

.field private timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Landroid/hardware/contextaware/CARawSensorContext$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/CARawSensorContext$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/CARawSensorContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide v2, p0, Landroid/hardware/contextaware/CARawSensorContext;->sysTime:J

    .line 60
    iput-wide v2, p0, Landroid/hardware/contextaware/CARawSensorContext;->timeStamp:J

    .line 61
    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accAccuracy:F

    .line 62
    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->oriAccuracy:F

    .line 63
    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magAccuracy:F

    .line 64
    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroAccuracy:F

    .line 65
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    .line 66
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    .line 67
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    .line 68
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    .line 69
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/CARawSensorContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->sysTime:J

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->timeStamp:J

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    float-to-int v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    .line 317
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    float-to-int v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    .line 319
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    float-to-int v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    .line 321
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    float-to-int v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    .line 323
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accAccuracy:F

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->oriAccuracy:F

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magAccuracy:F

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroAccuracy:F

    .line 329
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public getAccAccuracy()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accAccuracy:F

    return v0
.end method

.method public getAccelerometer()[F
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getGyroAccuracy()F
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroAccuracy:F

    return v0
.end method

.method public getGyroscope()[F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getMagAccuracy()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magAccuracy:F

    return v0
.end method

.method public getMagnetic()[F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getOriAccuracy()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->oriAccuracy:F

    return v0
.end method

.method public getOrientation()[F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getSysTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->sysTime:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->timeStamp:J

    return-wide v0
.end method

.method public setAccAccuracy(F)V
    .locals 0
    .parameter "accAccuracy"

    .prologue
    .line 211
    iput p1, p0, Landroid/hardware/contextaware/CARawSensorContext;->accAccuracy:F

    .line 212
    return-void
.end method

.method public setAccelerometer([F)V
    .locals 1
    .parameter "accelerometer"

    .prologue
    .line 135
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    .line 136
    return-void
.end method

.method public setGyroAccuracy(F)V
    .locals 0
    .parameter "gyroAccuracy"

    .prologue
    .line 268
    iput p1, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroAccuracy:F

    .line 269
    return-void
.end method

.method public setGyroscope([F)V
    .locals 1
    .parameter "gyroscope"

    .prologue
    .line 192
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    .line 193
    return-void
.end method

.method public setMagAccuracy(F)V
    .locals 0
    .parameter "magAccuracy"

    .prologue
    .line 249
    iput p1, p0, Landroid/hardware/contextaware/CARawSensorContext;->magAccuracy:F

    .line 250
    return-void
.end method

.method public setMagnetic([F)V
    .locals 1
    .parameter "magnetic"

    .prologue
    .line 173
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    .line 174
    return-void
.end method

.method public setOriAccuracy(F)V
    .locals 0
    .parameter "oriAccuracy"

    .prologue
    .line 230
    iput p1, p0, Landroid/hardware/contextaware/CARawSensorContext;->oriAccuracy:F

    .line 231
    return-void
.end method

.method public setOrientation([F)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 154
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    .line 155
    return-void
.end method

.method public setSysTime(J)V
    .locals 0
    .parameter "sysTime"

    .prologue
    .line 97
    iput-wide p1, p0, Landroid/hardware/contextaware/CARawSensorContext;->sysTime:J

    .line 98
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 116
    iput-wide p1, p0, Landroid/hardware/contextaware/CARawSensorContext;->timeStamp:J

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 288
    iget-wide v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->sysTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-wide v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    array-length v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 292
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accelerometer:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 293
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    array-length v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 294
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->orientation:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 295
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    array-length v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 296
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magnetic:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 297
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    array-length v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 298
    iget-object v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroscope:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 300
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->accAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->oriAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->magAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 303
    iget v0, p0, Landroid/hardware/contextaware/CARawSensorContext;->gyroAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 304
    return-void
.end method
