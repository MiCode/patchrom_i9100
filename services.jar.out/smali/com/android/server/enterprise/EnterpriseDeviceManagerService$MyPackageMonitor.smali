.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 9
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 171
    const-string v6, "com.sec.enterprise.permissions"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "onPackageUpdateFinished"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 174
    .local v4, pm:Landroid/content/pm/PackageManager;
    const-string v6, "com.sec.enterprise.permissions"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 203
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v7

    .line 178
    const/4 v5, 0x0

    .line 179
    .local v5, updatedAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 181
    .local v2, admin:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object v5, v0

    goto :goto_1

    .line 187
    .end local v2           #admin:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_2
    if-eqz v5, :cond_4

    .line 188
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-static {v6, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v1

    .line 190
    .local v1, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v1, :cond_3

    .line 191
    monitor-exit v7

    goto :goto_0

    .line 201
    .end local v1           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 193
    .restart local v1       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z
    invoke-static {v6, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)Z

    .line 201
    .end local v1           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onSomePackagesChanged()V
    .locals 9

    .prologue
    .line 146
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v6

    .line 147
    const/4 v4, 0x0

    .line 148
    .local v4, removed:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 149
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 150
    .local v0, adm:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, change:I
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 152
    :cond_0
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin unexpectedly uninstalled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v4, 0x1

    .line 154
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V
    invoke-static {v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)V

    .line 148
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin package change removed component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v4, 0x1

    .line 162
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V
    invoke-static {v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)V

    goto :goto_1

    .line 166
    .end local v0           #adm:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1           #change:I
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v3       #i:I
    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    return-void
.end method
