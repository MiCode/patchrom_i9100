.class Lcom/android/OriginalSettings/DataUsageSummary$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 558
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 561
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$200(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 563
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$500(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$400()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 564
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$400()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 565
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$400()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 567
    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$400()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 568
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    invoke-virtual {v0, v3, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 569
    invoke-virtual {v0, v4, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 570
    invoke-virtual {v0, v3, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 571
    invoke-virtual {v0, v4, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 572
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$2;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$800(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 573
    return-void
.end method
