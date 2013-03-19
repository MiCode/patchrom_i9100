.class public Lcom/sec/android/app/camera/gallery/DrmImageList;
.super Lcom/sec/android/app/camera/gallery/ImageList;
.source "DrmImageList.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;
    }
.end annotation


# static fields
.field private static final DRM_IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final INDEX_DATA_PATH:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIME_TYPE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/gallery/DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 6
    .parameter "resolver"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 43
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/camera/gallery/DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/DrmImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected loadImageFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/camera/gallery/BaseImage;
    .locals 17
    .parameter "cursor"

    .prologue
    .line 103
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 104
    .local v4, id:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, dataPath:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, mimeType:Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/gallery/DrmImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v7

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DrmImage-"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DrmImage-"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "_id ASC"

    return-object v0
.end method
