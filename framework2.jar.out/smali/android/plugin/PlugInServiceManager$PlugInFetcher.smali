.class Landroid/plugin/PlugInServiceManager$PlugInFetcher;
.super Ljava/lang/Object;
.source "PlugInServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/plugin/PlugInServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlugInFetcher"
.end annotation


# instance fields
.field mCacheIndex:I

.field mPlugInClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter "pluginClass"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mCacheIndex:I

    .line 90
    iput-object p1, p0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mPlugInClass:Ljava/lang/Class;

    .line 91
    return-void
.end method

.method private loadService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "className"

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, service:Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 117
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 125
    const-string v3, "PlugInServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadService service className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v2           #service:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 118
    .restart local v2       #service:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 119
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const-string v3, "PlugInServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadService service className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, ex:Ljava/lang/InstantiationException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    const-string v3, "PlugInServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadService service className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v1           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 123
    .local v1, ex:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    const-string v3, "PlugInServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadService service className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v3

    const-string v3, "PlugInServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadService service className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createService(Landroid/plugin/PlugInServiceManager;)Ljava/lang/Object;
    .locals 8
    .parameter "pluginMgr"

    .prologue
    const/4 v6, 0x0

    .line 135
    :try_start_0
    iget-object v5, p0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mPlugInClass:Ljava/lang/Class;

    const-string v7, "IMPL_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 136
    .local v1, implField:Ljava/lang/reflect/Field;
    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->loadService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 137
    .local v4, service:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 138
    iget-object v5, p0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mPlugInClass:Ljava/lang/Class;

    const-string v7, "INTERFACE_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 139
    .local v2, interfaceField:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->loadService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 147
    .end local v1           #implField:Ljava/lang/reflect/Field;
    .end local v2           #interfaceField:Ljava/lang/reflect/Field;
    .end local v4           #service:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v4

    .line 142
    :catch_0
    move-exception v3

    .local v3, nsfex:Ljava/lang/NoSuchFieldException;
    move-object v4, v6

    .line 143
    goto :goto_0

    .line 144
    .end local v3           #nsfex:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .local v0, iaex:Ljava/lang/IllegalAccessException;
    move-object v4, v6

    .line 145
    goto :goto_0

    .line 146
    .end local v0           #iaex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, iaex:Ljava/lang/IllegalArgumentException;
    move-object v4, v6

    .line 147
    goto :goto_0
.end method

.method public getService(Landroid/plugin/PlugInServiceManager;)Ljava/lang/Object;
    .locals 5
    .parameter "pluginMgr"

    .prologue
    .line 94
    #getter for: Landroid/plugin/PlugInServiceManager;->mServiceCache:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/plugin/PlugInServiceManager;->access$000(Landroid/plugin/PlugInServiceManager;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    monitor-enter v0

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #getter for: Landroid/plugin/PlugInServiceManager;->sServiceCacheIndex:I
    invoke-static {p1}, Landroid/plugin/PlugInServiceManager;->access$100(Landroid/plugin/PlugInServiceManager;)I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 99
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1           #i:I
    :cond_0
    iget v4, p0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mCacheIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, service:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 104
    monitor-exit v0

    move-object v3, v2

    .line 109
    .end local v2           #service:Ljava/lang/Object;
    .local v3, service:Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 107
    .end local v3           #service:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->createService(Landroid/plugin/PlugInServiceManager;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    .restart local v2       #service:Ljava/lang/Object;
    iget v4, p0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mCacheIndex:I

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v0

    move-object v3, v2

    .end local v2           #service:Ljava/lang/Object;
    .restart local v3       #service:Ljava/lang/Object;
    goto :goto_1

    .line 110
    .end local v3           #service:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
