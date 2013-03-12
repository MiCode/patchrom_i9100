.class final Landroid/hardware/contextaware/CAMovingContext$1;
.super Ljava/lang/Object;
.source "CAMovingContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/CAMovingContext;
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
        "Landroid/hardware/contextaware/CAMovingContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAMovingContext;
    .locals 1
    .parameter "source"

    .prologue
    .line 175
    new-instance v0, Landroid/hardware/contextaware/CAMovingContext;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/CAMovingContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAMovingContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAMovingContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/contextaware/CAMovingContext;
    .locals 1
    .parameter "size"

    .prologue
    .line 180
    new-array v0, p1, [Landroid/hardware/contextaware/CAMovingContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAMovingContext$1;->newArray(I)[Landroid/hardware/contextaware/CAMovingContext;

    move-result-object v0

    return-object v0
.end method
