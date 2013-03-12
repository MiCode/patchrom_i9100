.class final Landroid/hardware/scontext/SContextMovement$1;
.super Ljava/lang/Object;
.source "SContextMovement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextMovement;
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
        "Landroid/hardware/scontext/SContextMovement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextMovement;
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    new-instance v0, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextMovement;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextMovement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextMovement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextMovement;
    .locals 1
    .parameter "size"

    .prologue
    .line 63
    new-array v0, p1, [Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextMovement$1;->newArray(I)[Landroid/hardware/scontext/SContextMovement;

    move-result-object v0

    return-object v0
.end method
