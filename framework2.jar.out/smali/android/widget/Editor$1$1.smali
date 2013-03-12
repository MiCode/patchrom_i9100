.class Landroid/widget/Editor$1$1;
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
    .line 257
    iput-object p1, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v0, v0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v0, v0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    #calls: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->access$200(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v0, v0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v0, v0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    #calls: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->access$200(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    .line 264
    :cond_0
    return-void
.end method
