.class final Landroid/media/MediaPlayer$TrackInfo$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TrackInfo;
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
        "Landroid/media/MediaPlayer$TrackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1915
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaPlayer$TrackInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 1918
    new-instance v0, Landroid/media/MediaPlayer$TrackInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1915
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer$TrackInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/MediaPlayer$TrackInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 1923
    new-array v0, p1, [Landroid/media/MediaPlayer$TrackInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1915
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer$TrackInfo$1;->newArray(I)[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method
