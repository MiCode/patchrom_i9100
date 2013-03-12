.class public Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;
.super Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;
.source "ApplicationPermissionControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ALLPACKAGES:Ljava/lang/String; = "*"

.field private static final PKGNAME_PERMISSION_ALLIST:Ljava/lang/String; = "Alllist"

.field private static final PKGNAME_PERMISSION_BLACKLIST:Ljava/lang/String; = "Blacklist"

.field private static final PKGNAME_PERMISSION_WHITELIST:Ljava/lang/String; = "Whitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPermissionControlPolicy"

.field private static mAppPermissionControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 88
    return-void
.end method

.method private declared-synchronized clearBWList(ILjava/lang/String;)V
    .locals 25
    .parameter "adminUid"
    .parameter "listType"

    .prologue
    .line 444
    monitor-enter p0

    if-lez p1, :cond_0

    :try_start_0
    sget-object v22, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v22, :cond_0

    sget-object v22, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-eqz v22, :cond_1

    .line 570
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 447
    :cond_1
    :try_start_1
    sget-object v22, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 451
    sget-object v22, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 452
    .local v16, singleAdminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 455
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 456
    .local v8, eRevokeOrRollbackList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 457
    .local v17, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 458
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 459
    .local v11, perm:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    const-string v23, "Blacklist"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 461
    .local v5, currentBLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    const-string v23, "Whitelist"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 463
    .local v6, currentWLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 465
    .local v14, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v22, "Blacklist"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 469
    :cond_3
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 472
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 510
    :cond_4
    :goto_2
    invoke-interface {v8, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 512
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Set;

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 444
    .end local v5           #currentBLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #currentWLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #eRevokeOrRollbackList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11           #perm:Ljava/lang/String;
    .end local v14           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #singleAdminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v17           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 475
    .restart local v5       #currentBLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #currentWLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8       #eRevokeOrRollbackList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11       #perm:Ljava/lang/String;
    .restart local v14       #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #singleAdminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v17       #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .restart local v14       #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 480
    :cond_6
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 483
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 484
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto/16 :goto_1

    .line 488
    :cond_7
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 489
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 490
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    goto :goto_2

    .line 492
    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .restart local v14       #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 496
    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .restart local v14       #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 498
    invoke-interface {v14, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 500
    :cond_a
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 501
    .local v18, strItr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 502
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 503
    .local v13, pkgName:Ljava/lang/String;
    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 504
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 515
    .end local v5           #currentBLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #currentWLPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #perm:Ljava/lang/String;
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v14           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v18           #strItr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "APPLICATION_PERMISSIONCONTROL"

    const-string v24, "ListType"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    move-object/from16 v3, v24

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 521
    :cond_d
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 522
    .restart local v18       #strItr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 523
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 524
    .local v12, perm1:Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 525
    .local v21, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 526
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 527
    .local v20, uid:Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-eq v0, v1, :cond_f

    .line 529
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 530
    .local v7, eBLPkgOneAdmin:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_f

    .line 532
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 533
    .local v15, pkgname:Ljava/lang/String;
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 534
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 540
    .end local v7           #eBLPkgOneAdmin:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #perm1:Ljava/lang/String;
    .end local v15           #pkgname:Ljava/lang/String;
    .end local v20           #uid:Ljava/lang/Integer;
    .end local v21           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_11
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "APPLICATION_PERMISSIONCONTROL"

    const-string v24, "ListType"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    move-object/from16 v3, v24

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 545
    :cond_12
    const/16 v19, 0x0

    .line 547
    .local v19, uPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 548
    .local v10, perStrItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 549
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 550
    .restart local v11       #perm:Ljava/lang/String;
    const-string v22, "Whitelist"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 557
    :goto_6
    if-eqz v19, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_13

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    goto :goto_5

    .line 554
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    goto :goto_6

    .line 562
    .end local v11           #perm:Ljava/lang/String;
    :cond_15
    const-string v22, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 564
    sget-object v22, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 566
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "APPLICATION_PERMISSIONCONTROL"

    const-string v24, "ListType"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    move-object/from16 v3, v24

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized createAdminMap(ILjava/lang/String;)V
    .locals 3
    .parameter "adminUid"
    .parameter "permission"

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 833
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceAppPermisionControlPermission()I
    .locals 2

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_PERMISSION_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .parameter "callingUid"
    .parameter "permission"
    .parameter
    .parameter "add"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    .local p3, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v2, ePkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 952
    .local v4, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v4, :cond_0

    .line 1019
    .end local p3           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object p3

    .line 956
    .restart local p3       #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object p3, v2

    .line 958
    goto :goto_0

    .line 961
    :cond_1
    const-string v9, "*"

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 962
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 964
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 965
    if-nez v2, :cond_2

    .line 966
    const-string v9, "ApplicationPermissionControlPolicy"

    const-string v10, "getEffectiveAllPackages: returns null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 p3, 0x0

    goto :goto_0

    .line 971
    :cond_2
    if-eqz p4, :cond_6

    .line 972
    const-string v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 973
    .local v6, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 974
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 975
    .local v5, pkg:Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 976
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 980
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const-string v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object p3, v2

    .line 982
    goto :goto_0

    .line 984
    :cond_5
    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 988
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    move-object p3, v2

    .line 989
    goto :goto_0

    .line 992
    :cond_8
    const-string v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 993
    .restart local v6       #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 994
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 995
    .restart local v5       #pkg:Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 996
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 999
    .end local v5           #pkg:Ljava/lang/String;
    :cond_a
    if-eqz p4, :cond_c

    :cond_b
    move-object p3, v2

    .line 1019
    goto/16 :goto_0

    .line 1002
    :cond_c
    sget-object v9, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1003
    .local v8, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1004
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1007
    .local v7, uid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_d

    .line 1009
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1010
    .local v1, eBLPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1012
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1013
    .local v0, eBLPkgName:Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1014
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method private getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 14
    .parameter "callingUid"
    .parameter "permission"
    .parameter
    .parameter "add"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p3, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v4, ePkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1073
    .local v6, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v6, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-object v4

    .line 1079
    :cond_1
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1082
    const-string v12, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1084
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1085
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1086
    .local v1, allPkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1091
    .end local v1           #allPkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz p4, :cond_5

    .line 1092
    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1093
    .local v9, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1094
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1095
    .local v7, pkg:Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1096
    invoke-interface {v4, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1088
    .end local v7           #pkg:Ljava/lang/String;
    .end local v9           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1101
    :cond_4
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1104
    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1121
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1124
    if-eqz p4, :cond_0

    .line 1132
    sget-object v12, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1133
    .local v11, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1134
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1137
    .local v10, uid:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, p1, :cond_6

    .line 1139
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1140
    .local v3, eBLPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1142
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1143
    .local v2, eBLPkgName:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1144
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1109
    .end local v2           #eBLPkgName:Ljava/lang/String;
    .end local v3           #eBLPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v10           #uid:Ljava/lang/Integer;
    .end local v11           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_8
    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1110
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 1113
    :cond_9
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1114
    .local v8, pkgName:Ljava/lang/String;
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1115
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "permission"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v1, eAllPkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "ADMIN"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 632
    .local v0, adminUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 634
    .local v5, pkgInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 635
    .local v4, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 638
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 641
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 642
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 643
    const-string v6, "ApplicationPermissionControlPolicy"

    const-string v7, "Can\'t apply policy to EDM Admin: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    :cond_1
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 649
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 650
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 657
    .end local v3           #n:I
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    return-object v1
.end method

.method private getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "callingUid"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1023
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v1, eBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1027
    .local v2, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v2, :cond_0

    move-object v6, v7

    .line 1062
    :goto_0
    return-object v6

    .line 1030
    :cond_0
    const-string v6, "Blacklist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1031
    .local v0, blPkgList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "Whitelist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 1033
    .local v5, whPkgList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v7

    .line 1034
    goto :goto_0

    .line 1036
    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1037
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    .line 1038
    goto :goto_0

    .line 1040
    :cond_4
    const-string v6, "*"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v7

    .line 1041
    goto :goto_0

    .line 1043
    :cond_5
    const-string v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1044
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1045
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1046
    if-nez v1, :cond_7

    .line 1047
    const-string v6, "ApplicationPermissionControlPolicy"

    const-string v8, "getEffectiveBlacklist: returns null"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 1048
    goto :goto_0

    .line 1051
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1054
    :cond_7
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1055
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1056
    .local v4, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1057
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1058
    .local v3, pkgName:Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1059
    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    move-object v6, v1

    .line 1062
    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 821
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 824
    const/4 v2, 0x0

    .line 826
    :goto_0
    return-object v2

    .line 825
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 826
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private declared-synchronized getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 718
    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 759
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 721
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getPermissionList()Ljava/util/List;

    move-result-object v4

    .line 722
    .local v4, permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 725
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v3, permBWList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    sget-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 728
    .local v9, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 729
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 730
    .local v8, uid:Ljava/lang/Integer;
    new-instance v0, Landroid/app/enterprise/AppPermissionControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppPermissionControlInfo;-><init>()V

    .line 731
    .local v0, appPermContInfo:Landroid/app/enterprise/AppPermissionControlInfo;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    .line 732
    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 734
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->entries:Ljava/util/List;

    .line 735
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 736
    .local v6, permissionListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iput-object v6, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    .line 737
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 739
    .local v5, permission:Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 741
    .local v7, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 744
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 745
    .local v1, bwPkgList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 748
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 718
    .end local v0           #appPermContInfo:Landroid/app/enterprise/AppPermissionControlInfo;
    .end local v1           #bwPkgList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permBWList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    .end local v4           #permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #permission:Ljava/lang/String;
    .end local v6           #permissionListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8           #uid:Ljava/lang/Integer;
    .end local v9           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 752
    .restart local v0       #appPermContInfo:Landroid/app/enterprise/AppPermissionControlInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permBWList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    .restart local v4       #permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #permissionListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v8       #uid:Ljava/lang/Integer;
    .restart local v9       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_2
    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 753
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 756
    .end local v0           #appPermContInfo:Landroid/app/enterprise/AppPermissionControlInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #permissionListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8           #uid:Ljava/lang/Integer;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 757
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private declared-synchronized getPermissionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1207
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v1, permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1211
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1212
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1213
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1214
    .local v2, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1216
    .local v0, perm:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1217
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1207
    .end local v0           #perm:Ljava/lang/String;
    .end local v1           #permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1221
    .restart local v1       #permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method private declared-synchronized handleAdminAdded(I)V
    .locals 14
    .parameter "adminUid"

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v3, grantPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v12, :cond_0

    sget-object v12, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 398
    :cond_0
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "mAppPermissionControl is null. handleAdminAdded not needed"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 401
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getPackageNameForUid(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 402
    .local v1, adminPkgName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 404
    .local v8, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_2
    iget-object v12, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x1000

    invoke-virtual {v12, v1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 410
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    :try_start_3
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v12, :cond_4

    .line 411
    :cond_3
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "illegal input found. can\'t do handleAdminAdded operation"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 395
    .end local v1           #adminPkgName:Ljava/lang/String;
    .end local v3           #grantPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 405
    .restart local v1       #adminPkgName:Ljava/lang/String;
    .restart local v3       #grantPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 406
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "handleAdminAdded failed"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, PermissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 417
    .local v6, permission:Ljava/lang/String;
    sget-object v12, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 418
    .local v11, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 419
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 420
    .local v10, uid:Ljava/lang/Integer;
    sget-object v12, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 422
    .local v7, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_6

    .line 424
    const-string v12, "Blacklist"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "Blacklist"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 426
    :cond_7
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 431
    .end local v6           #permission:Ljava/lang/String;
    .end local v7           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v10           #uid:Ljava/lang/Integer;
    .end local v11           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 432
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v9, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 435
    .local v5, perm:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v5, v9}, Landroid/content/pm/PackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private handleAdminRemoval(I)V
    .locals 1
    .parameter "adminUid"

    .prologue
    .line 390
    const-string v0, "Alllist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    .line 392
    return-void
.end method

.method private killApplications(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 595
    .local v0, aMgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 596
    .local v5, runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 597
    :cond_0
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "killApplications failed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v0           #aMgr:Landroid/app/ActivityManager;
    .end local v5           #runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v2

    .line 601
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "killApplications failed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #aMgr:Landroid/app/ActivityManager;
    .restart local v5       #runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 607
    .local v1, am:Landroid/app/IActivityManager;
    if-nez v1, :cond_3

    .line 608
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "IActivityManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 613
    .local v6, runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 615
    :try_start_1
    const-string v7, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is going to be killed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v1, v7, v8}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 619
    :catch_1
    move-exception v3

    .line 620
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "killApplicationProcess failed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reinforceApplicationPermissionControl()V
    .locals 13

    .prologue
    .line 1225
    const/4 v5, 0x0

    .line 1226
    .local v5, permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "ApplicationPermissionControlPolicy"

    const-string v12, "reinforceApplicationPermissionControl"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getPermissionList()Ljava/util/List;

    move-result-object v5

    .line 1228
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    sget-object v11, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1232
    .local v10, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1233
    .local v7, permissionListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1234
    .local v6, permission:Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1235
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1236
    .local v0, eBLPkgListAllAdmin:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1237
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1238
    .local v9, uid:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v11, v6}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1239
    .local v1, eBLPkgOneAdmin:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1240
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1242
    .end local v1           #eBLPkgOneAdmin:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #uid:Ljava/lang/Integer;
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1243
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1246
    .end local v0           #eBLPkgListAllAdmin:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #permission:Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1250
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1251
    .local v3, perStrItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1253
    .local v4, perm:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1254
    .local v8, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v4, v8}, Landroid/content/pm/PackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 1256
    .end local v4           #perm:Ljava/lang/String;
    .end local v8           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v11, "ApplicationPermissionControlPolicy"

    const-string v12, "reinforceApplicationPermissionControl done"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "callingUid"
    .parameter "permission"
    .parameter
    .parameter "add"
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    .local p3, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->createAdminMap(ILjava/lang/String;)V

    .line 1162
    if-eqz p4, :cond_0

    .line 1163
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1165
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1166
    .local v11, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    .end local v11           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    const/4 v8, 0x0

    .line 1173
    .local v8, ePkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Blacklist"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-direct/range {p0 .. p4}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 1179
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, pkgName:Ljava/lang/String;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 1181
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1183
    if-eqz p4, :cond_2

    .line 1184
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1185
    .local v7, cv:Landroid/content/ContentValues;
    const-string v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v1, "permission"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    const-string v1, "Object"

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1160
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #ePkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1176
    .restart local v8       #ePkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p4}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 1192
    .restart local v4       #pkgName:Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1193
    .local v9, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v1, "permission"

    invoke-virtual {v9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string v1, "Object"

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1203
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v9           #fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    monitor-exit p0

    return-object v8
.end method

.method private updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "callingUid"
    .parameter "permission"
    .parameter "pkgName"
    .parameter "add"
    .parameter "listType"

    .prologue
    .line 840
    if-eqz p4, :cond_2

    .line 841
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 844
    .local v0, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .end local v0           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 851
    :cond_2
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 853
    sget-object v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "callingUid"
    .parameter "permission"
    .parameter
    .parameter "add"
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, iPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 869
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->loadApplicationPermissionControlList()V

    .line 872
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move-object v5, v7

    .line 943
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v5

    .line 878
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v5, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 880
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 869
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v5           #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 884
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "ADMIN"

    const-string v9, "adminUid"

    invoke-virtual {v6, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 886
    .local v0, adminUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 888
    .restart local v4       #pkgName:Ljava/lang/String;
    :try_start_3
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 890
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 891
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_5

    .line 892
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 893
    const-string v6, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t apply policy to system app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 894
    goto :goto_0

    .line 897
    :cond_6
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 898
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 899
    const-string v6, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t apply policy to EDM Admin: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v5, v7

    .line 900
    goto/16 :goto_0

    .line 904
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 906
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 912
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_7
    if-nez p4, :cond_b

    .line 914
    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    :cond_8
    move-object v5, v7

    .line 917
    goto/16 :goto_0

    .line 919
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 920
    .restart local v4       #pkgName:Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 924
    const/4 v5, 0x0

    move-object v5, v7

    .line 925
    goto/16 :goto_0

    .line 933
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const-string v6, "*"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 934
    if-eqz p4, :cond_2

    .line 935
    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v7, "*"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 940
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addPackagesToPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .parameter "permission"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 117
    const/4 v7, 0x0

    .line 118
    .local v7, ret:Z
    const/4 v10, 0x0

    .line 119
    .local v10, uPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    .line 120
    .local v1, callingUid:I
    if-eqz p1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v7

    .line 169
    :goto_0
    return v4

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, pkgNameList1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 130
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 140
    .local v8, token:J
    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 143
    .local v6, ePkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 144
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 145
    goto :goto_0

    .line 147
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW returned empty list."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v6}, Landroid/content/pm/PackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 155
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 156
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    .line 158
    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    const/4 v7, 0x1

    .line 165
    :cond_6
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToPermissionBlackList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 169
    goto/16 :goto_0

    .line 160
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 161
    const/4 v7, 0x1

    goto :goto_1

    .line 163
    :cond_8
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public addPackagesToPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .parameter "permission"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 250
    const/4 v7, 0x0

    .line 251
    .local v7, ret:Z
    const/4 v10, 0x0

    .line 252
    .local v10, uPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    .line 254
    .local v1, callingUid:I
    if-eqz p1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v7

    .line 309
    :goto_0
    return v4

    .line 256
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 259
    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 262
    .local v3, pkgNameList1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 264
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 265
    goto :goto_0

    .line 268
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 276
    .local v8, token:J
    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 279
    .local v6, ePkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 280
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 281
    goto :goto_0

    .line 283
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW returned empty list."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v6}, Landroid/content/pm/PackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 291
    if-nez v10, :cond_6

    .line 292
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW null uPkgNameList failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 293
    goto :goto_0

    .line 296
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 297
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    .line 299
    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    const/4 v7, 0x1

    .line 306
    :cond_7
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToPermissionWhiteList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 309
    goto/16 :goto_0

    .line 301
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 302
    const/4 v7, 0x1

    goto :goto_1

    .line 304
    :cond_9
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public clearPackagesFromPermissionBlackList()Z
    .locals 5

    .prologue
    .line 241
    const/4 v1, 0x1

    .line 242
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v0

    .line 243
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 244
    .local v2, token:J
    const-string v4, "Blacklist"

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    .line 245
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    return v1
.end method

.method public clearPackagesFromPermissionWhiteList()Z
    .locals 5

    .prologue
    .line 380
    const/4 v1, 0x1

    .line 381
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v0

    .line 382
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 383
    .local v2, token:J
    const-string v4, "Whitelist"

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    .line 384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    return v1
.end method

.method public getPackagesFromPermissionBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v1, "getAppPermissionAllBlackLists:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "Blacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromPermissionWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v1, "getPackagesFromPermissionWhiteList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, "Whitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPermissionBlockedList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, PermissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 669
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v1, blockedPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move-object v1, v7

    .line 711
    .end local v1           #blockedPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 675
    .restart local v1       #blockedPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-nez v8, :cond_3

    .line 676
    const-string v8, "ApplicationPermissionControlPolicy"

    const-string v9, "mAppPermissionControl is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 677
    goto :goto_0

    .line 681
    :cond_3
    sget-object v8, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v1, v7

    .line 682
    goto :goto_0

    .line 684
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 686
    .local v3, permission:Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 687
    .local v6, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 689
    .local v0, allowed:Z
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 690
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 691
    .local v5, uid:Ljava/lang/Integer;
    const/4 v0, 0x1

    .line 692
    sget-object v7, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 694
    .local v4, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_6

    .line 696
    const-string v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 698
    :cond_7
    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 703
    const/4 v0, 0x0

    .line 708
    .end local v4           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5           #uid:Ljava/lang/Integer;
    :cond_8
    if-nez v0, :cond_5

    .line 709
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 669
    .end local v0           #allowed:Z
    .end local v1           #blockedPermList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permission:Ljava/lang/String;
    .end local v6           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized loadApplicationPermissionControlList()V
    .locals 13

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    .line 818
    :goto_0
    monitor-exit p0

    return-void

    .line 768
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    .line 770
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "ADMIN"

    const-string v12, "adminUid"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 774
    .local v9, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "permission"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "Object"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "ListType"

    aput-object v11, v2, v10

    .line 779
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 781
    .local v8, storedUid:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 784
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v10, v11, v8, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 786
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 787
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 788
    const-string v10, "Object"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, pkgName:Ljava/lang/String;
    const-string v10, "permission"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 792
    .local v5, permission:Ljava/lang/String;
    const-string v10, "ListType"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, bwType:Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 795
    .local v6, permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v6, :cond_2

    .line 796
    new-instance v6, Ljava/util/HashMap;

    .end local v6           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 797
    .restart local v6       #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v10, "Whitelist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v10, "Blacklist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 764
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v1           #bwType:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #permission:Ljava/lang/String;
    .end local v6           #permissionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7           #pkgName:Ljava/lang/String;
    .end local v8           #storedUid:I
    .end local v9           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 806
    .restart local v0       #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #storedUid:I
    .restart local v9       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 812
    sget-object v10, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 816
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v8           #storedUid:I
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->reinforceApplicationPermissionControl()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->handleAdminAdded(I)V

    .line 114
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 93
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->handleAdminRemoval(I)V

    .line 109
    return-void
.end method

.method public removePackagesFromPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .parameter "permission"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    .local v10, uPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    .line 176
    .local v1, callingUid:I
    const/4 v7, 0x0

    .line 178
    .local v7, ret:Z
    if-eqz p1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    .line 231
    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, pkgNameList1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 187
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 199
    .local v8, token:J
    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 202
    .local v6, ePkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 203
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 204
    goto :goto_0

    .line 207
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v6}, Landroid/content/pm/PackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 210
    if-nez v10, :cond_5

    .line 212
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 213
    goto :goto_0

    .line 216
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 217
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    .line 219
    :cond_6
    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 220
    const/4 v7, 0x1

    .line 228
    :cond_7
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackagesFromPermissionBlackList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 231
    goto/16 :goto_0

    .line 221
    :cond_8
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 222
    const/4 v7, 0x1

    goto :goto_1

    .line 226
    :cond_9
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public removePackagesFromPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 12
    .parameter "permission"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 313
    const/4 v10, 0x0

    .line 314
    .local v10, uPkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    .line 315
    .local v1, callingUid:I
    const/4 v7, 0x0

    .line 317
    .local v7, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 319
    .local v8, token:J
    if-eqz p1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    .line 370
    :goto_0
    return v0

    .line 321
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 324
    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 327
    .local v3, pkgNameList1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 329
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 336
    goto :goto_0

    .line 338
    :cond_3
    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 341
    .local v6, ePkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 342
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 343
    goto :goto_0

    .line 345
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW returned empty list."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 347
    goto :goto_0

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v6}, Landroid/content/pm/PackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 352
    if-nez v10, :cond_6

    .line 353
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW uPkgNameList failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 354
    goto :goto_0

    .line 357
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 358
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    .line 360
    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 361
    const/4 v7, 0x1

    .line 367
    :cond_7
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackagesFromPermissionWhiteList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 370
    goto/16 :goto_0

    .line 362
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 363
    const/4 v7, 0x1

    goto :goto_1

    .line 365
    :cond_9
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy$1;-><init>(Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method
