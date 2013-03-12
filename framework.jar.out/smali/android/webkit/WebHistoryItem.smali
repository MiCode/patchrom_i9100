.class public Landroid/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mNativeBridge:I

.field private mTouchIconUrlFromLink:Ljava/lang/String;

.field private mTouchIconUrlServerDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter "nativeBridge"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v1, Landroid/webkit/WebHistoryItem;

    monitor-enter v1

    .line 56
    :try_start_0
    sget v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iput p1, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    .line 59
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeRef(I)V

    .line 60
    return-void

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 86
    iget v0, p1, Landroid/webkit/WebHistoryItem;->mId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 87
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 88
    iget v0, p1, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    .line 89
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeRef(I)V

    .line 92
    :cond_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 75
    const-class v1, Landroid/webkit/WebHistoryItem;

    monitor-enter v1

    .line 76
    :try_start_0
    sget v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native inflate(I[B)I
.end method

.method private native nativeGetFavicon(I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFlattenedData(I)[B
.end method

.method private native nativeGetOriginalUrl(I)Ljava/lang/String;
.end method

.method private native nativeGetTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetUrl(I)Ljava/lang/String;
.end method

.method private native nativeRef(I)V
.end method

.method private native nativeUnref(I)V
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/WebHistoryItem;

    invoke-direct {v0, p0}, Landroid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeUnref(I)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    .line 67
    :cond_0
    return-void
.end method

.method public getCustomData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetFlattenedData(I)[B

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetOriginalUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 164
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 177
    :goto_0
    return-object v2

    .line 166
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, url:Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/apple-touch-icon.png"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_0

    .line 174
    .end local v1           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method inflate(I)V
    .locals 1
    .parameter "nativeFrame"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebHistoryItem;->inflate(I[B)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 243
    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 199
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 209
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 210
    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 218
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 221
    :cond_1
    return-void
.end method
