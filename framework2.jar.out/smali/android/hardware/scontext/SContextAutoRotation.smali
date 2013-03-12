.class public Landroid/hardware/scontext/SContextAutoRotation;
.super Ljava/lang/Object;
.source "SContextAutoRotation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextAutoRotation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotation$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotation$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAutoRotation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotation;->mAngle:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAutoRotation;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotation;->mAngle:I

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotation;->mAngle:I

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 36
    iput p1, p0, Landroid/hardware/scontext/SContextAutoRotation;->mAngle:I

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotation;->mAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
