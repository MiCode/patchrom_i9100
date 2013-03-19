.class Lcom/sec/android/app/camera/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImageMatrix:Landroid/graphics/Matrix;

.field mScale:F

.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CropImage$7;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage$7;->makeDefault()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CropImage$7;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage$7;->handleBlinkFace(Landroid/graphics/RectF;)V

    return-void
.end method

.method private handleBlinkFace(Landroid/graphics/RectF;)V
    .locals 18
    .parameter "rect"

    .prologue
    .line 605
    new-instance v1, Lcom/sec/android/app/camera/HighlightView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 606
    .local v1, hv:Lcom/sec/android/app/camera/HighlightView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v13

    .line 608
    .local v13, img:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v13, :cond_0

    .line 671
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v8, 0x0

    .line 614
    .local v8, exif:Landroid/media/ExifInterface;
    invoke-interface {v13}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    .line 617
    .local v9, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    .end local v8           #exif:Landroid/media/ExifInterface;
    invoke-direct {v8, v9}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .restart local v8       #exif:Landroid/media/ExifInterface;
    :goto_1
    invoke-interface {v13}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v14

    .line 624
    .local v14, w:I
    invoke-interface {v13}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v10

    .line 626
    .local v10, h:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 627
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 629
    .local v12, height:I
    const/4 v15, 0x0

    .line 630
    .local v15, w_ratio:F
    const/4 v11, 0x0

    .line 632
    .local v11, h_ratio:F
    if-eqz v8, :cond_1

    .line 633
    const-string v2, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Orientation"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v6, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v2, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v8, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 643
    :pswitch_0
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v14

    div-float v15, v2, v5

    .line 644
    int-to-float v2, v12

    int-to-float v5, v10

    div-float v11, v2, v5

    .line 660
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-direct {v3, v2, v5, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 661
    .local v3, imageRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v11

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    move/from16 v0, v17

    invoke-direct {v4, v2, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 666
    .local v4, blinkRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v5, v5, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 669
    sget-object v2, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    goto/16 :goto_0

    .line 618
    .end local v3           #imageRect:Landroid/graphics/Rect;
    .end local v4           #blinkRect:Landroid/graphics/RectF;
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v10           #h:I
    .end local v11           #h_ratio:F
    .end local v12           #height:I
    .end local v14           #w:I
    .end local v15           #w_ratio:F
    .end local v16           #width:I
    :catch_0
    move-exception v7

    .line 620
    .local v7, e:Ljava/io/IOException;
    const/4 v8, 0x0

    .restart local v8       #exif:Landroid/media/ExifInterface;
    goto/16 :goto_1

    .line 637
    .end local v7           #e:Ljava/io/IOException;
    .restart local v10       #h:I
    .restart local v11       #h_ratio:F
    .restart local v12       #height:I
    .restart local v14       #w:I
    .restart local v15       #w_ratio:F
    .restart local v16       #width:I
    :pswitch_1
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v10

    div-float v15, v2, v5

    .line 638
    int-to-float v2, v12

    int-to-float v5, v14

    div-float v11, v2, v5

    .line 639
    goto :goto_2

    .line 649
    :cond_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_2

    .line 650
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v10

    div-float v15, v2, v5

    .line 651
    int-to-float v2, v12

    int-to-float v5, v14

    div-float v11, v2, v5

    goto :goto_2

    .line 653
    :cond_2
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v14

    div-float v15, v2, v5

    .line 654
    int-to-float v2, v12

    int-to-float v5, v10

    div-float v11, v2, v5

    goto/16 :goto_2

    .line 666
    .restart local v3       #imageRect:Landroid/graphics/Rect;
    .restart local v4       #blinkRect:Landroid/graphics/RectF;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 720
    new-instance v0, Lcom/sec/android/app/camera/HighlightView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 722
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 723
    .local v9, width:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 725
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 729
    .local v7, cropWidth:I
    move v6, v7

    .line 731
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_2

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 739
    :cond_0
    :goto_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 740
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 742
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 743
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iget-object v12, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    .line 746
    return-void

    .line 735
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    .line 769
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/CropImage$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CropImage$7$1;-><init>(Lcom/sec/android/app/camera/CropImage$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 835
    return-void
.end method
