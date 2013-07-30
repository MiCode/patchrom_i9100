.class Lcom/android/sec_settings/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1389
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1383
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 1385
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
    const/4 v6, 0x0

    const/16 v5, 0x40

    const/4 v2, 0x1

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v5, :cond_0

    .line 1367
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v5, :cond_1

    .line 1368
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #getter for: Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$200(Lcom/android/sec_settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    iget-object v3, v3, Lcom/android/sec_settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #getter for: Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$100(Lcom/android/sec_settings/wifi/WifiConfigController;)Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1374
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f090290

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #getter for: Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$300(Lcom/android/sec_settings/wifi/WifiConfigController;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1378
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #getter for: Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$200(Lcom/android/sec_settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #getter for: Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$200(Lcom/android/sec_settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1380
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void

    .line 1370
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$2;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #getter for: Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$200(Lcom/android/sec_settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1374
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
