.class final Landroid/hardware/contextaware/CAPedometerContext$1;
.super Ljava/lang/Object;
.source "CAPedometerContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/CAPedometerContext;
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
        "Landroid/hardware/contextaware/CAPedometerContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAPedometerContext;
    .locals 1
    .parameter "source"

    .prologue
    .line 199
    new-instance v0, Landroid/hardware/contextaware/CAPedometerContext;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/CAPedometerContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAPedometerContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAPedometerContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/contextaware/CAPedometerContext;
    .locals 1
    .parameter "size"

    .prologue
    .line 204
    new-array v0, p1, [Landroid/hardware/contextaware/CAPedometerContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAPedometerContext$1;->newArray(I)[Landroid/hardware/contextaware/CAPedometerContext;

    move-result-object v0

    return-object v0
.end method
