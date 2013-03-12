.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field final synthetic val$admins:[Ljava/lang/String;

.field final synthetic val$apkFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 6
    .parameter "name"
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    .line 846
    monitor-enter p0

    .line 847
    :try_start_0
    const-string v2, "EnterpriseDeviceManagerService"

    const-string v3, "packageInstalled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v2, "EnterpriseDeviceManagerService"

    const-string v3, "Activate Admin for new apk"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$500()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, compNames:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v5, :cond_0

    .line 853
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 854
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    .line 861
    :cond_1
    const-string v2, "self_update_admin_component"

    const-string v3, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v2, v0, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 864
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 866
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$502(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 868
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 869
    monitor-exit p0

    .line 870
    return-void

    .line 869
    .end local v0           #compNames:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
