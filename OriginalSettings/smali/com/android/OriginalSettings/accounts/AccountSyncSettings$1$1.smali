.class Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v4, 0x1

    .line 106
    const/4 v1, 0x1

    .line 107
    .local v1, failed:Z
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, accountSyncSettingsActivity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v4

    .line 110
    .local v2, isActivityFinishable:Z
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v4, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 120
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 121
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$000(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "com.osp.app.signin"

    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v4}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$000(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 122
    const-string v3, "AccountSettings"

    const-string v4, "AccountSyncSettings : Remove Samsung account. The activity will be finished!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->finish()V

    .line 132
    :cond_1
    :goto_2
    return-void

    .line 108
    .end local v2           #isActivityFinishable:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    .restart local v2       #isActivityFinishable:Z
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    const/16 v4, 0x65

    #calls: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$100(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;I)V

    goto :goto_2

    .line 128
    :cond_4
    if-eqz v2, :cond_1

    .line 129
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->finish()V

    goto :goto_2

    .line 117
    :catch_0
    move-exception v3

    goto :goto_1

    .line 115
    :catch_1
    move-exception v3

    goto :goto_1

    .line 113
    :catch_2
    move-exception v3

    goto :goto_1
.end method
