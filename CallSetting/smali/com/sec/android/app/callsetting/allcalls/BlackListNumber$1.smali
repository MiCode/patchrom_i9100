.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$1;
.super Ljava/lang/Object;
.source "BlackListNumber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$000(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 221
    return-void
.end method
