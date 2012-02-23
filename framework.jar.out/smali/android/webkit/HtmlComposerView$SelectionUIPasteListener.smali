.class Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionUIPasteListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1406
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Ljava/lang/String;I)V
    .locals 18
    .parameter "htmlFragment"
    .parameter "dataType"

    .prologue
    .line 1408
    const-string v14, "HtmlComposerView"

    const-string v15, "SelectionUIPasteListener onPaste"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    if-nez p1, :cond_0

    .line 1410
    const-string v14, "HtmlComposerView"

    const-string v15, "SelectionUIPasteListener onPaste htmlFragment == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :goto_0
    return-void

    .line 1414
    :cond_0
    const/4 v14, 0x3

    move/from16 v0, p2

    if-ne v0, v14, :cond_a

    .line 1416
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1417
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const-string v14, "HtmlComposerView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "####################### htmlFragment :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1419
    .local v5, imageUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, absoluteFilePath:Ljava/lang/String;
    const-string v14, "HtmlComposerView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "####################### absoluteFilePath :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v14}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1424
    .local v2, dstFilePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v6, mFile:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v10, originalFile:Ljava/io/File;
    const-wide/32 v14, 0x100000

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_1

    .line 1429
    const/4 v14, 0x4

    iput v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1430
    const-string v14, "HtmlComposerView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "####################### originalFile.length() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_1
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1434
    .local v12, src:Landroid/graphics/Bitmap;
    const-string v14, "HtmlComposerView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "####################### htmlFragment : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1437
    .local v9, originWidth:I
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1438
    .local v8, originHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mViewWidth:I
    invoke-static {v14}, Landroid/webkit/HtmlComposerView;->access$100(Landroid/webkit/HtmlComposerView;)I

    move-result v13

    .line 1439
    .local v13, width:I
    mul-int v14, v8, v13

    div-int v4, v14, v9

    .line 1441
    .local v4, height:I
    const-wide/32 v14, 0x100000

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_8

    .line 1442
    const-string v14, "HtmlComposerView"

    const-string v15, "####################### htmlFragment : Big Data"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    if-eqz v12, :cond_3

    .line 1447
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v11, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    if-gtz v14, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_6

    .line 1451
    :cond_2
    const-string v14, "HtmlComposerView"

    const-string v15, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v12, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1453
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 1454
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1491
    .end local v11           #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1493
    const-string v14, "HtmlComposerView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "####################### htmlFragment : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    if-eqz v13, :cond_9

    .line 1497
    if-le v13, v9, :cond_4

    .line 1499
    move v13, v9

    .line 1500
    move v4, v8

    .line 1502
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13, v4}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    .line 1518
    .end local v1           #absoluteFilePath:Ljava/lang/String;
    .end local v2           #dstFilePath:Ljava/lang/String;
    .end local v4           #height:I
    .end local v5           #imageUri:Landroid/net/Uri;
    .end local v6           #mFile:Ljava/io/File;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #originHeight:I
    .end local v9           #originWidth:I
    .end local v10           #originalFile:Ljava/io/File;
    .end local v12           #src:Landroid/graphics/Bitmap;
    .end local v13           #width:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v14}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1521
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v14}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1522
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    sget v15, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual {v14, v15}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1524
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .line 1456
    .restart local v1       #absoluteFilePath:Ljava/lang/String;
    .restart local v2       #dstFilePath:Ljava/lang/String;
    .restart local v4       #height:I
    .restart local v5       #imageUri:Landroid/net/Uri;
    .restart local v6       #mFile:Ljava/io/File;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #originHeight:I
    .restart local v9       #originWidth:I
    .restart local v10       #originalFile:Ljava/io/File;
    .restart local v11       #outStream:Ljava/io/FileOutputStream;
    .restart local v12       #src:Landroid/graphics/Bitmap;
    .restart local v13       #width:I
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "png"

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_7

    .line 1458
    const-string v14, "HtmlComposerView"

    const-string v15, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v12, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1460
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 1461
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1472
    .end local v11           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1473
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1465
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v11       #outStream:Ljava/io/FileOutputStream;
    :cond_7
    const/4 v14, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v15, v1, v2}, Landroid/webkit/HtmlComposerView;->access$200(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eq v14, v15, :cond_3

    .line 1467
    const-string v14, "HtmlComposerView"

    const-string v15, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1476
    .end local v11           #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 1477
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1484
    .end local v3           #e:Ljava/io/IOException;
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v15, v1, v2}, Landroid/webkit/HtmlComposerView;->access$200(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eq v14, v15, :cond_3

    .line 1486
    const-string v14, "HtmlComposerView"

    const-string v15, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1506
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1512
    .end local v1           #absoluteFilePath:Ljava/lang/String;
    .end local v2           #dstFilePath:Ljava/lang/String;
    .end local v4           #height:I
    .end local v5           #imageUri:Landroid/net/Uri;
    .end local v6           #mFile:Ljava/io/File;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #originHeight:I
    .end local v9           #originWidth:I
    .end local v10           #originalFile:Ljava/io/File;
    .end local v12           #src:Landroid/graphics/Bitmap;
    .end local v13           #width:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    sget-object v15, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, p1

    iput-object v0, v14, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 1515
    const v14, 0x102040a

    sput v14, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 1516
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v15, v15, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const-string v16, "<.*?>"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_2
.end method
