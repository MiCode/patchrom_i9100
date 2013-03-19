.class public Lcom/sec/android/app/camera/ImageManager$ImageListParam;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageListParam"
.end annotation


# instance fields
.field public mBucketId:Ljava/lang/String;

.field public mInclusion:I

.field public mIsEmptyImageList:Z

.field public mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

.field public mSingleImageUri:Landroid/net/Uri;

.field public mSort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    const-string v0, "ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,empty=%b,single=%s}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
