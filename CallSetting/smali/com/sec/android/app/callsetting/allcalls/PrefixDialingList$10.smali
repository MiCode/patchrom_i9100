.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 574
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$400(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$000(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 576
    return-void

    .line 574
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
