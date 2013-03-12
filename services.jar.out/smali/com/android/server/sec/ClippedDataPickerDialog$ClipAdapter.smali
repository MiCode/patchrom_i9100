.class public Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipAdapter"
.end annotation


# instance fields
.field layoutAni:Landroid/view/animation/Animation;

.field mBody:Landroid/widget/TextView;

.field private mChildViewIDs:[I

.field private mLayoutInflator:Landroid/view/LayoutInflater;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 2
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1103
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    .line 1109
    invoke-virtual {p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 1110
    return-void

    .line 1103
    :array_0
    .array-data 0x4
        0x39t 0x4t 0x2t 0x1t
        0x3bt 0x4t 0x2t 0x1t
        0x3at 0x4t 0x2t 0x1t
    .end array-data
.end method

.method private getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "clipData"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v11, 0x1

    .line 1303
    const/4 v7, 0x1

    .line 1304
    .local v7, sampleSize:I
    const/4 v2, 0x0

    .line 1305
    .local v2, bm:Landroid/graphics/Bitmap;
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, bitmapPath:Ljava/lang/String;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmapPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1313
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1318
    :try_start_0
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ClipboardServiceEx"

    const-string v9, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1326
    :cond_2
    :goto_0
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outMimeType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_3
    iget-object v6, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 1329
    .local v6, mimeType:Ljava/lang/String;
    if-eqz v6, :cond_7

    const-string v8, "bmp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1333
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmapOption.outWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bitmapOption.outHieght:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_4
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGridItemWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mGridItemHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_5
    :goto_1
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v8, v7

    if-lt v8, p2, :cond_6

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v8, v7

    if-lt v8, p3, :cond_6

    .line 1338
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1320
    .end local v6           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1322
    .local v5, e:Ljava/lang/Exception;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "ClipboardServiceEx"

    const-string v9, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1340
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 1342
    :cond_7
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sampleSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_8
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1349
    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1353
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1362
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    .line 1364
    .local v4, degree:I
    if-nez v4, :cond_a

    move-object v3, v2

    .line 1368
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .local v3, bm:Landroid/graphics/Bitmap;
    :goto_3
    return-object v3

    .line 1355
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #degree:I
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v5

    .line 1356
    .restart local v5       #e:Ljava/lang/Exception;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "ClipboardServiceEx"

    const-string v9, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1367
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #degree:I
    :cond_a
    invoke-virtual {p0, v2, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 1368
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private getDataTypeFromView(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 1511
    const/4 v0, 0x0

    .line 1513
    .local v0, ret:I
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1515
    const/4 v0, 0x2

    .line 1526
    :cond_0
    :goto_0
    return v0

    .line 1517
    :cond_1
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1519
    const/4 v0, 0x3

    goto :goto_0

    .line 1521
    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1523
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 1375
    const/4 v0, 0x0

    .line 1376
    .local v0, degree:I
    const/4 v2, 0x0

    .line 1378
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 1382
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1383
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1385
    .local v4, orientation:I
    if-eq v4, v7, :cond_1

    .line 1387
    packed-switch v4, :pswitch_data_0

    .line 1400
    .end local v4           #orientation:I
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 1379
    :catch_0
    move-exception v1

    .line 1380
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardServiceEx"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1389
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1390
    goto :goto_1

    .line 1392
    :pswitch_2
    const/16 v0, 0xb4

    .line 1393
    goto :goto_1

    .line 1395
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 1387
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V
    .locals 10
    .parameter "v"
    .parameter "position"
    .parameter "ItemViewParent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1424
    const/4 v2, 0x0

    .line 1426
    .local v2, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1431
    :goto_0
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    instance-of v5, v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 1433
    check-cast v5, Landroid/widget/TextView;

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v2           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1437
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1439
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1507
    :cond_0
    :goto_1
    return-void

    .line 1427
    .restart local v2       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v3

    .line 1428
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1442
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_1
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    instance-of v5, v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v5, :cond_4

    .line 1447
    const/4 v1, 0x0

    .line 1449
    .local v1, bm:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1451
    if-eqz v1, :cond_2

    .line 1452
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    if-ge v5, v6, :cond_3

    move-object v5, p1

    .line 1453
    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_2
    move-object v5, p1

    .line 1458
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1462
    :cond_2
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1463
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1465
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move-object v5, p1

    .line 1455
    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 1468
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_4
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    instance-of v5, v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v5, :cond_6

    move-object v4, p1

    .line 1472
    check-cast v4, Landroid/widget/TextView;

    .local v4, tv:Landroid/widget/TextView;
    move-object v5, v2

    .line 1474
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v2           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v2, v5, v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1479
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 1481
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1483
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1484
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1486
    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1497
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1498
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1499
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1505
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #tv:Landroid/widget/TextView;
    .restart local v2       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_6
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardServiceEx"

    const-string v6, "Not Supported View type yet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setOnClickListenerToBodyView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1639
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1667
    return-void
.end method

.method private setOnTouchListenerToWebView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1672
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1707
    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    .locals 12
    .parameter "v"
    .parameter "position"
    .parameter "clearFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1531
    if-eqz p3, :cond_2

    .line 1532
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    array-length v3, v8

    .line 1534
    .local v3, cnt:I
    :cond_0
    :goto_0
    if-lez v3, :cond_2

    .line 1535
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1536
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1539
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1541
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1546
    .end local v2           #child:Landroid/view/View;
    .end local v3           #cnt:I
    :cond_2
    const/4 v0, 0x0

    .line 1548
    .local v0, BodyView:Landroid/view/View;
    const/4 v1, 0x0

    .line 1550
    .local v1, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1556
    :goto_1
    if-nez v1, :cond_4

    .line 1557
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cbData does not exist...position : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_3
    const/4 v8, 0x0

    .line 1634
    :goto_2
    return-object v8

    .line 1551
    :catch_0
    move-exception v4

    .line 1552
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1561
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1630
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "ClipboardServiceEx"

    const-string v9, "current Item to be shown is invalid item type"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    move-object v8, v0

    .line 1634
    goto :goto_2

    .line 1564
    :pswitch_0
    const v8, 0x1020439

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1565
    .local v6, tv:Landroid/widget/TextView;
    move-object v0, v6

    .line 1566
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    .line 1567
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1569
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 1574
    :cond_6
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 1576
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_3

    .line 1571
    :cond_7
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    goto :goto_4

    .line 1581
    .end local v6           #tv:Landroid/widget/TextView;
    :pswitch_1
    const v8, 0x102043b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1582
    .local v7, tvHTML:Landroid/widget/TextView;
    move-object v0, v7

    .line 1583
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8

    .line 1584
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1592
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 1594
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 1597
    :cond_8
    if-eqz p3, :cond_5

    .line 1598
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1617
    .end local v7           #tvHTML:Landroid/widget/TextView;
    :pswitch_2
    const v8, 0x102043a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1618
    .local v5, iv:Landroid/widget/ImageView;
    move-object v0, v5

    .line 1620
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    .line 1622
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 1625
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_3

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 5

    .prologue
    .line 1213
    const/4 v1, 0x0

    .line 1216
    .local v1, size:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    .line 1217
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount() return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :cond_0
    :goto_0
    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    const/16 v1, 0x14

    .line 1225
    :cond_1
    return v1

    .line 1218
    :catch_0
    move-exception v0

    .line 1220
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1230
    const/4 v1, 0x0

    .line 1233
    .local v1, obj:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1239
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1234
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 1114
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView()position :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    const/4 v3, 0x0

    .line 1119
    .local v3, itemView:Landroid/view/View;
    const/4 v0, 0x0

    .line 1121
    .local v0, bodyView:Landroid/view/View;
    if-nez p2, :cond_6

    .line 1122
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x1090107

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1125
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1160
    :goto_0
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    :goto_1
    if-eqz v0, :cond_7

    .line 1184
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V

    .line 1188
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1190
    if-eqz v0, :cond_2

    .line 1191
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1194
    :cond_2
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->showProtectedMarker(Landroid/view/View;I)V

    .line 1196
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1197
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1200
    :cond_3
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$902(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 1202
    :cond_4
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    .line 1203
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0062

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1204
    .local v2, fadeIn:Landroid/view/animation/Animation;
    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1208
    .end local v2           #fadeIn:Landroid/view/animation/Animation;
    :cond_5
    return-object v3

    .line 1126
    :catch_0
    move-exception v1

    .line 1128
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1162
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    move-object v3, p2

    .line 1165
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 1166
    :catch_1
    move-exception v1

    .line 1167
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1186
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ClipboardServiceEx"

    const-string v5, " Item View is null !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 1404
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1405
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1406
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1409
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1410
    .local v7, converted:Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_0

    .line 1411
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    move-object p1, v7

    .line 1419
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #converted:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 1415
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 1416
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
