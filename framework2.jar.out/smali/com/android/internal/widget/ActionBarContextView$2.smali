.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    .line 299
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 300
    .local v6, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 301
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 302
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 305
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 306
    .local v8, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 309
    .local v3, height:I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 310
    .local v5, root:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 311
    .local v7, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 313
    .local v9, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v10, v7, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_1

    move-object v9, v7

    .line 314
    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 315
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_2

    const/4 v4, 0x0

    .line 316
    .local v4, isMultiWindowPopup:Z
    :goto_0
    if-eqz v4, :cond_1

    iget v10, v2, Landroid/graphics/Rect;->left:I

    if-ltz v10, :cond_0

    iget v10, v2, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_1

    .line 317
    :cond_0
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    #calls: Lcom/android/internal/widget/ActionBarContextView;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    invoke-static {v10, p1, v2}, Lcom/android/internal/widget/ActionBarContextView;->access$100(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 322
    .end local v4           #isMultiWindowPopup:Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 324
    .local v0, cheatSheet:Landroid/widget/Toast;
    const/16 v10, 0x33

    const/4 v11, 0x0

    aget v11, v6, v11

    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v12, v3

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    invoke-virtual {v0, v10, v11, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 327
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    const/4 v10, 0x1

    return v10

    .line 315
    .end local v0           #cheatSheet:Landroid/widget/Toast;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
