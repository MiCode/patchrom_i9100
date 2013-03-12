.class final Lcom/sec/android/internal/ims/IIMSParams$1;
.super Ljava/lang/Object;
.source "IIMSParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSParams;
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
        "Lcom/sec/android/internal/ims/IIMSParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/internal/ims/IIMSParams;
    .locals 1
    .parameter "source"

    .prologue
    .line 41
    new-instance v0, Lcom/sec/android/internal/ims/IIMSParams;

    invoke-direct {v0, p1}, Lcom/sec/android/internal/ims/IIMSParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IIMSParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/internal/ims/IIMSParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/internal/ims/IIMSParams;
    .locals 1
    .parameter "size"

    .prologue
    .line 45
    new-array v0, p1, [Lcom/sec/android/internal/ims/IIMSParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IIMSParams$1;->newArray(I)[Lcom/sec/android/internal/ims/IIMSParams;

    move-result-object v0

    return-object v0
.end method
