.class final Landroid/hardware/scontext/SContextApproach$1;
.super Ljava/lang/Object;
.source "SContextApproach.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextApproach;
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
        "Landroid/hardware/scontext/SContextApproach;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextApproach;
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    new-instance v0, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextApproach;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextApproach$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextApproach;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextApproach;
    .locals 1
    .parameter "size"

    .prologue
    .line 63
    new-array v0, p1, [Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextApproach$1;->newArray(I)[Landroid/hardware/scontext/SContextApproach;

    move-result-object v0

    return-object v0
.end method
