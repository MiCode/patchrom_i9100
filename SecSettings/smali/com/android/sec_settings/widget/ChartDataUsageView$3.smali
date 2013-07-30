.class Lcom/android/sec_settings/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/sec_settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/sec_settings/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 354
    if-eqz p2, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #calls: Lcom/android/sec_settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/sec_settings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$500(Lcom/android/sec_settings/widget/ChartDataUsageView;Lcom/android/sec_settings/widget/ChartSweepView;)V

    .line 356
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #calls: Lcom/android/sec_settings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$100(Lcom/android/sec_settings/widget/ChartDataUsageView;)V

    .line 358
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$600(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$700(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/sec_settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/sec_settings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$200(Lcom/android/sec_settings/widget/ChartDataUsageView;Lcom/android/sec_settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/sec_settings/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/sec_settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$600(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/sec_settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$700(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/sec_settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/sec_settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/sec_settings/widget/ChartDataUsageView;->mListener:Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView;->access$400(Lcom/android/sec_settings/widget/ChartDataUsageView;)Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/sec_settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
