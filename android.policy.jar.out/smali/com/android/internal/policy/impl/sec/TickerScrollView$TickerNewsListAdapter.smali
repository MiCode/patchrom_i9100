.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerNewsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 649
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->mContext:Landroid/content/Context;

    .line 650
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->mContext:Landroid/content/Context;

    .line 651
    iput p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->mLayout:I

    .line 652
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x102032d

    const/4 v7, 0x0

    .line 654
    const/4 v3, 0x0

    .line 655
    .local v3, row:Landroid/view/View;
    if-nez p2, :cond_1

    .line 656
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 657
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 661
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;

    .line 662
    .local v4, tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
    const v5, 0x102032c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->getNewsTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->getNewsAttribute()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, attribution:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 665
    .local v2, mAttributionTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    const-string v5, "Associated Press"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 666
    const v5, 0x108047c

    invoke-virtual {v2, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 667
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    :goto_1
    const v5, 0x102032e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->getPublishedTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 677
    const v5, 0x102032b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 679
    :cond_0
    return-object v3

    .line 659
    .end local v0           #attribution:Ljava/lang/String;
    .end local v2           #mAttributionTextView:Landroid/widget/TextView;
    .end local v4           #tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
    :cond_1
    move-object v3, p2

    goto :goto_0

    .line 668
    .restart local v0       #attribution:Ljava/lang/String;
    .restart local v2       #mAttributionTextView:Landroid/widget/TextView;
    .restart local v4       #tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
    :cond_2
    if-eqz v0, :cond_3

    const-string v5, "Reuters"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 669
    const v5, 0x108047e

    invoke-virtual {v2, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 670
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 672
    :cond_3
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 673
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->getNewsAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
