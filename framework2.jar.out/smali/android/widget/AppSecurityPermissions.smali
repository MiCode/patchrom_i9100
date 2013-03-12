.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$1;,
        Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;,
        Landroid/widget/AppSecurityPermissions$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"


# instance fields
.field private localLOGV:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Landroid/widget/AppSecurityPermissions$State;

.field private mDangerousIcon:Landroid/graphics/drawable/Drawable;

.field private mDangerousList:Landroid/widget/LinearLayout;

.field private mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultGrpLabel:Ljava/lang/String;

.field private mDefaultGrpName:Ljava/lang/String;

.field private mExpanded:Z

.field private mGroupLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNoPermsView:Landroid/view/View;

.field private mNonDangerousList:Landroid/widget/LinearLayout;

.field private mNormalIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermFormat:Ljava/lang/String;

.field private mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPermsView:Landroid/widget/LinearLayout;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowMaxIcon:Landroid/graphics/drawable/Drawable;

.field private mShowMinIcon:Landroid/graphics/drawable/Drawable;

.field private mShowMore:Landroid/view/View;

.field private mShowMoreIcon:Landroid/widget/ImageView;

.field private mShowMoreText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;)V
    .locals 10
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    .line 78
    const-string v7, "DefaultGrp"

    iput-object v7, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 123
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 124
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 125
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-nez p2, :cond_1

    .line 151
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 131
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 132
    .local v5, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 133
    .local v4, size:I
    if-lez v4, :cond_2

    .line 134
    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {p0, v7, v2}, Landroid/widget/AppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 138
    .end local v4           #size:I
    .end local v5           #strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 141
    :try_start_0
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, sharedUid:I
    invoke-direct {p0, v3, v2}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v3           #sharedUid:I
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 149
    .local v6, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "AppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could\'nt retrieve shared user id for:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    .line 78
    const-string v5, "DefaultGrp"

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 102
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 104
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 113
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 114
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5, v2}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 116
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 117
    .local v4, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppSecurityPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    .line 78
    const-string v0, "DefaultGrp"

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 98
    return-void
.end method

.method private aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    .local p2, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 432
    :cond_0
    return-void

    .line 410
    :cond_1
    if-eqz p2, :cond_0

    .line 413
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 414
    .local v2, grpNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 415
    .local v3, grpNamesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, grpDesc:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    .local v1, grpNameKey:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 419
    .local v4, grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v4, :cond_2

    .line 422
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionInfo;

    .line 423
    .local v7, permInfo:Landroid/content/pm/PermissionInfo;
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 424
    .local v6, permDesc:Ljava/lang/CharSequence;
    invoke-direct {p0, v0, v6}, Landroid/widget/AppSecurityPermissions;->formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 425
    goto :goto_1

    .line 427
    .end local v6           #permDesc:Ljava/lang/CharSequence;
    .end local v7           #permInfo:Landroid/content/pm/PermissionInfo;
    :cond_3
    if-eqz v0, :cond_2

    .line 428
    iget-boolean v8, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v8, :cond_4

    const-string v8, "AppSecurityPermissions"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Group:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " description:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "groupDesc"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 265
    :goto_0
    return-object v1

    .line 261
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 262
    .local v0, len:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 263
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 265
    goto :goto_0
.end method

.method private displayNoPermissions()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void
.end method

.method private displayPermissions(Z)V
    .locals 9
    .parameter "dangerous"

    .prologue
    .line 315
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 316
    .local v3, permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz p1, :cond_2

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 317
    .local v5, permListView:Landroid/widget/LinearLayout;
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 319
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 320
    .local v4, permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    .local v2, loopPermGrpInfoStr:Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions;->getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    .local v0, grpLabel:Ljava/lang/CharSequence;
    iget-boolean v6, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v7, "AppSecurityPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding view group:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", desc:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v6, p1}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 315
    .end local v0           #grpLabel:Ljava/lang/CharSequence;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #loopPermGrpInfoStr:Ljava/lang/String;
    .end local v3           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #permListView:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    goto :goto_0

    .line 316
    .restart local v3       #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 329
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #permListView:Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private extractPerms([Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
    .parameter "strList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 204
    :cond_0
    return-void

    .line 194
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 196
    .local v4, permName:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 197
    .local v5, tmpPermInfo:Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 198
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v5           #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "AppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown permission:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "groupDesc"
    .parameter "permDesc"

    .prologue
    .line 275
    if-nez p1, :cond_1

    .line 276
    if-nez p2, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;->canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    if-nez p2, :cond_2

    move-object v0, p1

    .line 283
    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .parameter "sharedUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, sharedPkgList:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 174
    :cond_0
    return-void

    .line 171
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 172
    .local v3, sharedPkg:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "grpName"

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 292
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :cond_1
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 295
    .local v0, cachedLabel:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 300
    :try_start_0
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 305
    .local v3, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 307
    goto :goto_0

    .line 301
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppSecurityPermissions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid group name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "inflater"
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"
    .parameter "icon"

    .prologue
    .line 343
    const v4, 0x1090029

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 345
    .local v3, permView:Landroid/view/View;
    const v4, 0x1020284

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 346
    .local v2, permGrpView:Landroid/widget/TextView;
    const v4, 0x1020285

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 348
    .local v1, permDescView:Landroid/widget/TextView;
    const v4, 0x1020283

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 349
    .local v0, imgView:Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_0
    return-object v3

    .line 354
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "grpName"
    .parameter "description"
    .parameter "dangerous"

    .prologue
    .line 158
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 160
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_0

    const v0, 0x10802f3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, icon:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 162
    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 160
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x10803a9

    goto :goto_0
