.class final Landroid/hardware/scontext/SContextPedometer$1;
.super Ljava/lang/Object;
.source "SContextPedometer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextPedometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/scontext/SContextPedometer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextPedometer;
    .locals 1
    .parameter "in"

    .prologue
    .line 111
    new-instance v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextPedometer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextPedometer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextPedometer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextPedometer;
    .locals 1
    .parameter "size"

    .prologue
    .line 116
    new-array v0, p1, [Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextPedometer$1;->newArray(I)[Landroid/hardware/scontext/SContextPedometer;

    move-result-object v0

    return-object v0
.end method
