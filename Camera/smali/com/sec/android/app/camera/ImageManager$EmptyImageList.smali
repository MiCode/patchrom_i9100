.class Lcom/sec/android/app/camera/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyImageList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/ImageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method
