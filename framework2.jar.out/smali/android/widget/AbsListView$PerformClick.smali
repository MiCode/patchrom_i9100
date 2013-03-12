.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3053
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3053
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3059
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mForcedClick:Z
    invoke-static {v4}, Landroid/widget/AbsListView;->access$500(Landroid/widget/AbsListView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 3077
    :cond_0
    :goto_0
    return-void

    .line 3061
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3062
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget v2, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3063
    .local v2, motionPosition:I
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v4, :cond_0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3066
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3069
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 3071
    :try_start_0
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3072
    :catch_0
    move-exception v1

    .line 3073
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method
