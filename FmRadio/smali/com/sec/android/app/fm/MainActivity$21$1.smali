.class Lcom/sec/android/app/fm/MainActivity$21$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity$21;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/MainActivity$21;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity$21;)V
    .locals 0
    .parameter

    .prologue
    .line 4094
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$21$1;->this$1:Lcom/sec/android/app/fm/MainActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4097
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$21$1;->this$1:Lcom/sec/android/app/fm/MainActivity$21;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity$21;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4098
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$21$1;->this$1:Lcom/sec/android/app/fm/MainActivity$21;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity$21;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$7100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4099
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$21$1;->this$1:Lcom/sec/android/app/fm/MainActivity$21;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity$21;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$7100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4100
    :cond_0
    return-void
.end method
