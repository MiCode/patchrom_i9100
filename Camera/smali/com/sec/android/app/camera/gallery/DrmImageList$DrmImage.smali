.class Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;
.super Lcom/sec/android/app/camera/gallery/Image;
.source "DrmImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/gallery/DrmImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmImage"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "container"
    .parameter "cr"
    .parameter "id"
    .parameter "index"
    .parameter "uri"
    .parameter "dataPath"
    .parameter "miniThumbMagic"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "title"
    .parameter "displayName"
    .parameter "rotation"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p15}, Lcom/sec/android/app/camera/gallery/Image;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/sec/android/app/camera/gallery/IImage;->MINI_THUMB_TARGET_SIZE:I

    sget v1, Lcom/sec/android/app/camera/gallery/IImage;->MINI_THUMB_MAX_NUM_PIXELS:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "rotateAsNeeded"

    .prologue
    .line 91
    sget v0, Lcom/sec/android/app/camera/gallery/IImage;->THUMBNAIL_TARGET_SIZE:I

    sget v1, Lcom/sec/android/app/camera/gallery/IImage;->THUMBNAIL_MAX_NUM_PIXELS:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
