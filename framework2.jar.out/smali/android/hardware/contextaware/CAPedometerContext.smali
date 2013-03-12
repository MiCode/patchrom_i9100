.class public Landroid/hardware/contextaware/CAPedometerContext;
.super Ljava/lang/Object;
.source "CAPedometerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/CAPedometerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calorie:D

.field private distance:D

.field private speed:D

.field private stepCount:J

.field private stepStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Landroid/hardware/contextaware/CAPedometerContext$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAPedometerContext$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/CAPedometerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepCount:J

    .line 45
    iput-wide v2, p0, Landroid/hardware/contextaware/CAPedometerContext;->calorie:D

    .line 46
    iput-wide v2, p0, Landroid/hardware/contextaware/CAPedometerContext;->distance:D

    .line 47
    iput-wide v2, p0, Landroid/hardware/contextaware/CAPedometerContext;->speed:D

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepStatus:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/CAPedometerContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepCount:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->calorie:D

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->distance:D

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->speed:D

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepStatus:I

    .line 192
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->calorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->distance:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->speed:D

    return-wide v0
.end method

.method public getStepCount()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepCount:J

    return-wide v0
.end method

.method public getStepStatus()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepStatus:I

    return v0
.end method

.method public setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    .line 96
    iput-wide p1, p0, Landroid/hardware/contextaware/CAPedometerContext;->calorie:D

    .line 97
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 115
    iput-wide p1, p0, Landroid/hardware/contextaware/CAPedometerContext;->distance:D

    .line 116
    return-void
.end method

.method public setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 134
    iput-wide p1, p0, Landroid/hardware/contextaware/CAPedometerContext;->speed:D

    .line 135
    return-void
.end method

.method public setStepCount(J)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 77
    iput-wide p1, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepCount:J

    .line 78
    return-void
.end method

.method public setStepStatus(I)V
    .locals 0
    .parameter "stepStatus"

    .prologue
    .line 153
    iput p1, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepStatus:I

    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 173
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->calorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 175
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->distance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 176
    iget-wide v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->speed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 177
    iget v0, p0, Landroid/hardware/contextaware/CAPedometerContext;->stepStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    return-void
.end method
