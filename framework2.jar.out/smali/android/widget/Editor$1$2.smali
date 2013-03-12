.class Landroid/widget/Editor$1$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$1;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$1;


# direct methods
.method constructor <init>(Landroid/widget/Editor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 276
    iget-object v3, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    iget-object v3, v3, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    iget-object v3, v3, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 278
    .local v2, selectionStart:I
    iget-object v3, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    iget-object v3, v3, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 280
    .local v1, selectionEnd:I
    :try_start_0
    iget-object v3, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    iget-object v3, v3, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopSelectionActionMode()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    iget-object v3, v3, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 286
    iget-object v3, p0, Landroid/widget/Editor$1$2;->this$1:Landroid/widget/Editor$1;

    iget-object v3, v3, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 288
    .end local v1           #selectionEnd:I
    .end local v2           #selectionStart:I
    :cond_0
    return-void

    .line 281
    .restart local v1       #selectionEnd:I
    .restart local v2       #selectionStart:I
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
