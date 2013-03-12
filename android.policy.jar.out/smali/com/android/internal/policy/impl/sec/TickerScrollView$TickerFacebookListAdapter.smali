.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerFacebookListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;",
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
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 612
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->mContext:Landroid/content/Context;

    .line 613
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->mContext:Landroid/content/Context;

    .line 614
    iput p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->mLayout:I

    .line 615
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x1020324

    const v8, 0x1020323

    const/4 v7, 0x0

    .line 617
    const/4 v2, 0x0

    .line 618
    .local v2, row:Landroid/view/View;
    if-nez p2, :cond_1

    .line 619
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 620
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 624
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;

    .line 626
    .local v4, tickerFacebookData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 628
    .local v3, textview:Landroid/widget/TextView;
    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 629
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMinLines(I)V

    .line 630
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->getFacebookTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .end local v3           #textview:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 635
    .local v1, mAttributionTextView:Landroid/widget/TextView;
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 636
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->getFacebookAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const v5, 0x1020325

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->getPublishedTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 640
    const v5, 0x1020322

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 642
    :cond_0
    return-object v2

    .line 622
    .end local v1           #mAttributionTextView:Landroid/widget/TextView;
    .end local v4           #tickerFacebookData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;
    :cond_1
    move-object v2, p2

    goto :goto_0

    .line 633
    .restart local v4       #tickerFacebookData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->getFacebookTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
