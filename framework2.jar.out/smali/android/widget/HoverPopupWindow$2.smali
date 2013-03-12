.class Landroid/widget/HoverPopupWindow$2;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$2;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$2;->this$0:Landroid/widget/HoverPopupWindow;

    #calls: Landroid/widget/HoverPopupWindow;->showPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$100(Landroid/widget/HoverPopupWindow;)V

    .line 535
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$2;->this$0:Landroid/widget/HoverPopupWindow;

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$2;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$2;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$2;->this$0:Landroid/widget/HoverPopupWindow;

    #getter for: Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$200(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    :cond_0
    return-void
.end method
