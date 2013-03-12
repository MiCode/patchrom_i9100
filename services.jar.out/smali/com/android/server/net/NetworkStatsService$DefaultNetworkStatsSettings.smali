.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1217
    return-void
.end method

.method private getSecureBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "name"
    .parameter "def"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1223
    if-eqz p2, :cond_0

    move v0, v1

    .line 1224
    .local v0, defInt:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0           #defInt:I
    :cond_0
    move v0, v2

    .line 1223
    goto :goto_0

    .restart local v0       #defInt:I
    :cond_1
    move v1, v2

    .line 1224
    goto :goto_1
.end method

.method private getSecureLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    .prologue
    .line 1249
    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string v1, "netstats_dev_bucket_duration"

    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "netstats_dev_rotate_age"

    const-wide/32 v4, 0x4d3f6400

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "netstats_dev_delete_age"

    const-wide v6, 0x1cf7c5800L

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method public getDevPersistBytes(J)J
    .locals 2
    .parameter "def"

    .prologue
    .line 1271
    const-string v0, "netstats_dev_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalAlertBytes(J)J
    .locals 2
    .parameter "def"

    .prologue
    .line 1237
    const-string v0, "netstats_global_alert_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollInterval()J
    .locals 3

    .prologue
    .line 1229
    const-string v0, "netstats_poll_interval"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReportXtOverDev()Z
    .locals 2

    .prologue
    .line 1245
    const-string v0, "netstats_report_xt_over_dev"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSampleEnabled()Z
    .locals 2

    .prologue
    .line 1241
    const-string v0, "netstats_sample_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTimeCacheMaxAge()J
    .locals 3

    .prologue
    .line 1233
    const-string v0, "netstats_time_cache_max_age"

    const-wide/32 v1, 0x5265c00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    .prologue
    .line 1259
    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string v1, "netstats_uid_bucket_duration"

    const-wide/32 v2, 0x6ddd00

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "netstats_uid_rotate_age"

    const-wide/32 v4, 0x4d3f6400

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "netstats_uid_delete_age"

    const-wide v6, 0x1cf7c5800L

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method public getUidPersistBytes(J)J
    .locals 2
    .parameter "def"

    .prologue
    .line 1279
    const-string v0, "netstats_uid_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    .prologue
    .line 1265
    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string v1, "netstats_uid_tag_bucket_duration"

    const-wide/32 v2, 0x6ddd00

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "netstats_uid_tag_rotate_age"

    const-wide/32 v4, 0x19bfcc00

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "netstats_uid_tag_delete_age"

    const-wide/32 v6, 0x4d3f6400

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method public getUidTagPersistBytes(J)J
    .locals 2
    .parameter "def"

    .prologue
    .line 1283
    const-string v0, "netstats_uid_tag_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 1

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v0

    return-object v0
.end method

.method public getXtPersistBytes(J)J
    .locals 2
    .parameter "def"

    .prologue
    .line 1275
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v0

    return-wide v0
.end method
