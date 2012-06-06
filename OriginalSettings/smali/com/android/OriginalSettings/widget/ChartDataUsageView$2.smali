.class Lcom/android/OriginalSettings/widget/ChartDataUsageView$2;
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
    .line 295
    iput-object p1, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/OriginalSettings/widget/ChartSweepView;Z)V
    .locals 1
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #calls: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$300(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)V

    .line 301
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/OriginalSettings/widget/ChartDataUsageView;->mListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->access$400(Lcom/android/OriginalSettings/widget/ChartDataUsageView;)Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 304
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/OriginalSettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "sweep"

    .prologue
    .line 309
    return-void
.end method
