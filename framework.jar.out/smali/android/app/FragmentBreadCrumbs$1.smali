.class Landroid/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/app/FragmentBreadCrumbs;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/FragmentManager$BackStackEntry;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    .line 303
    .local v0, bse:Landroid/app/FragmentManager$BackStackEntry;
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #getter for: Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #getter for: Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 322
    .end local v0           #bse:Landroid/app/FragmentManager$BackStackEntry;
    :cond_0
    :goto_0
    return-void

    .line 308
    .restart local v0       #bse:Landroid/app/FragmentManager$BackStackEntry;
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #getter for: Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #getter for: Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v2

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2, v1, v3}, Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_4

    .line 316
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 309
    goto :goto_1

    .line 318
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    goto :goto_0
.end method
