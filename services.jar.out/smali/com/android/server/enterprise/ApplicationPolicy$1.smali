.class Lcom/android/server/enterprise/ApplicationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/ApplicationPolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 723
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v9, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->access$600(Lcom/android/server/enterprise/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, pkgAction:Ljava/lang/String;
    const-string v9, "application_state_disable_enable"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 726
    .local v3, intentCauseDisableEnable:Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 730
    .local v0, callingUid:I
    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 732
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 733
    if-nez v3, :cond_1

    .line 734
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;
    invoke-static {v9}, Lcom/android/server/enterprise/ApplicationPolicy;->access$700(Lcom/android/server/enterprise/ApplicationPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;

    move-result-object v9

    const-string v10, "ADMIN"

    const-string v11, "adminUid"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 736
    .local v7, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 739
    .local v6, storedUid:I
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10, v6}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 740
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    const-string v10, "applicationUninstallationCount"

    #calls: Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v6, v5, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #storedUid:I
    .end local v7           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 764
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 745
    :cond_2
    :try_start_1
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 747
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 749
    if-nez v3, :cond_1

    .line 750
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;
    invoke-static {v9}, Lcom/android/server/enterprise/ApplicationPolicy;->access$700(Lcom/android/server/enterprise/ApplicationPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;

    move-result-object v9

    const-string v10, "ADMIN"

    const-string v11, "adminUid"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 752
    .local v8, uidList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 755
    .restart local v6       #storedUid:I
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10, v6}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 756
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    const-string v10, "applicationInstallationCount"

    #calls: Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v6, v5, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v9, "ApplicationPolicy"

    const-string v10, "App install count incremented"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
