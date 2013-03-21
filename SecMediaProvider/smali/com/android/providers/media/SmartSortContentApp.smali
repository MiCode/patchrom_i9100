.class public Lcom/android/providers/media/SmartSortContentApp;
.super Ljava/lang/Object;
.source "SmartSortContentApp.java"


# static fields
.field private static mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mSmartSortSyncThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/media/SmartSortContentApp;->mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    .line 17
    invoke-static {}, Lcom/android/providers/media/SmartSortContentApp;->prepare()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    .line 13
    iput-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mSmartSortSyncThread:Ljava/lang/Thread;

    .line 40
    const-string v0, "SmartSortContentApp"

    const-string v1, "SmartSortContentApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/providers/media/SmartSortContentApp;->create()V

    .line 43
    return-void
.end method

.method private create()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "SmartSortContentApp"

    const-string v1, "create()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/android/providers/media/SmartSortContentApp;->mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    iget-object v1, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->openDocumentClassifierEngine(Landroid/content/Context;)Z

    .line 51
    return-void
.end method

.method protected static prepare()V
    .locals 3

    .prologue
    .line 24
    const-string v1, "SmartSortContentApp"

    const-string v2, "prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_0
    new-instance v1, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    invoke-direct {v1}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;-><init>()V

    sput-object v1, Lcom/android/providers/media/SmartSortContentApp;->mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method private terminate()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "SmartSortContentApp"

    const-string v1, "terminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/android/providers/media/SmartSortContentApp;->mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    invoke-virtual {v0}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->closeDocumentClassifierEngine()Z

    .line 59
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "SmartSortContentApp"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    invoke-direct {p0}, Lcom/android/providers/media/SmartSortContentApp;->terminate()V

    .line 95
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 109
    const-string v0, "SmartSortContentApp"

    const-string v1, "getContentResolver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEngine()Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;
    .locals 2

    .prologue
    .line 119
    const-string v0, "SmartSortContentApp"

    const-string v1, "getEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/android/providers/media/SmartSortContentApp;->mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/providers/media/SmartSortContentApp;->mDocumentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected startScan()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "SmartSortContentApp"

    const-string v1, "startScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mSmartSortSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mSmartSortSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Lcom/android/providers/media/SmartSortContentApp$1;

    const-string v1, "smartsortsyncThread"

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/SmartSortContentApp$1;-><init>(Lcom/android/providers/media/SmartSortContentApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mSmartSortSyncThread:Ljava/lang/Thread;

    .line 75
    iget-object v0, p0, Lcom/android/providers/media/SmartSortContentApp;->mSmartSortSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    :cond_1
    return-void
.end method
