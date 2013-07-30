.class Lcom/android/sec_settings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$12;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1353
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1354
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DataUsageSummary$AppItem;

    .line 1357
    .local v0, app:Lcom/android/sec_settings/DataUsageSummary$AppItem;
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$12;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/sec_settings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary;->access$1700(Lcom/android/sec_settings/DataUsageSummary;)Lcom/android/sec_settings/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$12;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/sec_settings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary;->access$1700(Lcom/android/sec_settings/DataUsageSummary;)Lcom/android/sec_settings/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/android/sec_settings/DataUsageSummary$AppItem;->appId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/sec_settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/sec_settings/net/UidDetail;

    move-result-object v2

    .line 1360
    .local v2, detail:Lcom/android/sec_settings/net/UidDetail;
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$12;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v4, v2, Lcom/android/sec_settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/android/sec_settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/sec_settings/DataUsageSummary;Lcom/android/sec_settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
