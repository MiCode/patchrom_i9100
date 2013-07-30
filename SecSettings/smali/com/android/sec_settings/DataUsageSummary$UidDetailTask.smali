.class Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/sec_settings/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/sec_settings/DataUsageSummary$AppItem;

.field private final mProvider:Lcom/android/sec_settings/net/UidDetailProvider;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/net/UidDetailProvider;Lcom/android/sec_settings/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 1
    .parameter "provider"
    .parameter "item"
    .parameter "target"

    .prologue
    .line 2589
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2590
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/sec_settings/net/UidDetailProvider;

    .line 2591
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DataUsageSummary$AppItem;

    iput-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/sec_settings/DataUsageSummary$AppItem;

    .line 2592
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    .line 2593
    return-void
.end method

.method private static bindView(Lcom/android/sec_settings/net/UidDetail;Landroid/view/View;)V
    .locals 4
    .parameter "detail"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 2612
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2613
    .local v0, icon:Landroid/widget/ImageView;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2615
    .local v1, title:Landroid/widget/TextView;
    if-eqz p0, :cond_0

    .line 2616
    iget-object v2, p0, Lcom/android/sec_settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2617
    iget-object v2, p0, Lcom/android/sec_settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2622
    :goto_0
    return-void

    .line 2619
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2620
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/sec_settings/net/UidDetailProvider;Lcom/android/sec_settings/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 5
    .parameter "provider"
    .parameter "item"
    .parameter "target"

    .prologue
    const/4 v4, 0x0

    .line 2597
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;

    .line 2598
    .local v1, existing:Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;
    if-eqz v1, :cond_0

    .line 2599
    invoke-virtual {v1, v4}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->cancel(Z)Z

    .line 2602
    :cond_0
    iget v2, p1, Lcom/android/sec_settings/DataUsageSummary$AppItem;->appId:I

    invoke-virtual {p0, v2, v4}, Lcom/android/sec_settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/sec_settings/net/UidDetail;

    move-result-object v0

    .line 2603
    .local v0, cachedDetail:Lcom/android/sec_settings/net/UidDetail;
    if-eqz v0, :cond_1

    .line 2604
    invoke-static {v0, p2}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/sec_settings/net/UidDetail;Landroid/view/View;)V

    .line 2609
    :goto_0
    return-void

    .line 2606
    :cond_1
    new-instance v2, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;-><init>(Lcom/android/sec_settings/net/UidDetailProvider;Lcom/android/sec_settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/sec_settings/net/UidDetail;
    .locals 3
    .parameter "params"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/sec_settings/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/sec_settings/DataUsageSummary$AppItem;

    iget v1, v1, Lcom/android/sec_settings/DataUsageSummary$AppItem;->appId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/sec_settings/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2584
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/sec_settings/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/sec_settings/net/UidDetail;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/sec_settings/net/UidDetail;Landroid/view/View;)V

    .line 2637
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2584
    check-cast p1, Lcom/android/sec_settings/net/UidDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->onPostExecute(Lcom/android/sec_settings/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2626
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/sec_settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/sec_settings/net/UidDetail;Landroid/view/View;)V

    .line 2627
    return-void
.end method
