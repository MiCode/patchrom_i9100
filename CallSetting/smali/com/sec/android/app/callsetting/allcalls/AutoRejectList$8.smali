.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogSearch()V
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
    .line 603
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 608
    packed-switch p2, :pswitch_data_0

    .line 626
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$000(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 628
    return-void

    .line 611
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "contacts.com.sec.android.app.dialertab.calllog.LogsListActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "OPTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 617
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-static {}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$1100()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
