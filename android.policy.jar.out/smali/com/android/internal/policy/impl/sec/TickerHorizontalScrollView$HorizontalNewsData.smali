.class Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;
.super Landroid/widget/FrameLayout;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalNewsData"
.end annotation


# instance fields
.field private mAttributionTextView:Landroid/widget/TextView;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "title"
    .parameter "attribution"
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    .line 386
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 389
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109006a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 391
    const v1, 0x1020328

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mTitleTextView:Landroid/widget/TextView;

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v1, 0x1020329

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    .line 394
    if-eqz p4, :cond_0

    const-string v1, "Associated Press"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const v2, 0x108047c

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :goto_0
    const v1, 0x102032a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mTimeTextView:Landroid/widget/TextView;

    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void

    .line 397
    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "Reuters"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const v2, 0x108047e

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
