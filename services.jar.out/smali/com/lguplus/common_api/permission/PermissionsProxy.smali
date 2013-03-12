.class public Lcom/lguplus/common_api/permission/PermissionsProxy;
.super Ljava/lang/Object;
.source "PermissionsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;
    }
.end annotation


# static fields
.field static final PERMS_CLS_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl.permission.PermissionsImpl"

.field static final PERMS_PKG_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl"


# instance fields
.field mPerms:Lcom/lguplus/common_api/permission/Permissions;

.field mPkgMgr:Landroid/content/pm/IPackageManager$Stub;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager$Stub;)V
    .locals 1
    .parameter "pkgMgr"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    .line 19
    iput-object p1, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    .line 20
    return-void
.end method

.method private getPerms()V
    .locals 7

    .prologue
    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    const-string v4, "com.lguplus.common_api_impl"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 34
    .local v0, apkPath:Ljava/lang/String;
    new-instance v3, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.lguplus.common_api_impl.permission.PermissionsImpl"

    invoke-virtual {v3, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lguplus/common_api/permission/Permissions;

    iput-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "uplus_common_api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPerms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public afterAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 96
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v1, "com.lguplus.common_api_impl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Lcom/lguplus/common_api/permission/Permissions;->afterAdd(Ljava/lang/String;I)V

    .line 98
    :cond_1
    return-void
.end method

.method public beforeAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 16
    .parameter "pkg"

    .prologue
    .line 58
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_3

    .line 59
    const/4 v9, 0x0

    .line 60
    .local v9, token:Ljava/lang/String;
    const/4 v1, 0x0

    .line 62
    .local v1, am:Landroid/content/res/AssetManager;
    :try_start_1
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .end local v1           #am:Landroid/content/res/AssetManager;
    .local v2, am:Landroid/content/res/AssetManager;
    :try_start_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    .line 64
    .local v4, cookie:I
    if-eqz v4, :cond_0

    .line 65
    const-string v12, "assets/uplus_common_api_perm_token.txt"

    invoke-virtual {v2, v4, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 66
    .local v6, is:Ljava/io/InputStream;
    const/16 v12, 0x1000

    new-array v3, v12, [B

    .local v3, bytes:[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, n:I
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 67
    new-instance v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v10, v3, v12, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v9           #token:Ljava/lang/String;
    .local v10, token:Ljava/lang/String;
    move-object v9, v10

    .end local v3           #bytes:[B
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v10           #token:Ljava/lang/String;
    .restart local v9       #token:Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 75
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v4           #cookie:I
    .restart local v1       #am:Landroid/content/res/AssetManager;
    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 76
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v9, v14}, Lcom/lguplus/common_api/permission/Permissions;->beforeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, userName:Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v12, "INVALID-TOKEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_2
    const/4 v7, 0x1

    .line 78
    .local v7, isValidToken:Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 79
    if-eqz v7, :cond_5

    .line 80
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 81
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".uplus_common_api"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 93
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v7           #isValidToken:Z
    .end local v9           #token:Ljava/lang/String;
    .end local v11           #userName:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 72
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v9       #token:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 73
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 90
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #token:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 91
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v9       #token:Ljava/lang/String;
    .restart local v11       #userName:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 83
    .restart local v7       #isValidToken:Z
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    const-string v13, ".uplus_common_api$"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    goto :goto_2

    .line 86
    :cond_6
    if-eqz v7, :cond_3

    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 72
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v7           #isValidToken:Z
    .end local v11           #userName:Ljava/lang/String;
    .restart local v2       #am:Landroid/content/res/AssetManager;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2           #am:Landroid/content/res/AssetManager;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    goto :goto_3

    .line 70
    :catch_3
    move-exception v12

    goto/16 :goto_0

    .end local v1           #am:Landroid/content/res/AssetManager;
    .restart local v2       #am:Landroid/content/res/AssetManager;
    :catch_4
    move-exception v12

    move-object v1, v2

    .end local v2           #am:Landroid/content/res/AssetManager;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    goto/16 :goto_0
.end method

.method public checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .parameter "permName"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkByUid(ILjava/lang/String;)Z
    .locals 1
    .parameter "uid"
    .parameter "permName"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGids(Ljava/lang/String;)[I
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->getGids(Ljava/lang/String;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemUid(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->isSystemUid(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDelPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lguplus/common_api/permission/Permissions;->del(Ljava/lang/String;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public reorderApkFiles([Ljava/lang/String;)V
    .locals 5
    .parameter "files"

    .prologue
    .line 104
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 105
    aget-object v3, p1, v1

    const-string v4, "LGUPlusLinuxCommonApi.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    aget-object v0, p1, v1

    .line 107
    .local v0, f:Ljava/lang/String;
    add-int/lit8 v2, v1, -0x1

    .local v2, j:I
    :goto_1
    if-ltz v2, :cond_0

    .line 108
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    .line 107
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 109
    :cond_0
    const/4 v3, 0x0

    aput-object v0, p1, v3

    .line 113
    .end local v0           #f:Ljava/lang/String;
    .end local v2           #j:I
    :cond_1
    return-void

    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
