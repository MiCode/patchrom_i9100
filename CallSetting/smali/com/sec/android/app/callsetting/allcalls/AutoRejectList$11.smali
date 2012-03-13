.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$800(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$000(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 669
    return-void
.end method
