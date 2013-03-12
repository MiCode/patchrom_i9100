.class Lcom/android/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 285
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$1;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView$1;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    #getter for: Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContextView;->access$000(Lcom/android/internal/widget/ActionBarContextView;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 288
    return-void
.end method
