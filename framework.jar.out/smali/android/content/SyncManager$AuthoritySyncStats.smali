.class Landroid/content/SyncManager$AuthoritySyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthoritySyncStats"
.end annotation


# instance fields
.field accountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncManager$AccountSyncStats;",
            ">;"
        }
    .end annotation
.end field

.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1500
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 1501
    iput-object p1, p0, Landroid/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 1502
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1494
    invoke-direct {p0, p1}, Landroid/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
