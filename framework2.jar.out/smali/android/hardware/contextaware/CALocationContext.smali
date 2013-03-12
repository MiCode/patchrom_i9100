.class public Landroid/hardware/contextaware/CALocationContext;
.super Ljava/lang/Object;
.source "CALocationContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/CALocationContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accuracy:F

.field private altitude:D

.field private heading:F

.field private latitude:D

.field private longitude:D

.field private speed:F

.field private sysTime:J

.field private timeStamp:J

.field private valid:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Landroid/hardware/contextaware/CALocationContext$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/CALocationContext$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/CALocationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    .line 56
    iput-wide v5, p0, Landroid/hardware/contextaware/CALocationContext;->sysTime:J

    .line 57
    iput-wide v5, p0, Landroid/hardware/contextaware/CALocationContext;->timeStamp:J

    .line 58
    iput-wide v1, p0, Landroid/hardware/contextaware/CALocationContext;->latitude:D

    .line 59
    iput-wide v1, p0, Landroid/hardware/contextaware/CALocationContext;->longitude:D

    .line 60
    iput-wide v1, p0, Landroid/hardware/contextaware/CALocationContext;->altitude:D

    .line 61
    iput v3, p0, Landroid/hardware/contextaware/CALocationContext;->accuracy:F

    .line 62
    iput v3, p0, Landroid/hardware/contextaware/CALocationContext;->speed:F

    .line 63
    iput v3, p0, Landroid/hardware/contextaware/CALocationContext;->heading:F

    .line 64
    iget-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    aput-boolean v4, v0, v4

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    .line 74
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/CALocationContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->sysTime:J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->timeStamp:J

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->latitude:D

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->longitude:D

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->altitude:D

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CALocationContext;->accuracy:F

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CALocationContext;->heading:F

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CALocationContext;->speed:F

    .line 286
    iget-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 287
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/hardware/contextaware/CALocationContext;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->altitude:D

    return-wide v0
.end method

.method public getHeading()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/hardware/contextaware/CALocationContext;->heading:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->longitude:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/hardware/contextaware/CALocationContext;->speed:F

    return v0
.end method

.method public getSysTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->sysTime:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->timeStamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAccuracy(F)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 188
    iput p1, p0, Landroid/hardware/contextaware/CALocationContext;->accuracy:F

    .line 189
    return-void
.end method

.method public setAltitude(D)V
    .locals 0
    .parameter "altitude"

    .prologue
    .line 169
    iput-wide p1, p0, Landroid/hardware/contextaware/CALocationContext;->altitude:D

    .line 170
    return-void
.end method

.method public setHeading(F)V
    .locals 0
    .parameter "heading"

    .prologue
    .line 207
    iput p1, p0, Landroid/hardware/contextaware/CALocationContext;->heading:F

    .line 208
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 131
    iput-wide p1, p0, Landroid/hardware/contextaware/CALocationContext;->latitude:D

    .line 132
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 150
    iput-wide p1, p0, Landroid/hardware/contextaware/CALocationContext;->longitude:D

    .line 151
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 226
    iput p1, p0, Landroid/hardware/contextaware/CALocationContext;->speed:F

    .line 227
    return-void
.end method

.method public setSysTime(J)V
    .locals 0
    .parameter "sysTime"

    .prologue
    .line 93
    iput-wide p1, p0, Landroid/hardware/contextaware/CALocationContext;->sysTime:J

    .line 94
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 112
    iput-wide p1, p0, Landroid/hardware/contextaware/CALocationContext;->timeStamp:J

    .line 113
    return-void
.end method

.method public setValid(Z)V
    .locals 2
    .parameter "valid"

    .prologue
    .line 240
    iget-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 241
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 260
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->sysTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 262
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 264
    iget-wide v0, p0, Landroid/hardware/contextaware/CALocationContext;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 265
    iget v0, p0, Landroid/hardware/contextaware/CALocationContext;->accuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 266
    iget v0, p0, Landroid/hardware/contextaware/CALocationContext;->heading:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 267
    iget v0, p0, Landroid/hardware/contextaware/CALocationContext;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 268
    iget-object v0, p0, Landroid/hardware/contextaware/CALocationContext;->valid:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 269
    return-void
.end method
