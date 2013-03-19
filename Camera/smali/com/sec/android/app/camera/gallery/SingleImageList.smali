.class public Lcom/sec/android/app/camera/gallery/SingleImageList;
.super Ljava/lang/Object;
.source "SingleImageList.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImageList"


# instance fields
.field private mSingleImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mUri:Landroid/net/Uri;

    .line 38
    new-instance v0, Lcom/sec/android/app/camera/gallery/UriImage;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/gallery/UriImage;-><init>(Lcom/sec/android/app/camera/gallery/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mSingleImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mSingleImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 75
    iput-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mUri:Landroid/net/Uri;

    .line 76
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
    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 58
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mSingleImage:Lcom/sec/android/app/camera/gallery/IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mSingleImage:Lcom/sec/android/app/camera/gallery/IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/SingleImageList;->mSingleImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
