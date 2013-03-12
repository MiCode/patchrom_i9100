.class public Landroid/plugin/PlugInServiceManager;
.super Ljava/lang/Object;
.source "PlugInServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/plugin/PlugInServiceManager$PlugInFetcher;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlugInServiceManager"

.field public static final TAG_PLUGIN_IMPL_NAME:Ljava/lang/String; = "IMPL_NAME"

.field public static final TAG_PLUGIN_INTERFACE_NAME:Ljava/lang/String; = "INTERFACE_NAME"

.field public static final TAG_PLUGIN_NAME:Ljava/lang/String; = "NAME"

.field private static sInstance:Landroid/plugin/PlugInServiceManager;


# instance fields
.field private PLUGIN_SERVICE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/plugin/PlugInServiceManager$PlugInFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sServiceCacheIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/plugin/PlugInServiceManager;->getInstance()Landroid/plugin/PlugInServiceManager;

    move-result-object v0

    sput-object v0, Landroid/plugin/PlugInServiceManager;->sInstance:Landroid/plugin/PlugInServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/plugin/PlugInServiceManager;->PLUGIN_SERVICE_MAP:Ljava/util/HashMap;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/plugin/PlugInServiceManager;->sServiceCacheIndex:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/plugin/PlugInServiceManager;->mServiceCache:Ljava/util/ArrayList;

    .line 44
    :try_start_0
    const-class v0, Landroid/plugin/dsds/PlugInDsdsService;

    invoke-direct {p0, v0}, Landroid/plugin/PlugInServiceManager;->registerPlugIn(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/plugin/PlugInServiceManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/plugin/PlugInServiceManager;->mServiceCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/plugin/PlugInServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Landroid/plugin/PlugInServiceManager;->sServiceCacheIndex:I

    return v0
.end method

.method private static declared-synchronized getInstance()Landroid/plugin/PlugInServiceManager;
    .locals 2

    .prologue
    .line 50
    const-class v1, Landroid/plugin/PlugInServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/plugin/PlugInServiceManager;->sInstance:Landroid/plugin/PlugInServiceManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/plugin/PlugInServiceManager;

    invoke-direct {v0}, Landroid/plugin/PlugInServiceManager;-><init>()V

    sput-object v0, Landroid/plugin/PlugInServiceManager;->sInstance:Landroid/plugin/PlugInServiceManager;

    .line 53
    :cond_0
    sget-object v0, Landroid/plugin/PlugInServiceManager;->sInstance:Landroid/plugin/PlugInServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 57
    invoke-static {}, Landroid/plugin/PlugInServiceManager;->getInstance()Landroid/plugin/PlugInServiceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/plugin/PlugInServiceManager;->getPlugInFecher(Ljava/lang/String;)Landroid/plugin/PlugInServiceManager$PlugInFetcher;

    move-result-object v0

    .line 58
    .local v0, fetcher:Landroid/plugin/PlugInServiceManager$PlugInFetcher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/plugin/PlugInServiceManager;->sInstance:Landroid/plugin/PlugInServiceManager;

    invoke-virtual {v0, v1}, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->getService(Landroid/plugin/PlugInServiceManager;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private declared-synchronized registerPlugIn(Ljava/lang/Class;)V
    .locals 6
    .parameter "pluginClass"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/plugin/PlugInServiceManager$PlugInFetcher;

    invoke-direct {v1, p1}, Landroid/plugin/PlugInServiceManager$PlugInFetcher;-><init>(Ljava/lang/Class;)V

    .line 69
    .local v1, fetcher:Landroid/plugin/PlugInServiceManager$PlugInFetcher;
    iget v3, p0, Landroid/plugin/PlugInServiceManager;->sServiceCacheIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/plugin/PlugInServiceManager;->sServiceCacheIndex:I

    iput v3, v1, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mCacheIndex:I

    .line 70
    invoke-virtual {v1, p0}, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->getService(Landroid/plugin/PlugInServiceManager;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    const-string v3, "NAME"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    .local v2, serviceName:Ljava/lang/reflect/Field;
    iget-object v4, p0, Landroid/plugin/PlugInServiceManager;->PLUGIN_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v4, "PlugInServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPlugIn index : ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/plugin/PlugInServiceManager$PlugInFetcher;->mCacheIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] service : ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    .end local v2           #serviceName:Ljava/lang/reflect/Field;
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 68
    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    .end local v1           #fetcher:Landroid/plugin/PlugInServiceManager$PlugInFetcher;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 77
    .restart local v1       #fetcher:Landroid/plugin/PlugInServiceManager$PlugInFetcher;
    :catch_1
    move-exception v0

    .line 78
    .local v0, ex:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getPlugInFecher(Ljava/lang/String;)Landroid/plugin/PlugInServiceManager$PlugInFetcher;
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/plugin/PlugInServiceManager;->PLUGIN_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/PlugInServiceManager$PlugInFetcher;

    return-object v0
.end method
