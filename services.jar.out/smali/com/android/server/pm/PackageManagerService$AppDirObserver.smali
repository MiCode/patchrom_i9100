.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 6534
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6535
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6536
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 6537
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 6538
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 16
    .parameter "event"
    .parameter "path"

    .prologue
    .line 6541
    const/4 v14, 0x0

    .line 6542
    .local v14, removedPackage:Ljava/lang/String;
    const/4 v15, -0x1

    .line 6543
    .local v15, removedUid:I
    const/4 v9, 0x0

    .line 6544
    .local v9, addedPackage:Ljava/lang/String;
    const/4 v10, -0x1

    .line 6547
    .local v10, addedUid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6548
    const/4 v12, 0x0

    .line 6549
    .local v12, fullPathStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 6550
    .local v2, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 6551
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v11, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6552
    .end local v2           #fullPath:Ljava/io/File;
    .local v11, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v12

    move-object v2, v11

    .line 6558
    .end local v11           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6561
    monitor-exit v7

    .line 6627
    :cond_1
    :goto_0
    return-void

    .line 6566
    :cond_2
    #calls: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static {v12}, Lcom/android/server/pm/PackageManagerService;->access$1300(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6567
    monitor-exit v7

    goto :goto_0

    .line 6612
    :catchall_0
    move-exception v1

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 6569
    :cond_3
    const/4 v13, 0x0

    .line 6571
    .local v13, p:Landroid/content/pm/PackageParser$Package;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6572
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v13, v0

    .line 6573
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6574
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x248

    if-eqz v1, :cond_4

    .line 6575
    if-eqz v13, :cond_4

    .line 6576
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v13, v3}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 6577
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6578
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6582
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x88

    if-eqz v1, :cond_5

    .line 6583
    if-nez v13, :cond_5

    .line 6584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x41

    :goto_2
    or-int/lit8 v3, v3, 0x2

    or-int/lit8 v3, v3, 0x4

    const/16 v4, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #calls: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 6591
    if-eqz v13, :cond_5

    .line 6598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6599
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    #calls: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v4, v6, v13, v1}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 6601
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6602
    :try_start_7
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6603
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6609
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6610
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6611
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 6612
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6614
    if-eqz v14, :cond_6

    .line 6615
    new-instance v5, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 6616
    .local v5, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6617
    const-string v1, "android.intent.extra.DATA_REMOVED"

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6618
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v4, v14

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 6621
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_6
    if-eqz v9, :cond_1

    .line 6622
    new-instance v5, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 6623
    .restart local v5       #extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6624
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v4, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    goto/16 :goto_0

    .line 6573
    .end local v5           #extras:Landroid/os/Bundle;
    :catchall_1
    move-exception v1

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 6584
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 6599
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 6601
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 6611
    :catchall_3
    move-exception v1

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 6612
    .end local v2           #fullPath:Ljava/io/File;
    .end local v13           #p:Landroid/content/pm/PackageParser$Package;
    .restart local v11       #fullPath:Ljava/io/File;
    :catchall_4
    move-exception v1

    move-object v2, v11

    .end local v11           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    goto/16 :goto_1
.end method
