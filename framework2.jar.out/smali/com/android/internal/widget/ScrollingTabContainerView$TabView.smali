.class Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mForList:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "tab"
    .parameter "forList"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 386
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 387
    iput-object p3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 388
    iput-boolean p4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mForList:Z

    .line 390
    if-eqz p4, :cond_0

    .line 391
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 395
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 400
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mForList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 411
    :cond_0
    return-void
.end method

.method public update()V
    .locals 14

    .prologue
    .line 414
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 415
    .local v7, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, custom:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 417
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 418
    .local v2, customParent:Landroid/view/ViewParent;
    if-eq v2, p0, :cond_1

    .line 419
    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #customParent:Landroid/view/ViewParent;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 421
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 426
    instance-of v11, v1, Landroid/view/ViewGroup;

    if-eqz v11, :cond_1

    move-object v10, v1

    .line 427
    check-cast v10, Landroid/view/ViewGroup;

    .line 428
    .local v10, vg:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 429
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 430
    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setHoverPopupType(I)V

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v10           #vg:Landroid/view/ViewGroup;
    :cond_1
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 436
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :cond_2
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v11, :cond_3

    .line 438
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_3
    :goto_1
    return-void

    .line 442
    :cond_4
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v11, :cond_5

    .line 443
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 444
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 447
    :cond_5
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 448
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 450
    .local v8, text:Ljava/lang/CharSequence;
    if-eqz v4, :cond_c

    .line 451
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v11, :cond_6

    .line 452
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 453
    .local v5, iconView:Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 455
    .local v6, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 456
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    const/4 v11, 0x0

    invoke-virtual {p0, v5, v11}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 458
    iput-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 460
    .end local v5           #iconView:Landroid/widget/ImageView;
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    :cond_7
    :goto_2
    if-eqz v8, :cond_d

    .line 468
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v11, :cond_8

    .line 469
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x10102f5

    invoke-direct {v9, v11, v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 472
    .local v9, textView:Landroid/widget/TextView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 474
    .restart local v6       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 475
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 479
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 480
    iput-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 482
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #textView:Landroid/widget/TextView;
    :cond_8
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    :cond_9
    :goto_3
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v11, :cond_a

    .line 490
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 494
    :cond_a
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v11, :cond_b

    .line 495
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 496
    :cond_b
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v11, :cond_3

    .line 497
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    goto/16 :goto_1

    .line 462
    :cond_c
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v11, :cond_7

    .line 463
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 484
    :cond_d
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v11, :cond_9

    .line 485
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
