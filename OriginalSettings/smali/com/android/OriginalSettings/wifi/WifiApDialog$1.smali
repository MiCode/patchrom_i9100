.class Lcom/android/OriginalSettings/wifi/WifiApDialog$1;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$000(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$002(Lcom/android/OriginalSettings/wifi/WifiApDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$200(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$200(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$200(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 183
    :cond_2
    return-void
.end method
