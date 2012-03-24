.class final Landroid/webkit/CacheManager$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CacheManager;->removeAllCacheFiles()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 624
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 628
    :try_start_0
    invoke-static {}, Landroid/webkit/CacheManager;->access$000()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, files:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 631
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 632
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/webkit/CacheManager;->access$000()Ljava/io/File;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 631
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v0           #f:Ljava/io/File;
    .end local v1           #files:[Ljava/lang/String;
    .end local v2           #i:I
    :catch_0
    move-exception v3

    .line 643
    :cond_1
    return-void
.end method
