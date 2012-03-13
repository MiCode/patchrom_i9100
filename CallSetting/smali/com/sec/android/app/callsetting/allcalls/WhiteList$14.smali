.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->alertdialogSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

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

    .line 607
    packed-switch p2, :pswitch_data_0

    .line 621
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1900(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1800(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 623
    return-void

    .line 609
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "contacts.com.sec.android.app.dialertab.calllog.LogsListActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "OPTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 615
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-static {}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1700()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
