.class public final Landroid/provider/MediaStore$Images$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Images$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "bucket_display_name"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 937
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 944
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "cr"
    .parameter "source"
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "kind"

    .prologue
    .line 829
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 831
    .local v7, matrix:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, p4, v2

    .line 832
    .local v10, scaleX:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, p5, v2

    .line 834
    .local v11, scaleY:F
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 836
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 841
    .local v12, thumb:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 842
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "kind"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string v2, "image_id"

    move-wide/from16 v0, p2

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string v2, "height"

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const-string/jumbo v2, "width"

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 850
    .local v14, url:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v13

    .line 852
    .local v13, thumbOut:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v12, v2, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 853
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 860
    .end local v12           #thumb:Landroid/graphics/Bitmap;
    .end local v13           #thumbOut:Ljava/io/OutputStream;
    :goto_0
    return-object v12

    .line 856
    .restart local v12       #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 857
    .local v9, ex:Ljava/io/FileNotFoundException;
    const/4 v12, 0x0

    goto :goto_0

    .line 859
    .end local v9           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 860
    .local v9, ex:Ljava/io/IOException;
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static final getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cr"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 790
    .local v1, input:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 791
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 792
    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"

    .prologue
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cr"
    .parameter "source"
    .parameter "title"
    .parameter "description"

    .prologue
    .line 876
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 877
    .local v11, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "title"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v0, "description"

    invoke-virtual {v11, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string/jumbo v0, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v10, 0x0

    .line 882
    .local v10, url:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 885
    .local v9, stringUrl:Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 887
    if-eqz p1, :cond_2

    .line 888
    invoke-virtual {p0, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 890
    .local v8, imageOut:Ljava/io/OutputStream;
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {p1, v0, v4, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 895
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 897
    .local v2, id:J
    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v0, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 900
    .local v1, miniThumb:Landroid/graphics/Bitmap;
    const/high16 v4, 0x4248

    const/high16 v5, 0x4248

    const/4 v6, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Images$Media;->StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 915
    .end local v1           #miniThumb:Landroid/graphics/Bitmap;
    .end local v2           #id:J
    .end local v8           #imageOut:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 916
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 919
    :cond_1
    return-object v9

    .line 892
    .restart local v8       #imageOut:Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 907
    .end local v8           #imageOut:Ljava/io/OutputStream;
    :catch_0
    move-exception v7

    .line 908
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MediaStore"

    const-string v4, "Failed to insert image"

    invoke-static {v0, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    if-eqz v10, :cond_0

    .line 910
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v10, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 911
    const/4 v10, 0x0

    goto :goto_0

    .line 903
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v0, "MediaStore"

    const-string v4, "Failed to create thumbnail, removing original"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v10, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 905
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cr"
    .parameter "imagePath"
    .parameter "name"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 810
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 811
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p2, p3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 818
    :goto_0
    return-object v1

    .line 815
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 816
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 818
    :goto_1
    throw v3

    .line 817
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ret:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 764
    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 769
    const/4 v4, 0x0

    if-nez p4, :cond_0

    const-string v5, "bucket_display_name"

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 775
    if-nez p5, :cond_0

    const-string v5, "bucket_display_name"

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p5

    goto :goto_0
.end method
