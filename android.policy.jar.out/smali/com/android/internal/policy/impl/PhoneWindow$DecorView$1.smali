.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0
    .parameter

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2495
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2496
    .local v2, token:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x834

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x836

    if-ne v5, v6, :cond_1

    .line 2498
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v5

    const/16 v6, 0x835

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2500
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2504
    :cond_1
    const/4 v0, 0x0

    .line 2505
    .local v0, ctx:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_2

    .line 2506
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2508
    :cond_2
    if-eqz v0, :cond_3

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 2509
    check-cast v0, Landroid/app/Activity;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2510
    .local v1, root:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2511
    .local v3, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    .line 2513
    .local v4, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v5, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_3

    move-object v4, v3

    .line 2514
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 2515
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_3

    .line 2516
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2522
    .end local v1           #root:Landroid/view/View;
    .end local v3           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v5

    const/16 v6, 0x37

    invoke-virtual {v5, v2, v6, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 2525
    return-void
.end method
