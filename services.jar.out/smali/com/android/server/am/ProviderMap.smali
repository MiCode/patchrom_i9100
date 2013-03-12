.class public Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderMap"


# instance fields
.field private final mGlobalByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByClassPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvidersByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mGlobalByName:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    return-void
.end method

.method private dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .locals 6
    .parameter "prefix"
    .parameter "fd"
    .parameter "pw"
    .parameter "r"
    .parameter "args"
    .parameter "dumpAll"

    .prologue
    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, innerPrefix:Ljava/lang/String;
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "PROVIDER "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 302
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 305
    :goto_0
    if-eqz p6, :cond_0

    .line 306
    const/4 v3, 0x1

    invoke-virtual {p4, p3, v1, v3}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 308
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    .line 310
    const-string v3, "    Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 313
    :try_start_1
    new-instance v2, Lcom/android/server/am/TransferPipe;

    invoke-direct {v2}, Lcom/android/server/am/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    .local v2, tp:Lcom/android/server/am/TransferPipe;
    :try_start_2
    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3, v4, v5, p5}, Landroid/app/IApplicationThread;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 317
    const-string v3, "      "

    invoke-virtual {v2, v3}, Lcom/android/server/am/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 320
    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/am/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 330
    .end local v2           #tp:Lcom/android/server/am/TransferPipe;
    :cond_1
    :goto_1
    return-void

    .line 304
    :cond_2
    :try_start_4
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 322
    .restart local v2       #tp:Lcom/android/server/am/TransferPipe;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 324
    .end local v2           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v0

    .line 325
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Failure while dumping the provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 326
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 327
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "      Got a RemoteException while dumping the service"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/util/HashMap;)V
    .locals 4
    .parameter "pw"
    .parameter "dumpAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 180
    .local v2, r:Lcom/android/server/am/ContentProviderRecord;
    const-string v3, "  * "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 182
    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_0

    .line 184
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2           #r:Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    return-void
.end method

.method private dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/util/HashMap;)V
    .locals 4
    .parameter "pw"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 189
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 192
    .local v2, r:Lcom/android/server/am/ContentProviderRecord;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2           #r:Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    return-void
.end method

.method private getProvidersByName(I)Ljava/util/HashMap;
    .locals 4
    .parameter "optionalUserId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    if-ltz p1, :cond_0

    move v2, p1

    .line 151
    .local v2, userId:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 152
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_1

    .line 153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v1, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    .end local v1           #newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_1
    return-object v1

    .line 149
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2           #userId:I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v2

    goto :goto_0

    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    .restart local v2       #userId:I
    :cond_1
    move-object v1, v0

    .line 157
    goto :goto_1
.end method


# virtual methods
.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 15
    .parameter "fd"
    .parameter "pw"
    .parameter "name"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"

    .prologue
    .line 238
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v13, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    const-string v1, "all"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    monitor-enter p0

    .line 242
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ContentProviderRecord;

    .line 243
    .local v14, r1:Lcom/android/server/am/ContentProviderRecord;
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #r1:Lcom/android/server/am/ContentProviderRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    .line 278
    const/4 v1, 0x0

    .line 289
    :goto_2
    return v1

    .line 247
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p3, :cond_4

    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 249
    .local v8, componentName:Landroid/content/ComponentName;
    :goto_3
    const/4 v12, 0x0

    .line 250
    .local v12, objectId:I
    if-nez v8, :cond_2

    .line 253
    const/16 v1, 0x10

    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .line 254
    const/16 p3, 0x0

    .line 255
    const/4 v8, 0x0

    .line 260
    :cond_2
    :goto_4
    monitor-enter p0

    .line 261
    const/4 v1, -0x1

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ContentProviderRecord;

    .line 262
    .restart local v14       #r1:Lcom/android/server/am/ContentProviderRecord;
    if-eqz v8, :cond_5

    .line 263
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 274
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #r1:Lcom/android/server/am/ContentProviderRecord;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 247
    .end local v8           #componentName:Landroid/content/ComponentName;
    .end local v12           #objectId:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 266
    .restart local v8       #componentName:Landroid/content/ComponentName;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #objectId:I
    .restart local v14       #r1:Lcom/android/server/am/ContentProviderRecord;
    :cond_5
    if-eqz p3, :cond_6

    .line 267
    :try_start_4
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 270
    :cond_6
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v12, :cond_3

    .line 271
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 274
    .end local v14           #r1:Lcom/android/server/am/ContentProviderRecord;
    :cond_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 281
    .end local v8           #componentName:Landroid/content/ComponentName;
    .end local v12           #objectId:I
    :cond_8
    const/4 v11, 0x0

    .line 282
    .local v11, needSep:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_a

    .line 283
    if-eqz v11, :cond_9

    .line 284
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 286
    :cond_9
    const/4 v11, 0x1

    .line 287
    const-string v2, ""

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V

    .line 282
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 289
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 256
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #needSep:Z
    .restart local v8       #componentName:Landroid/content/ComponentName;
    .restart local v12       #objectId:I
    :catch_0
    move-exception v1

    goto :goto_4
