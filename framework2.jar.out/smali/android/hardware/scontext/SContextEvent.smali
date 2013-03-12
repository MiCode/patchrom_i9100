.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApproachContext:Landroid/hardware/scontext/SContextApproach;

.field private mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

.field private mMotionContext:Landroid/hardware/scontext/SContextMotion;

.field private mMovementContext:Landroid/hardware/scontext/SContextMovement;

.field private mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

.field private mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 113
    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 114
    const-class v0, Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    .line 115
    const-class v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    .line 116
    const-class v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    .line 117
    const-class v0, Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    .line 118
    const-class v0, Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    .line 119
    const-class v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    .line 121
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method public setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    .locals 0
    .parameter "approachContext"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    .line 52
    return-void
.end method

.method public setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V
    .locals 0
    .parameter "autoRotationContext"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    .line 92
    return-void
.end method

.method public setMotionContext(Landroid/hardware/scontext/SContextMotion;)V
    .locals 0
    .parameter "motionContext"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    .line 76
    return-void
.end method

.method public setMovementContext(Landroid/hardware/scontext/SContextMovement;)V
    .locals 0
    .parameter "movementContext"

    .prologue
    .line 83
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    .line 84
    return-void
.end method

.method public setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V
    .locals 0
    .parameter "pedometerContext"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    .line 60
    return-void
.end method

.method public setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V
    .locals 0
    .parameter "stepCountAlertContext"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 101
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    return-void
.end method
