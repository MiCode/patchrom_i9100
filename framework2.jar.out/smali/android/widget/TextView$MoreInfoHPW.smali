.class Landroid/widget/TextView$MoreInfoHPW;
.super Landroid/widget/HoverPopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter "parentView"
    .parameter "type"

    .prologue
    .line 9332
    iput-object p1, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    .line 9333
    invoke-direct {p0, p2, p3}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 9328
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    .line 9329
    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    .line 9330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 9334
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9335
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 9343
    :goto_0
    return-void

    .line 9338
    :cond_0
    const-string v0, "MoreInfoHPW"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9339
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 9360
    const/4 v1, 0x1

    .line 9362
    .local v1, ret:Z
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 9363
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    if-eqz v3, :cond_0

    .line 9398
    :goto_0
    return v2

    .line 9367
    :cond_0
    const/4 v1, 0x0

    .line 9369
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9372
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 9398
    goto :goto_0

    .line 9373
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canMarquee()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9374
    const/4 v1, 0x1

    goto :goto_1

    .line 9375
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9376
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    .line 9379
    .local v0, l:Landroid/text/Layout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 9380
    const/4 v1, 0x1

    goto :goto_1

    .line 9396
    .end local v0           #l:Landroid/text/Layout;
    :cond_4
    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    goto :goto_1
.end method

.method protected makeDefaultContentView()V
    .locals 8

    .prologue
    const v7, 0x7011214

    .line 9404
    const/4 v4, 0x0

    .line 9406
    .local v4, v:Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 9408
    .local v2, orientation:I
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_0

    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    if-eq v2, v5, :cond_2

    .line 9411
    :cond_0
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 9412
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090049

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #v:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 9414
    .restart local v4       #v:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 9415
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    .line 9416
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    .line 9418
    iput v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    .line 9425
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 9427
    .local v3, text:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 9428
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9429
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 9431
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9432
    .local v0, d:Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 9433
    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9439
    .end local v0           #d:Landroid/util/DisplayMetrics;
    :cond_1
    :goto_2
    iput-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 9440
    return-void

    .line 9421
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .end local v4           #v:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #v:Landroid/widget/TextView;
    goto :goto_0

    .line 9425
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 9436
    .restart local v3       #text:Ljava/lang/CharSequence;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected setInstanceByType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 9347
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 9348
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 9349
    const/16 v0, 0x3031

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 9351
    const v0, 0x103032b

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 9352
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 9353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 9354
    const/high16 v0, 0x40c0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$MoreInfoHPW;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 9356
    :cond_0
    return-void
.end method
