.class Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 239
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, v7, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 240
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 241
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 243
    .local v1, comp:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, compPkg:Ljava/lang/String;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 245
    .local v6, pkg:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    if-nez p4, :cond_1

    .line 247
    const/4 v7, 0x1

    monitor-exit v8

    .line 256
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #comp:Landroid/content/ComponentName;
    .end local v2           #compPkg:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #pkg:Ljava/lang/String;
    :goto_1
    return v7

    .line 249
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #comp:Landroid/content/ComponentName;
    .restart local v2       #compPkg:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #pkg:Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 250
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v9, "enabled_accessibility_services"

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v10

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    invoke-static {v7, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;)V

    .line 244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #comp:Landroid/content/ComponentName;
    .end local v2           #compPkg:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #pkg:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_1

    .line 257
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 217
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, compPkg:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 221
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v5, "enabled_accessibility_services"

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v6

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    invoke-static {v3, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;)V

    .line 225
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTouchExplorationGrantedServices:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v5, "touch_exploration_granted_accessibility_services"

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v6

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    invoke-static {v3, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;)V

    .line 230
    monitor-exit v4

    .line 234
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #compPkg:Ljava/lang/String;
    :goto_0
    return-void

    .line 233
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledAccessibilityServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateTouchExplorationGrantedAccessibilityServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 269
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 274
    :cond_0
    monitor-exit v1

    .line 279
    :goto_0
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSomePackagesChanged()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 208
    :cond_0
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
