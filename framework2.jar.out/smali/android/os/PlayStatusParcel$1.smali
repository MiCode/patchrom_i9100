.class final Landroid/os/PlayStatusParcel$1;
.super Ljava/lang/Object;
.source "PlayStatusParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PlayStatusParcel;
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
        "Landroid/os/PlayStatusParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/PlayStatusParcel;
    .locals 2
    .parameter "in"

    .prologue
    .line 53
    new-instance v0, Landroid/os/PlayStatusParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/PlayStatusParcel;-><init>(Landroid/os/Parcel;Landroid/os/PlayStatusParcel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/PlayStatusParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PlayStatusParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/PlayStatusParcel;
    .locals 1
    .parameter "size"

    .prologue
    .line 57
    new-array v0, p1, [Landroid/os/PlayStatusParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/PlayStatusParcel$1;->newArray(I)[Landroid/os/PlayStatusParcel;

    move-result-object v0

    return-object v0
.end method
