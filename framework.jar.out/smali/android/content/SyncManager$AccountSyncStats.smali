.class Landroid/content/SyncManager$AccountSyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSyncStats"
.end annotation


# instance fields
.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1510
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    iput-object p1, p0, Landroid/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    .line 1512
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1505
    invoke-direct {p0, p1}, Landroid/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
