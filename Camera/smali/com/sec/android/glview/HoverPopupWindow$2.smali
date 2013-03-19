.class Lcom/sec/android/glview/HoverPopupWindow$2;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/HoverPopupWindow;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/HoverPopupWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow$2;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$2;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    #calls: Lcom/sec/android/glview/HoverPopupWindow;->showPopup()V
    invoke-static {v0}, Lcom/sec/android/glview/HoverPopupWindow;->access$100(Lcom/sec/android/glview/HoverPopupWindow;)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$2;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$2;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$2;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow$2;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    #getter for: Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/glview/HoverPopupWindow;->access$200(Lcom/sec/android/glview/HoverPopupWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    :cond_0
    return-void
.end method
