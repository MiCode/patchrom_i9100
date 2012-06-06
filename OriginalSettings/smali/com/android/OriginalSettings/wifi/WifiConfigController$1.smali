.class Lcom/android/OriginalSettings/wifi/WifiConfigController$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiConfigController;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
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
    .line 361
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$000(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$002(Lcom/android/OriginalSettings/wifi/WifiConfigController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 374
    :cond_2
    return-void
.end method
