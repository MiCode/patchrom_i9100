.class Lcom/android/sec_settings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1364
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$13;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 1367
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;

    .line 1368
    .local v0, cycle:Lcom/android/sec_settings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/sec_settings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$13;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)V

    .line 1374
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$13;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$1800(Lcom/android/sec_settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1388
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$13;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mChart:Lcom/android/sec_settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$1900(Lcom/android/sec_settings/DataUsageSummary;)Lcom/android/sec_settings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/sec_settings/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1386
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$13;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #calls: Lcom/android/sec_settings/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$2000(Lcom/android/sec_settings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
