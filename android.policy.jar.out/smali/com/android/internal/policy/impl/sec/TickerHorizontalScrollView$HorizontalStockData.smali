.class Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;
.super Landroid/widget/FrameLayout;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalStockData"
.end annotation


# instance fields
.field private mStockChange:Landroid/widget/TextView;

.field private mStockName:Landroid/widget/TextView;

.field private mStockPrice:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "price"
    .parameter "change"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    .line 415
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 417
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 418
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v9, 0x109006c

    const/4 v10, 0x1

    invoke-virtual {v6, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 420
    const v9, 0x102032f

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockName:Landroid/widget/TextView;

    .line 421
    const v9, 0x1020330

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockPrice:Landroid/widget/TextView;

    .line 422
    const v9, 0x1020331

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    .line 424
    const/4 v7, 0x0

    .line 426
    .local v7, isNum:Z
    :try_start_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 427
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    const/4 v7, 0x1

    .line 433
    :goto_0
    if-eqz v7, :cond_9

    .line 434
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "#,##0.##"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 435
    .local v8, priceFormat:Ljava/text/DecimalFormat;
    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, formattedPrice:Ljava/lang/String;
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v9, "#,##0.##"

    invoke-direct {v2, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 438
    .local v2, changePriceFormat:Ljava/text/DecimalFormat;
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, formattedChangePrice:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 441
    .local v1, changePrice:Ljava/lang/Double;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 442
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    .line 443
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 476
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockName:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockPrice:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .end local v1           #changePrice:Ljava/lang/Double;
    .end local v2           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v4           #formattedChangePrice:Ljava/lang/String;
    .end local v5           #formattedPrice:Ljava/lang/String;
    .end local v8           #priceFormat:Ljava/text/DecimalFormat;
    :goto_2
    return-void

    .line 429
    :catch_0
    move-exception v3

    .line 430
    .local v3, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0

    .line 445
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #changePrice:Ljava/lang/Double;
    .restart local v2       #changePriceFormat:Ljava/text/DecimalFormat;
    .restart local v4       #formattedChangePrice:Ljava/lang/String;
    .restart local v5       #formattedPrice:Ljava/lang/String;
    .restart local v8       #priceFormat:Ljava/text/DecimalFormat;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 446
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, -0xb70100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, 0x1080486

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 448
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 449
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/high16 v10, -0x17

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, 0x108048c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 452
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 453
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_4

    .line 454
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, -0x5e5e5f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 456
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_5

    .line 457
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, -0xb87220

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, 0x1080485

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 459
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 460
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/high16 v10, -0x17

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, 0x108048b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 464
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_7

    .line 465
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 467
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_8

    .line 468
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/high16 v10, -0x17

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, 0x1080484

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 470
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 471
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, -0xb70100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v10, 0x108048a

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 481
    .end local v1           #changePrice:Ljava/lang/Double;
    .end local v2           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v4           #formattedChangePrice:Ljava/lang/String;
    .end local v5           #formattedPrice:Ljava/lang/String;
    .end local v8           #priceFormat:Ljava/text/DecimalFormat;
    :cond_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockName:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockPrice:Landroid/widget/TextView;

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
