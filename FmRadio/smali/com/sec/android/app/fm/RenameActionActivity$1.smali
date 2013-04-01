.class Lcom/sec/android/app/fm/RenameActionActivity$1;
.super Ljava/lang/Object;
.source "RenameActionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameActionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameActionActivity$1;->this$0:Lcom/sec/android/app/fm/RenameActionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameActionActivity$1;->this$0:Lcom/sec/android/app/fm/RenameActionActivity;

    #getter for: Lcom/sec/android/app/fm/RenameActionActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameActionActivity;->access$100(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity$1;->this$0:Lcom/sec/android/app/fm/RenameActionActivity;

    #getter for: Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/RenameActionActivity;->access$000(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 76
    return-void
.end method
