.class Lcom/android/OriginalSettings/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1033
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 1029
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v6, 0x20

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v6, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v6, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$000(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$300(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0881

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$300(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0883

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0882

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$002(Lcom/android/OriginalSettings/wifi/WifiConfigController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1021
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$000(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1024
    :cond_0
    return-void

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
