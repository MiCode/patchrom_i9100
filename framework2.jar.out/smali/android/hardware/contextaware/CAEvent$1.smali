.class final Landroid/hardware/contextaware/CAEvent$1;
.super Ljava/lang/Object;
.source "CAEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/CAEvent;
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
        "Landroid/hardware/contextaware/CAEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAEvent;
    .locals 1
    .parameter "source"

    .prologue
    .line 381
    new-instance v0, Landroid/hardware/contextaware/CAEvent;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/CAEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/contextaware/CAEvent;
    .locals 1
    .parameter "size"

    .prologue
    .line 386
    new-array v0, p1, [Landroid/hardware/contextaware/CAEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAEvent$1;->newArray(I)[Landroid/hardware/contextaware/CAEvent;

    move-result-object v0

    return-object v0
.end method
