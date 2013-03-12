.class Lcom/android/internal/widget/ActionBarContextView$4;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
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
    .line 374
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$4;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 376
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 377
    .local v4, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 378
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 379
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 383
    .local v5, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 385
    .local v3, height:I
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 387
    .local v0, cheatSheet:Landroid/widget/Toast;
    const/16 v6, 0x33

    aget v7, v4, v7

    aget v8, v4, v10

    add-int/2addr v8, v3

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 390
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    return v10
.end method
