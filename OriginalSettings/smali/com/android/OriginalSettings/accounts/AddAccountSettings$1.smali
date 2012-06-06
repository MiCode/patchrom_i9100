.class Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/accounts/AddAccountSettings;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/AddAccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

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
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 73
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->setResult(I)V

    .line 75
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->access$000(Lcom/android/OriginalSettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->access$000(Lcom/android/OriginalSettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 79
    :cond_0
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->finish()V

    .line 89
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/accounts/OperationCanceledException;
    :try_start_1
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AccountSettings"

    const-string v3, "addAccount was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 82
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 84
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 85
    .local v1, e:Landroid/accounts/AuthenticatorException;
    :try_start_3
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AddAccountSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/accounts/AddAccountSettings;->finish()V

    throw v2
.end method
