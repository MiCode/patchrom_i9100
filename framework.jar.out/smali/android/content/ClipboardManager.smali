.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# static fields
.field static final MSG_REPORT_PRIMARY_CLIP_CHANGED:I = 0x1

.field private static sService:Landroid/content/IClipboard;

.field private static sServiceEx:Landroid/sec/clipboard/IClipboardService;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    .line 83
    new-instance v0, Landroid/content/ClipboardManager$2;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$2;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method static synthetic access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addClipDataExtra(Landroid/content/ClipData;)V
    .locals 3
    .parameter "clip"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lmiui/content/ClipServiceManagerExtra;->getInstance()Lmiui/content/ClipServiceManagerExtra;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/ClipServiceManagerExtra;->addData(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 111
    sget-object v2, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    .line 117
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 115
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    .line 117
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceEx()Landroid/sec/clipboard/IClipboardService;
    .locals 2

    .prologue
    .line 123
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 130
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 127
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 130
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 272
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    invoke-interface {v1, v3}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v2

    .line 283
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 3

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 2

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IClipboard;->getPrimaryClipDescription()Landroid/content/ClipDescription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 305
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 308
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPrimaryClip()Z
    .locals 2

    .prologue
    .line 264
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IClipboard;->hasPrimaryClip()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 267
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IClipboard;->hasClipboardText()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 286
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 290
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    invoke-interface {v1, v3}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 297
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method reportPrimaryClipChanged()V
    .locals 5

    .prologue
    .line 335
    iget-object v4, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 336
    :try_start_0
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 337
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 338
    monitor-exit v4

    .line 346
    :cond_0
    return-void

    .line 340
    :cond_1
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, listeners:[Ljava/lang/Object;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 344
    aget-object v3, v2, v1

    check-cast v3, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v3}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #listeners:[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 8
    .parameter "clip"

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/ClipboardManager;->addClipDataExtra(Landroid/content/ClipData;)V

    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 157
    new-instance v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 158
    .local v3, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 160
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 161
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 162
    sget-object v5, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetFomat()I

    move-result v6

    invoke-interface {v5, v6, v3}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 232
    .end local v3           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v3       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", txt :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v3           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 170
    new-instance v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 171
    .restart local v3       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 173
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 174
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 175
    sget-object v5, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetFomat()I

    move-result v6

    invoke-interface {v5, v6, v3}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_0

    .line 177
    :cond_3
    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", txt :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    .end local v3           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_4
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text/uri-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 183
    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 184
    .local v4, uri:Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 186
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 187
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->SetUri(Landroid/net/Uri;)Z

    .line 188
    sget-object v5, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetFomat()I

    move-result v6

    invoke-interface {v5, v6, v4}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    goto/16 :goto_0

    .line 190
    :cond_5
    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uri :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    .end local v4           #uri:Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_6
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text/vnd.android.intent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 196
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 197
    .local v2, intent:Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 199
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    .line 200
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->SetIntent(Landroid/content/Intent;)Z

    .line 201
    sget-object v5, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetFomat()I

    move-result v6

    invoke-interface {v5, v6, v2}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    goto/16 :goto_0

    .line 203
    :cond_7
    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", intent :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v2           #intent:Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    iget-object v6, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    .local v0, data:Ljava/lang/CharSequence;
    new-instance v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 209
    .restart local v3       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v3, :cond_0

    .line 210
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    .line 211
    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 212
    sget-object v5, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetFomat()I

    move-result v6

    invoke-interface {v5, v6, v3}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    goto/16 :goto_0

    .line 214
    :cond_9
    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", txt :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 318
    return-void
.end method
