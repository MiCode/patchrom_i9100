.class final Landroid/os/ElementAttributeParcel$1;
.super Ljava/lang/Object;
.source "ElementAttributeParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ElementAttributeParcel;
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
        "Landroid/os/ElementAttributeParcel;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ElementAttributeParcel;
    .locals 2
    .parameter "in"

    .prologue
    .line 56
    new-instance v0, Landroid/os/ElementAttributeParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/ElementAttributeParcel;-><init>(Landroid/os/Parcel;Landroid/os/ElementAttributeParcel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/os/ElementAttributeParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ElementAttributeParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/ElementAttributeParcel;
    .locals 1
    .parameter "size"

    .prologue
    .line 60
    new-array v0, p1, [Landroid/os/ElementAttributeParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/os/ElementAttributeParcel$1;->newArray(I)[Landroid/os/ElementAttributeParcel;

    move-result-object v0

    return-object v0
.end method
