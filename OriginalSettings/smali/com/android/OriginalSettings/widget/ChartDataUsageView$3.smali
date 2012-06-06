.class Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/OriginalSettings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/OriginalSettings/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 326
    if-eqz p2, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #calls: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/OriginalSettings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$500(Lcom/android/OriginalSettings/widget/ChartDataUsageView;Lcom/android/OriginalSettings/widget/ChartSweepView;)V

    .line 328
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #calls: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$100(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)V

    .line 330
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/OriginalSettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$600(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/OriginalSettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$700(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/OriginalSettings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$200(Lcom/android/OriginalSettings/widget/ChartDataUsageView;Lcom/android/OriginalSettings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/OriginalSettings/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/OriginalSettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$600(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/OriginalSettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$700(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
