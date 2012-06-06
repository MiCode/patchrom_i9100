.class Lcom/android/OriginalSettings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/OriginalSettings/MasterClear$1;->this$0:Lcom/android/OriginalSettings/MasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 128
    iget-object v3, p0, Lcom/android/OriginalSettings/MasterClear$1;->this$0:Lcom/android/OriginalSettings/MasterClear;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 129
    .local v0, manager:Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 130
    .local v2, samsungAccnts:[Landroid/accounts/Account;
    array-length v1, v2

    .line 131
    .local v1, returnvalue_sa:I
    if-eqz v1, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/OriginalSettings/MasterClear$1;->this$0:Lcom/android/OriginalSettings/MasterClear;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0719

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/MasterClear$1;->this$0:Lcom/android/OriginalSettings/MasterClear;

    const/16 v4, 0x37

    #calls: Lcom/android/OriginalSettings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/MasterClear;->access$000(Lcom/android/OriginalSettings/MasterClear;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/OriginalSettings/MasterClear$1;->this$0:Lcom/android/OriginalSettings/MasterClear;

    #calls: Lcom/android/OriginalSettings/MasterClear;->showFinalConfirmation()V
    invoke-static {v3}, Lcom/android/OriginalSettings/MasterClear;->access$100(Lcom/android/OriginalSettings/MasterClear;)V

    goto :goto_0
.end method
