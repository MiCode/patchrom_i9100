.class public Landroid/hardware/scontext/SContextPedometer;
.super Ljava/lang/Object;
.source "SContextPedometer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPedometer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalorie:D

.field private mDistance:D

.field private mSpeed:D

.field private mStepCount:J

.field private mStepStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepCount:J

    .line 34
    iput-wide v2, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 35
    iput-wide v2, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 36
    iput-wide v2, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepCount:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 105
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    return-wide v0
.end method

.method public getStepCount()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepCount:J

    return-wide v0
.end method

.method public getStepStatus()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    return v0
.end method

.method public setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    .line 58
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 59
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 66
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 67
    return-void
.end method

.method public setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 74
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 75
    return-void
.end method

.method public setStepCount(J)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 49
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mStepCount:J

    .line 50
    return-void
.end method

.method public setStepStatus(I)V
    .locals 0
    .parameter "stepStatus"

    .prologue
    .line 82
    iput p1, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 92
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 96
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
