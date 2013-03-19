.class Lcom/android/settings/wifi/WifiNewDialog$3;
.super Ljava/lang/Object;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiNewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNewDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 865
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 859
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 861
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v7, 0x40

    .line 837
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v7, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v7, :cond_2

    .line 839
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    #getter for: Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiNewDialog;->access$000(Lcom/android/settings/wifi/WifiNewDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902fb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090290

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902fc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->access$002(Lcom/android/settings/wifi/WifiNewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    #getter for: Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiNewDialog;->access$000(Lcom/android/settings/wifi/WifiNewDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiNewDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 856
    :cond_1
    return-void

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog$3;->this$0:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