.end method

.method private getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Landroid/widget/AppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 188
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "pInfo"

    .prologue
    const/4 v0, 0x1

    .line 393
    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/widget/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    .line 450
    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iget-object v11, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/widget/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 457
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/widget/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v0, dangerousMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v5, normalMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    new-instance v7, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v9}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 467
    .local v7, permComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;
    if-eqz p1, :cond_9

    .line 469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 470
    .local v6, pInfo:Landroid/content/pm/PermissionInfo;
    iget-boolean v9, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_1

    const-string v9, "AppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Processing permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    invoke-direct {p0, v6}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 472
    iget-boolean v9, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "AppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not displayable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_2
    iget v9, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move-object v8, v0

    .line 478
    .local v8, permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :goto_1
    iget-object v9, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 479
    .local v1, grpName:Ljava/lang/String;
    :goto_2
    iget-boolean v9, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_3

    const-string v9, "AppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " belongs to group:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 481
    .local v2, grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v2, :cond_6

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .restart local v2       #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #grpName:Ljava/lang/String;
    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v8           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_4
    move-object v8, v5

    .line 475
    goto :goto_1

    .line 478
    .restart local v8       #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_5
    iget-object v1, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_2

    .line 486
    .restart local v1       #grpName:Ljava/lang/String;
    .restart local v2       #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_6
    invoke-static {v2, v6, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 487
    .local v4, idx:I
    iget-boolean v9, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_7

    const-string v9, "AppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "idx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_7
    if-gez v4, :cond_0

    .line 489
    neg-int v9, v4

    add-int/lit8 v4, v9, -0x1

    .line 490
    invoke-interface {v2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    .end local v1           #grpName:Ljava/lang/String;
    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v4           #idx:I
    .end local v6           #pInfo:Landroid/content/pm/PermissionInfo;
    .end local v8           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_8
    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-direct {p0, v0, v9}, Landroid/widget/AppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    .line 497
    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-direct {p0, v5, v9}, Landroid/widget/AppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    .line 500
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    sget-object v9, Landroid/widget/AppSecurityPermissions$State;->NO_PERMS:Landroid/widget/AppSecurityPermissions$State;

    iput-object v9, p0, Landroid/widget/AppSecurityPermissions;->mCurrentState:Landroid/widget/AppSecurityPermissions$State;

    .line 501
    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 502
    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_c

    sget-object v9, Landroid/widget/AppSecurityPermissions$State;->BOTH:Landroid/widget/AppSecurityPermissions$State;

    :goto_3
    iput-object v9, p0, Landroid/widget/AppSecurityPermissions;->mCurrentState:Landroid/widget/AppSecurityPermissions$State;

    .line 506
    :cond_a
    :goto_4
    iget-boolean v9, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_b

    const-string v9, "AppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCurrentState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/AppSecurityPermissions;->mCurrentState:Landroid/widget/AppSecurityPermissions$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_b
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions;->showPermissions()V

    .line 508
    return-void

    .line 502
    :cond_c
    sget-object v9, Landroid/widget/AppSecurityPermissions$State;->DANGEROUS_ONLY:Landroid/widget/AppSecurityPermissions$State;

    goto :goto_3

    .line 503
    :cond_d
    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 504
    sget-object v9, Landroid/widget/AppSecurityPermissions$State;->NORMAL_ONLY:Landroid/widget/AppSecurityPermissions$State;

    iput-object v9, p0, Landroid/widget/AppSecurityPermissions;->mCurrentState:Landroid/widget/AppSecurityPermissions$State;

    goto :goto_4
.end method

.method private showPermissions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    sget-object v0, Landroid/widget/AppSecurityPermissions$1;->$SwitchMap$android$widget$AppSecurityPermissions$State:[I

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mCurrentState:Landroid/widget/AppSecurityPermissions$State;

    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 364
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions;->displayNoPermissions()V

    goto :goto_0

    .line 368
    :pswitch_1
    invoke-direct {p0, v3}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Z)V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Z)V

    goto :goto_0

    .line 376
    :pswitch_3
    invoke-direct {p0, v3}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Z)V

    .line 377
    iget-boolean v0, p0, Landroid/widget/AppSecurityPermissions;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Z)V

    .line 379
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mShowMoreIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMaxIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    const v1, 0x1040541

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    :goto_1
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mShowMoreIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMinIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    const v1, 0x1040542

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 212
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 213
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    .line 214
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v2, 0x1020288

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    .line 215
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    const v2, 0x102028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMoreIcon:Landroid/widget/ImageView;

    .line 216
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    const v2, 0x1020289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v2, 0x1020287

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 218
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v2, 0x102028b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    .line 219
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v2, 0x1020286

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    .line 222
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 223
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 227
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v2, 0x104053e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v2, 0x104053f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    .line 231
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 232
    .local v0, outValue:Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103fb

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 233
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103fc

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 235
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103f9

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 237
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMaxIcon:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103fa

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 239
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mShowMinIcon:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 248
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/widget/AppSecurityPermissions;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "AppSecurityPermissions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AppSecurityPermissions;->mExpanded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions;->mExpanded:Z

    .line 513
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions;->showPermissions()V

    .line 514
    return-void

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
