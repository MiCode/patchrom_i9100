.class Lcom/android/OriginalSettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2500(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2600(Lcom/android/OriginalSettings/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1251
    .local v0, isEmpty:Z
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1252
    return-void

    .end local v0           #isEmpty:Z
    :cond_0
    move v0, v1

    .line 1250
    goto :goto_0

    .line 1251
    .restart local v0       #isEmpty:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v0, Lcom/android/OriginalSettings/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/OriginalSettings/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1239
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2500(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;)V

    .line 1240
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary$12;->updateEmptyVisible()V

    .line 1241
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1231
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary$12;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1245
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$12;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2500(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;)V

    .line 1246
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary$12;->updateEmptyVisible()V

    .line 1247
    return-void
.end method
