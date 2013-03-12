.class public Landroid/server/spell/SpellScrollScanner;
.super Ljava/lang/Object;
.source "SpellScrollScanner.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SpellManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInformationHash:I

.field private mProhibitedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    .line 68
    iput-object p1, p0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Landroid/server/spell/SpellScrollScanner;->buildProhibitedPackageList()V

    .line 71
    return-void
.end method

.method private buildProhibitedPackageList()V
    .locals 7

    .prologue
    .line 138
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.stk"

    aput-object v6, v3, v5

    .line 143
    .local v3, list:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 144
    .local v4, pkgName:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getInformationHash()I
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 5
    .parameter "text"

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v4, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll;

    .line 123
    .local v1, info:Landroid/app/SpellScroll;
    invoke-virtual {v1, p1}, Landroid/app/SpellScroll;->getMatchedInstantSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v3

    .line 127
    .local v3, result:Landroid/app/SpellScroll;
    invoke-virtual {v1, v2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    .line 129
    monitor-exit p0

    .line 134
    .end local v1           #info:Landroid/app/SpellScroll;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #result:Landroid/app/SpellScroll;
    :goto_0
    return-object v3

    .line 132
    :cond_1
    monitor-exit p0

    .line 134
    const/4 v3, 0x0

    goto :goto_0

    .line 132
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;
    .locals 2
    .parameter "id"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 3
    .parameter "spellScrollName"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, result:Landroid/app/SpellScroll;
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/SpellScroll;

    move-object v1, v0

    .line 102
    monitor-exit p0

    .line 105
    :cond_0
    return-object v1

    .line 102
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized getSpellScrollList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames()Ljava/util/List;
    .locals 2
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
    .line 394
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames(I)Ljava/util/List;
    .locals 4
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll;

    .line 403
    .local v2, scroll:Landroid/app/SpellScroll;
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getPriority()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 404
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 401
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #scroll:Landroid/app/SpellScroll;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 408
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    const/4 v1, 0x0

    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .local v0, info:Landroid/app/SpellScroll;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 416
    .end local v0           #info:Landroid/app/SpellScroll;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isValidSpellScroll(Ljava/lang/String;)Z
    .locals 1
    .parameter "spellScrollName"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scanSpellScrolls()V
    .locals 39

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 173
    .local v25, pm:Landroid/content/pm/PackageManager;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v21, newSpellScrollList:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v22, newSpellScrollMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/app/SpellScroll;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v20, newSpellPackageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/app/SpellScroll;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v19, newSpellIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lorg/apache/http/message/BasicNameValuePair;>;"
    const/16 v26, 0x280

    .line 181
    .local v26, queryFlag:I
    new-instance v35, Landroid/content/Intent;

    const-string v36, "android.intent.action.SPELL"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x280

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 184
    .local v4, activitySpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v35, Landroid/content/Intent;

    const-string v36, "android.intent.action.SPELL"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x280

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v30

    .line 187
    .local v30, serviceSpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v35, Landroid/content/Intent;

    const-string v36, "android.intent.action.SPELL"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x280

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v28

    .line 190
    .local v28, receiverSpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v32, v0

    const/16 v35, 0x0

    aput-object v4, v32, v35

    const/16 v35, 0x1

    aput-object v30, v32, v35

    const/16 v35, 0x2

    aput-object v28, v32, v35

    .line 196
    .local v32, spellListArray:[Ljava/util/List;
    move-object/from16 v5, v32

    .local v5, arr$:[Ljava/util/List;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_f

    aget-object v18, v5, v9

    .line 198
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v10, info:Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x0

    .line 201
    .local v16, itemInfo:Landroid/content/pm/PackageItemInfo;
    const/4 v6, 0x0

    .line 203
    .local v6, defaultCastAction:I
    const/4 v15, 0x1

    .line 204
    .local v15, isDisabled:Z
    const/4 v14, 0x1

    .line 206
    .local v14, isComponentDisabled:Z
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 207
    move-object/from16 v0, v18

    if-ne v0, v4, :cond_4

    .line 208
    const/4 v6, 0x0

    .line 213
    :goto_2
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    .line 214
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    const/4 v15, 0x1

    .line 215
    :goto_3
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    const/4 v14, 0x1

    .line 223
    :cond_1
    :goto_4
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 225
    .local v23, packageName:Ljava/lang/String;
    :goto_5
    if-nez v14, :cond_0

    .line 230
    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 235
    :cond_2
    const/16 v33, 0x0

    .line 238
    .local v33, spellScroll:Landroid/app/SpellScroll;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-static {v0, v1, v6, v15}, Landroid/app/SpellScroll;->getMetaData(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;IZ)Landroid/app/SpellScroll;

    move-result-object v33

    .line 240
    sget-boolean v35, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v35, :cond_3

    .line 241
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SpellScroll META_DATA found in ["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 245
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/SpellScroll;

    .line 247
    .local v34, stored:Landroid/app/SpellScroll;
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 248
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 265
    .end local v34           #stored:Landroid/app/SpellScroll;
    :catch_0
    move-exception v7

    .line 266
    .local v7, e:Ljava/lang/Exception;
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SpellScroll parsing failed in "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " :"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 210
    .end local v7           #e:Ljava/lang/Exception;
    .end local v23           #packageName:Ljava/lang/String;
    .end local v33           #spellScroll:Landroid/app/SpellScroll;
    :cond_4
    const/4 v6, 0x2

    goto/16 :goto_2

    .line 214
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 215
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 216
    :cond_7
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1

    .line 217
    const/4 v6, 0x1

    .line 218
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 219
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_8

    const/4 v15, 0x1

    .line 220
    :goto_6
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_9

    const/4 v14, 0x1

    :goto_7
    goto/16 :goto_4

    .line 219
    :cond_8
    const/4 v15, 0x0

    goto :goto_6

    .line 220
    :cond_9
    const/4 v14, 0x0

    goto :goto_7

    .line 223
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 253
    .restart local v23       #packageName:Ljava/lang/String;
    .restart local v33       #spellScroll:Landroid/app/SpellScroll;
    .restart local v34       #stored:Landroid/app/SpellScroll;
    :cond_b
    :try_start_1
    sget-boolean v35, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v35, :cond_c

    .line 254
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]<=>["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_c
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 261
    .end local v34           #stored:Landroid/app/SpellScroll;
    :cond_d
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 196
    .end local v6           #defaultCastAction:I
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v14           #isComponentDisabled:Z
    .end local v15           #isDisabled:Z
    .end local v16           #itemInfo:Landroid/content/pm/PackageItemInfo;
    .end local v23           #packageName:Ljava/lang/String;
    .end local v33           #spellScroll:Landroid/app/SpellScroll;
    :cond_e
    add-int/lit8 v8, v9, 0x1

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_0

    .line 273
    .end local v18           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    new-instance v27, Landroid/content/Intent;

    const-string v35, "android.intent.action.MAIN"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v27, queryIntent:Landroid/content/Intent;
    const-string v35, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/16 v35, 0x200

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 278
    .local v3, activityPesudoSpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_19

    .line 280
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_10
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 282
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    .line 284
    .local v16, itemInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v16, :cond_10

    .line 288
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_12

    const/4 v12, 0x1

    .line 289
    .local v12, isActivityDisabled:Z
    :goto_9
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_13

    const/4 v13, 0x1

    .line 290
    .local v13, isAppDisabled:Z
    :goto_a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 292
    .restart local v23       #packageName:Ljava/lang/String;
    if-nez v12, :cond_10

    .line 297
    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    .line 304
    :cond_11
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 305
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/SpellScroll;

    .line 307
    .local v29, scroll:Landroid/app/SpellScroll;
    if-eqz v13, :cond_10

    .line 308
    invoke-virtual/range {v29 .. v29}, Landroid/app/SpellScroll;->setDisabled()V

    goto :goto_8

    .line 288
    .end local v12           #isActivityDisabled:Z
    .end local v13           #isAppDisabled:Z
    .end local v23           #packageName:Ljava/lang/String;
    .end local v29           #scroll:Landroid/app/SpellScroll;
    :cond_12
    const/4 v12, 0x0

    goto :goto_9

    .line 289
    .restart local v12       #isActivityDisabled:Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_a

    .line 313
    .restart local v13       #isAppDisabled:Z
    .restart local v23       #packageName:Ljava/lang/String;
    :cond_14
    const/16 v33, 0x0

    .line 316
    .restart local v33       #spellScroll:Landroid/app/SpellScroll;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-static {v0, v1, v13}, Landroid/app/SpellScroll;->createPseudoSpellScroll(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/app/SpellScroll;

    move-result-object v33

    .line 318
    sget-boolean v35, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v35, :cond_15

    .line 319
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Pseudo SpellScroll has been created for ["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_15
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 323
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/SpellScroll;

    .line 325
    .restart local v34       #stored:Landroid/app/SpellScroll;
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v35

    if-eqz v35, :cond_16

    .line 326
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .line 343
    .end local v34           #stored:Landroid/app/SpellScroll;
    :catch_1
    move-exception v7

    .line 344
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Pseudo SpellScroll creation failed in "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " :"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 331
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v34       #stored:Landroid/app/SpellScroll;
    :cond_16
    :try_start_3
    sget-boolean v35, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v35, :cond_17

    .line 332
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]<=>["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_17
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 339
    .end local v34           #stored:Landroid/app/SpellScroll;
    :cond_18
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    .line 350
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v12           #isActivityDisabled:Z
    .end local v13           #isAppDisabled:Z
    .end local v16           #itemInfo:Landroid/content/pm/ActivityInfo;
    .end local v23           #packageName:Ljava/lang/String;
    .end local v33           #spellScroll:Landroid/app/SpellScroll;
    :cond_19
    const/4 v11, 0x0

    .line 352
    .local v11, infoHash:I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/SpellScroll;

    .line 353
    .restart local v33       #spellScroll:Landroid/app/SpellScroll;
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->hashCode()I

    move-result v35

    xor-int v11, v11, v35

    .line 355
    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/SpellScroll$Spell;

    .line 357
    .local v31, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_1c

    .line 358
    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    new-instance v36, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 361
    :cond_1c
    sget-boolean v35, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v35, :cond_1b

    .line 362
    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/http/message/BasicNameValuePair;

    .line 364
    .local v24, pair:Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v24, :cond_1b

    .line 365
    const-string v35, "SpellManager"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Duplicated spell id found!!! "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v33 .. v33}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " <=> "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 374
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v24           #pair:Lorg/apache/http/message/BasicNameValuePair;
    .end local v31           #spell:Landroid/app/SpellScroll$Spell;
    .end local v33           #spellScroll:Landroid/app/SpellScroll;
    :cond_1d
    monitor-enter p0

    .line 375
    :try_start_4
    move-object/from16 v0, p0

    iput v11, v0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    .line 376
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    .line 377
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    .line 378
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    .line 379
    monitor-exit p0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v35

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v35
.end method