.end method

.method dumpProvidersLocked(Ljava/io/PrintWriter;Z)V
    .locals 5
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    const/4 v4, 0x1

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, needSep:Z
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 202
    if-eqz v2, :cond_0

    .line 203
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    :cond_0
    const-string v3, "  Published content providers (by class):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/util/HashMap;)V

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 209
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 212
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/util/HashMap;)V

    .line 214
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0           #i:I
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 217
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 218
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/util/HashMap;)V

    .line 220
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_3
    const/4 v2, 0x1

    .line 222
    if-eqz p2, :cond_5

    .line 223
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v3, "  Authority to provider mappings:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mGlobalByName:Ljava/util/HashMap;

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 227
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 228
    if-lez v0, :cond_4

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    .end local v0           #i:I
    :cond_5
    return-void
.end method

.method getProviderByClass(Landroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;
    .locals 1
    .parameter "name"

    .prologue
    .line 76
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    return-object v0
.end method

.method getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .locals 2
    .parameter "name"
    .parameter "userId"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 85
    .local v0, record:Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_0

    .line 90
    .end local v0           #record:Lcom/android/server/am/ContentProviderRecord;
    :goto_0
    return-object v0

    .restart local v0       #record:Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    move-object v0, v1

    goto :goto_0
.end method

.method getProviderByName(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    return-object v0
.end method

.method getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .locals 2
    .parameter "name"
    .parameter "userId"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mGlobalByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 67
    .local v0, record:Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_0

    .line 72
    .end local v0           #record:Lcom/android/server/am/ContentProviderRecord;
    :goto_0
    return-object v0

    .restart local v0       #record:Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    move-object v0, v1

    goto :goto_0
.end method

.method getProvidersByClass(I)Ljava/util/HashMap;
    .locals 4
    .parameter "optionalUserId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    if-ltz p1, :cond_0

    move v2, p1

    .line 164
    .local v2, userId:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 165
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_1

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v1, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    .end local v1           #newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_1
    return-object v1

    .line 162
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2           #userId:I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v2

    goto :goto_0

    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .restart local v2       #userId:I
    :cond_1
    move-object v1, v0

    .line 170
    goto :goto_1
.end method

.method putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .locals 3
    .parameter "name"
    .parameter "record"

    .prologue
    .line 111
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    .line 115
    .local v0, userId:I
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .locals 3
    .parameter "name"
    .parameter "record"

    .prologue
    .line 98
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mGlobalByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    .line 102
    .local v0, userId:I
    invoke-direct {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method removeProviderByClass(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "name"
    .parameter "optionalUserId"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mGlobalByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method removeProviderByName(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "optionalUserId"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mGlobalByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mGlobalByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
