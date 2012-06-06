.class Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$200(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    const v2, 0x7f0b07c7

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 185
    const-string v0, "AccountSettings"

    const-string v1, "AccountSyncSettings : Sync now button is clicked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    #calls: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->cancelAllAccountsSync()V
    invoke-static {v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$300(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    #calls: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V
    invoke-static {v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$400(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 193
    return-void

    .line 189
    :cond_0
    const-string v0, "AccountSettings"

    const-string v1, "AccountSyncSettings : Cancel sync button is clicked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    #calls: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V
    invoke-static {v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$500(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V

    goto :goto_0
.end method
