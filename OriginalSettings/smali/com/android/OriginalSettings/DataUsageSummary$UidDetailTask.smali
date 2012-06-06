.class Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
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
        "Lcom/android/OriginalSettings/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

.field private final mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/net/UidDetailProvider;Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;Landroid/view/View;)V
    .locals 1
    .parameter "provider"
    .parameter "item"
    .parameter "target"

    .prologue
    .line 2033
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2034
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 2035
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    .line 2036
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    .line 2037
    return-void
.end method

.method private static bindView(Lcom/android/OriginalSettings/net/UidDetail;Landroid/view/View;)V
    .locals 4
    .parameter "detail"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 2056
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2057
    .local v0, icon:Landroid/widget/ImageView;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2059
    .local v1, title:Landroid/widget/TextView;
    if-eqz p0, :cond_0

    .line 2060
    iget-object v2, p0, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2061
    iget-object v2, p0, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2066
    :goto_0
    return-void

    .line 2063
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2064
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/OriginalSettings/net/UidDetailProvider;Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;Landroid/view/View;)V
    .locals 5
    .parameter "provider"
    .parameter "item"
    .parameter "target"

    .prologue
    const/4 v4, 0x0

    .line 2041
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;

    .line 2042
    .local v1, existing:Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;
    if-eqz v1, :cond_0

    .line 2043
    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->cancel(Z)Z

    .line 2046
    :cond_0
    iget-object v2, p1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    aget v2, v2, v4

    invoke-virtual {p0, v2, v4}, Lcom/android/OriginalSettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/OriginalSettings/net/UidDetail;

    move-result-object v0

    .line 2047
    .local v0, cachedDetail:Lcom/android/OriginalSettings/net/UidDetail;
    if-eqz v0, :cond_1

    .line 2048
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/OriginalSettings/net/UidDetail;Landroid/view/View;)V

    .line 2053
    :goto_0
    return-void

    .line 2050
    :cond_1
    new-instance v2, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;-><init>(Lcom/android/OriginalSettings/net/UidDetailProvider;Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;Landroid/view/View;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/OriginalSettings/net/UidDetail;
    .locals 3
    .parameter "params"

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    iget-object v1, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/OriginalSettings/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2028
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/OriginalSettings/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/OriginalSettings/net/UidDetail;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/OriginalSettings/net/UidDetail;Landroid/view/View;)V

    .line 2081
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2028
    check-cast p1, Lcom/android/OriginalSettings/net/UidDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->onPostExecute(Lcom/android/OriginalSettings/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2070
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/OriginalSettings/net/UidDetail;Landroid/view/View;)V

    .line 2071
    return-void
.end method
