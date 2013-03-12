.class public Lcom/android/server/enterprise/BlackWhiteListPolicy;
.super Ljava/lang/Object;
.source "BlackWhiteListPolicy.java"


# static fields
.field private static final ALLOBJECTS:Ljava/lang/String; = "*"

.field private static final BLACK:Ljava/lang/String; = "black"

.field private static final WHITE:Ljava/lang/String; = "white"

.field private static final mTAG:Ljava/lang/String; = "BlackWhiteListPolicyService"


# instance fields
.field private bUpdateToDB:Z

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mEffectiveBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectiveWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "table"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 71
    iput-object p2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private addList(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, targetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 347
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 349
    const-string v1, "*"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_1
    return-void

    .line 352
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    goto :goto_1
.end method

.method private addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z
    .locals 6
    .parameter "adminUID"
    .parameter
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 154
    .local v2, ret:Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 156
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v3, where:Landroid/content/ContentValues;
    const-string v5, "Object"

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v4, "ListType"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "Object"

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "ListType"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 166
    if-nez v2, :cond_0

    .line 167
    const/4 v4, 0x0

    .line 171
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #where:Landroid/content/ContentValues;
    :goto_1
    return v4

    .line 155
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v3       #where:Landroid/content/ContentValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #where:Landroid/content/ContentValues;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 171
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private clearObjectsFromList(ILjava/lang/String;)Z
    .locals 4
    .parameter "adminUID"
    .parameter "listType"

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, ret:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "ListType"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    .line 196
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 197
    const/4 v2, 0x0

    .line 199
    :goto_0
    return v2

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 199
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createEffectiveList(ILjava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter "uid"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, effectiveblacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, effectivewhitelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 252
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, blacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, whitelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "black"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 255
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 256
    const-string v2, "white"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 257
    invoke-direct {p0, p3, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 258
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectiveblacklist for admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectivewhitelist for admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 263
    return-void
.end method

.method private createEffectiveListAllAdmins(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, finalblacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, finalwhitelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 276
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v1, effectiveblacklists:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v2, effectivewhitelists:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "ADMIN"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 287
    .local v5, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 288
    .local v4, uid:I
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->isPolicyActive(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->createEffectiveList(ILjava/util/List;Ljava/util/List;)V

    .line 292
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalblacklist after adding admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 300
    .end local v4           #uid:I
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v7, v6, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractWhitelistFromOthersBlacklists(ILjava/util/List;Ljava/util/Map;)V

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalwhitelist after adding admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 307
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    return-void
.end method

.method private getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "adminUID"
    .parameter "listType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Object"

    aput-object v1, v5, v0

    .line 207
    .local v5, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    const-string v3, "ListType"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 210
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 211
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "Object"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, object:Ljava/lang/String;
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v7           #object:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_1
    const-string v0, "BlackWhiteListPolicyService"

    const-string v1, "getAllObjectsFromList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ControlInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "ADMIN"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 229
    .local v5, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 230
    .local v4, uid:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, objlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v4, p1, v3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 232
    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    new-instance v1, Landroid/app/enterprise/ControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/ControlInfo;-><init>()V

    .line 234
    .local v1, info:Landroid/app/enterprise/ControlInfo;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/app/enterprise/ControlInfo;->adminPackageName:Ljava/lang/String;

    .line 235
    iput-object v3, v1, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    .line 236
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v1           #info:Landroid/app/enterprise/ControlInfo;
    .end local v3           #objlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #uid:I
    :cond_1
    const-string v6, "BlackWhiteListPolicyService"

    const-string v7, "getAllObjectsFromLists:"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v2
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 331
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private logList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    const-string v2, "BlackWhiteListPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logList:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method private removeDuplicates(Ljava/util/List;)V
    .locals 2
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
    .line 319
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 322
    .local v0, uniqueobjects:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 323
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z
    .locals 5
    .parameter "adminUID"
    .parameter
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 176
    .local v2, ret:I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    .line 177
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v3, "Object"

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v3, "ListType"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 183
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 184
    const/4 v3, 0x0

    .line 187
    .end local v0           #fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return v3

    .line 177
    .restart local v0       #fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0           #fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 187
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private subtractList(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, targetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 343
    :cond_0
    return-void

    .line 340
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private subtractWhitelistFromOthersBlacklists(ILjava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter "admin"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, effectivewhitelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, alleffectiveblacklist:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 361
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 362
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 365
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    return-void
.end method

.method private updateEffectivePolicy()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->createEffectiveListAllAdmins(Ljava/util/List;Ljava/util/List;)V

    .line 312
    return-void
.end method


# virtual methods
.method public addObjectsToBlackList(ILjava/util/List;)Z
    .locals 1
    .parameter "adminUID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "black"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addObjectsToWhiteList(ILjava/util/List;)Z
    .locals 1
    .parameter "adminUID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "white"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearObjectsFromBlackList(I)Z
    .locals 1
    .parameter "adminUID"

    .prologue
    .line 89
    const-string v0, "black"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearObjectsFromWhiteList(I)Z
    .locals 1
    .parameter "adminUID"

    .prologue
    .line 105
    const-string v0, "white"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "black"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "white"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveBlackList()Ljava/util/List;
    .locals 1
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
    .line 121
    iget-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getEffectiveWhiteList()Ljava/util/List;
    .locals 1
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
    .line 113
    iget-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public isObjectAllowed(Ljava/lang/String;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, whitelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, blacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 141
    :goto_1
    return v3

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 136
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    .line 141
    goto :goto_1
.end method

.method public isPolicyActive(I)Z
    .locals 1
    .parameter "adminUid"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public reload()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 76
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public removeObjectsFromBlackList(ILjava/util/List;)Z
    .locals 1
    .parameter "adminUID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "black"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeObjectsFromWhiteList(ILjava/util/List;)Z
    .locals 1
    .parameter "adminUID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "white"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
