.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$1;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->onResume()V
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
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$000(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 155
    return-void
.end method
