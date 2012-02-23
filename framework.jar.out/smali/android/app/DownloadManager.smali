.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$SecCursorTranslator;,
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$SecQuery;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final ACTION_VIEW_SEC_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_SEC_DOWNLOADS"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DD_CONTENT_SIZE:Ljava/lang/String; = "dd_contentSize"

.field public static final COLUMN_DD_FILE_DESCRIPTION:Ljava/lang/String; = "dd_description"

.field public static final COLUMN_DD_FILE_NAME:Ljava/lang/String; = "dd_fileName"

.field public static final COLUMN_DD_PRIMARY_MIMETYPE:Ljava/lang/String; = "dd_primaryMimeType"

.field public static final COLUMN_DD_VENDOR_NAME:Ljava/lang/String; = "dd_vendor"

.field public static final COLUMN_DD_VERSION_NUMBER:Ljava/lang/String; = "dd_majorVersion"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DOWNLOAD_METHOD:Ljava/lang/String; = "downloadmethod"

.field public static final COLUMN_DOWNLOAD_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final LONG_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field private static final SEC_COLUMNS:[Ljava/lang/String; = null

.field private static final SEC_UNDERLYING_COLUMNS:[Ljava/lang/String; = null

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_OMA_PENDING:I = 0x40

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSecBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "total_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dd_fileName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dd_vendor"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dd_description"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dd_majorVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dd_primaryMimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dd_contentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "downloadmethod"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "local_filename"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "storage_type"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    .line 365
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data AS local_filename"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v5

    const-string v1, "destination"

    aput-object v1, v0, v6

    const-string/jumbo v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mimetype AS media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "total_bytes AS total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "lastmod AS last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "current_bytes AS bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\'placeholder\' AS local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\'placeholder\' AS reason"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 388
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "status"

    aput-object v1, v0, v5

    const-string/jumbo v1, "state"

    aput-object v1, v0, v6

    const-string/jumbo v1, "total_bytes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "downloadmethod"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dd_primaryMimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dd_SecondaryMimeType1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dd_SecondaryMimeType2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dd_fileName"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dd_vendor"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dd_description"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dd_contentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "dd_objUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "dd_notifyurl"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "dd_majorVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "storagetype"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "total_size"

    aput-object v2, v1, v4

    const-string/jumbo v2, "status"

    aput-object v2, v1, v5

    const-string/jumbo v2, "reason"

    aput-object v2, v1, v6

    const-string v2, "bytes_so_far"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "last_modified_timestamp"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dd_contentSize"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "state"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "downloadmethod"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "storage_type"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "packageName"

    .prologue
    .line 1163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1157
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    .line 1164
    iput-object p1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1165
    iput-object p2, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1166
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-object v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .parameter "context"

    .prologue
    .line 1510
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "download_manager_max_bytes_over_mobile"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1513
    :goto_0
    return-object v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, exc:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .parameter "context"

    .prologue
    .line 1528
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1531
    :goto_0
    return-object v1

    .line 1530
    :catch_0
    move-exception v0

    .line 1531
    .local v0, exc:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .parameter "ids"

    .prologue
    .line 1666
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1667
    .local v1, whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1668
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1670
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .parameter "ids"

    .prologue
    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1650
    .local v1, whereClause:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1652
    if-lez v0, :cond_0

    .line 1653
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .parameter "joiner"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1283
    .local p2, parts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1285
    .local v1, first:Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1286
    .local v3, part:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const/4 v1, 0x0

    goto :goto_0

    .line 1292
    .end local v3           #part:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "paramName"
    .parameter "val"

    .prologue
    .line 1633
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1636
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 7
    .parameter "title"
    .parameter "description"
    .parameter "isMediaScannerScannable"
    .parameter "mimeType"
    .parameter "path"
    .parameter "length"
    .parameter "showNotification"

    .prologue
    const/4 v4, 0x2

    .line 1561
    const-string/jumbo v3, "title"

    invoke-static {v3, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v3, "description"

    invoke-static {v3, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string/jumbo v3, "path"

    invoke-static {v3, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string/jumbo v3, "mimeType"

    invoke-static {v3, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-wide/16 v5, 0x0

    cmp-long v3, p6, v5

    if-gtz v3, :cond_0

    .line 1566
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, " invalid value for param: totalBytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1570
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    .line 1574
    .local v1, request:Landroid/app/DownloadManager$Request;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1575
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "destination"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1577
    const-string v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string/jumbo v3, "status"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1579
    const-string/jumbo v3, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1580
    const-string/jumbo v5, "scanned"

    if-eqz p3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1583
    const-string/jumbo v3, "visibility"

    if-eqz p8, :cond_1

    const/4 v4, 0x3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1585
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1586
    .local v0, downloadUri:Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 1587
    const-wide/16 v3, -0x1

    .line 1589
    :goto_1
    return-wide v3

    .end local v0           #downloadUri:Landroid/net/Uri;
    :cond_2
    move v3, v4

    .line 1580
    goto :goto_0

    .line 1589
    .restart local v0       #downloadUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .parameter "request"

    .prologue
    .line 1204
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1205
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1206
    .local v0, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1207
    .local v1, id:J
    return-wide v1
.end method

.method getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 1642
    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1421
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1422
    .local v1, query:Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1424
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1425
    if-nez v0, :cond_1

    .line 1432
    if-eqz v0, :cond_0

    .line 1433
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1437
    :cond_0
    :goto_0
    return-object v2

    .line 1428
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1429
    const-string/jumbo v2, "media_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1432
    if-eqz v0, :cond_0

    .line 1433
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1432
    :cond_2
    if-eqz v0, :cond_0

    .line 1433
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1432
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 1433
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 1369
    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v8, v10, [J

    const/4 v9, 0x0

    aput-wide p1, v8, v9

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v4

    .line 1370
    .local v4, query:Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1372
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1373
    if-nez v0, :cond_1

    .line 1400
    if-eqz v0, :cond_0

    .line 1401
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1405
    :cond_0
    :goto_0
    return-object v6

    .line 1376
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1377
    const-string/jumbo v7, "status"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1378
    .local v5, status:I
    const/16 v7, 0x8

    if-ne v7, v5, :cond_4

    .line 1379
    const-string v6, "destination"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1381
    .local v2, indx:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1385
    .local v1, destination:I
    if-eq v1, v10, :cond_2

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    .line 1390
    :cond_2
    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1400
    if-eqz v0, :cond_0

    .line 1401
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1393
    :cond_3
    :try_start_2
    const-string/jumbo v6, "local_filename"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1395
    .local v3, path:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1400
    if-eqz v0, :cond_0

    .line 1401
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1400
    .end local v1           #destination:I
    .end local v2           #indx:I
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #status:I
    :cond_4
    if-eqz v0, :cond_0

    .line 1401
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1400
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_5

    .line 1401
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method public varargs markRowDeleted([J)I
    .locals 5
    .parameter "ids"

    .prologue
    .line 1239
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1241
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "input param \'ids\' can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1244
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v2, selectionParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1248
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v1

    .line 1250
    const-string v3, " AND "

    invoke-direct {p0, v3, v2}, Landroid/app/DownloadManager;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"

    .prologue
    .line 1322
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1323
    .local v0, underlyingCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1324
    const/4 v1, 0x0

    .line 1326
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs remove([J)I
    .locals 1
    .parameter "ids"

    .prologue
    .line 1265
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public varargs restartDownload([J)V
    .locals 7
    .parameter "ids"

    .prologue
    .line 1447
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1449
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1450
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1451
    .local v1, status:I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 1452
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1449
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1457
    .end local v1           #status:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1460
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1461
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1464
    const-string/jumbo v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1465
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1466
    return-void
.end method

.method public secAddCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 7
    .parameter "title"
    .parameter "description"
    .parameter "isMediaScannerScannable"
    .parameter "mimeType"
    .parameter "path"
    .parameter "length"
    .parameter "showNotification"

    .prologue
    const/4 v4, 0x2

    .line 1596
    const-string/jumbo v3, "title"

    invoke-static {v3, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-string v3, "description"

    invoke-static {v3, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string/jumbo v3, "path"

    invoke-static {v3, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string/jumbo v3, "mimeType"

    invoke-static {v3, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const-wide/16 v5, 0x0

    cmp-long v3, p6, v5

    if-gtz v3, :cond_0

    .line 1601
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, " invalid value for param: totalBytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1605
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    .line 1609
    .local v1, request:Landroid/app/DownloadManager$Request;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->sectoContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1610
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "destination"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    const-string v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v3, "status"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    const-string/jumbo v3, "state"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    const-string/jumbo v3, "storagetype"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    const-string/jumbo v3, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1617
    const-string/jumbo v5, "scanned"

    if-eqz p3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1620
    const-string/jumbo v3, "visibility"

    if-eqz p8, :cond_1

    const/4 v4, 0x3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1623
    .local v0, downloadUri:Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 1624
    const-wide/16 v3, -0x1

    .line 1626
    :goto_1
    return-wide v3

    .end local v0           #downloadUri:Landroid/net/Uri;
    :cond_2
    move v3, v4

    .line 1617
    goto :goto_0

    .line 1626
    .restart local v0       #downloadUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1
.end method

.method public secenqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .parameter "request"

    .prologue
    .line 1222
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->sectoContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1223
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "notificationpackage"

    const-string v5, "com.android.browser"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v4, "notificationclass"

    const-string v5, "com.android.browser.OpenDownloadReceiver"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1226
    .local v0, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1227
    .local v1, id:J
    return-wide v1
.end method

.method public varargs secmarkRowDeleted([J)I
    .locals 6
    .parameter "ids"

    .prologue
    const/4 v5, 0x0

    .line 1270
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1272
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1274
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1275
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1278
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"

    .prologue
    .line 1338
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$SecQuery;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1339
    .local v0, underlyingCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1340
    const/4 v1, 0x0

    .line 1342
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/DownloadManager$SecCursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs secremove([J)I
    .locals 5
    .parameter "ids"

    .prologue
    .line 1296
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1298
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "input param \'ids\' can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1301
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v2, selectionParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1305
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v1

    .line 1307
    const-string v3, " AND "

    invoke-direct {p0, v3, v2}, Landroid/app/DownloadManager;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public varargs secrestartDownload([J)Z
    .locals 8
    .parameter "ids"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1476
    new-instance v5, Landroid/app/DownloadManager$SecQuery;

    invoke-direct {v5}, Landroid/app/DownloadManager$SecQuery;-><init>()V

    invoke-virtual {v5, p1}, Landroid/app/DownloadManager$SecQuery;->setFilterById([J)Landroid/app/DownloadManager$SecQuery;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager;->secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 1478
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1479
    const-string/jumbo v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1480
    .local v1, status:I
    const/16 v5, 0x8

    if-eq v1, v5, :cond_0

    const/16 v5, 0x10

    if-eq v1, v5, :cond_0

    .line 1487
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1498
    .end local v1           #status:I
    :goto_1
    return v3

    .line 1478
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1487
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1490
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1491
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "current_bytes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1492
    const-string/jumbo v5, "total_bytes"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    const-string v5, "_data"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1494
    const-string/jumbo v5, "state"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1495
    const-string/jumbo v3, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1496
    const-string/jumbo v3, "status"

    const/16 v5, 0xbe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1497
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v3, v4

    .line 1498
    goto :goto_1
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .parameter "accessAllDownloads"

    .prologue
    .line 1174
    if-eqz p1, :cond_0

    .line 1175
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1179
    :goto_0
    return-void

    .line 1177
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setSecDownloads(Z)V
    .locals 1
    .parameter "accessAllDownloads"

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    .line 1190
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1193
    :cond_0
    return-void
.end method
