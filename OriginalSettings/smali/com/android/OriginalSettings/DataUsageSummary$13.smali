.class Lcom/android/OriginalSettings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    .prologue
    .line 1279
    const-string v0, "DataUsage"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2200(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1281
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$800(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1500(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    .line 1291
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$800(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2800(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    .line 1286
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1301
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$13;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1296
    return-void
.end method
