.class final Landroid/hardware/contextaware/CALocationContext$1;
.super Ljava/lang/Object;
.source "CALocationContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/CALocationContext;
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
        "Landroid/hardware/contextaware/CALocationContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CALocationContext;
    .locals 1
    .parameter "source"

    .prologue
    .line 294
    new-instance v0, Landroid/hardware/contextaware/CALocationContext;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/CALocationContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CALocationContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CALocationContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/contextaware/CALocationContext;
    .locals 1
    .parameter "size"

    .prologue
    .line 299
    new-array v0, p1, [Landroid/hardware/contextaware/CALocationContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CALocationContext$1;->newArray(I)[Landroid/hardware/contextaware/CALocationContext;

    move-result-object v0

    return-object v0
.end method
