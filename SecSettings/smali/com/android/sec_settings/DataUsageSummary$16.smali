.class Lcom/android/sec_settings/DataUsageSummary$16;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 1542
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #calls: Lcom/android/sec_settings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary;->access$2000(Lcom/android/sec_settings/DataUsageSummary;)V

    .line 1547
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mChart:Lcom/android/sec_settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$1900(Lcom/android/sec_settings/DataUsageSummary;)Lcom/android/sec_settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/sec_settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/DataUsageSummary;->access$1100(Lcom/android/sec_settings/DataUsageSummary;J)V

    .line 1557
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mChart:Lcom/android/sec_settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$1900(Lcom/android/sec_settings/DataUsageSummary;)Lcom/android/sec_settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/sec_settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/DataUsageSummary;->access$1300(Lcom/android/sec_settings/DataUsageSummary;J)V

    .line 1552
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)V

    .line 1567
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$16;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)V

    .line 1562
    return-void
.end method
