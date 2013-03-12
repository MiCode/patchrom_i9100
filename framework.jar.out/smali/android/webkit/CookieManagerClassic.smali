.class Landroid/webkit/CookieManagerClassic;
.super Landroid/webkit/CookieManager;
.source "CookieManagerClassic.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static sRef:Landroid/webkit/CookieManagerClassic;


# instance fields
.field private mPendingCookieOperations:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Landroid/webkit/CookieManagerClassic;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/CookieManagerClassic;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/CookieManager;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I

    .line 39
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->nativeRemoveSessionCookie()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/CookieManagerClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/webkit/CookieManagerClassic;->signalCookieOperationsComplete()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManagerClassic;
    .locals 2

    .prologue
    .line 42
    const-class v1, Landroid/webkit/CookieManagerClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/CookieManagerClassic;->sRef:Landroid/webkit/CookieManagerClassic;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/webkit/CookieManagerClassic;

    invoke-direct {v0}, Landroid/webkit/CookieManagerClassic;-><init>()V

    sput-object v0, Landroid/webkit/CookieManagerClassic;->sRef:Landroid/webkit/CookieManagerClassic;

    .line 45
    :cond_0
    sget-object v0, Landroid/webkit/CookieManagerClassic;->sRef:Landroid/webkit/CookieManagerClassic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeAcceptCookie()Z
.end method

.method private static native nativeAcceptFileSchemeCookies()Z
.end method

.method private static native nativeFlushCookieStore()V
.end method

.method private static native nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native nativeHasCookies(Z)Z
.end method

.method private static native nativeRemoveAllCookie()V
.end method

.method private static native nativeRemoveExpiredCookie()V
.end method

.method private static native nativeRemoveSessionCookie()V
.end method

.method private static native nativeSetAcceptCookie(Z)V
.end method

.method private static native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private static native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private declared-synchronized signalCookieOperationsComplete()V
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I

    .line 132
    sget-boolean v0, Landroid/webkit/CookieManagerClassic;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized signalCookieOperationsStart()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->nativeAcceptCookie()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->nativeAcceptFileSchemeCookies()Z

    move-result v0

    return v0
.end method

.method protected flushCookieStore()V
    .locals 0

    .prologue
    .line 175
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->nativeFlushCookieStore()V

    .line 176
    return-void
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/CookieManagerClassic;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/CookieManagerClassic;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "privateBrowsing"

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/webkit/CookieManagerClassic;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CookieManagerClassic;->hasCookies(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .locals 1
    .parameter "privateBrowsing"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/webkit/CookieManagerClassic;->nativeHasCookies(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 0

    .prologue
    .line 155
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->nativeRemoveAllCookie()V

    .line 156
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 0

    .prologue
    .line 170
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->nativeRemoveExpiredCookie()V

    .line 171
    return-void
.end method

.method public removeSessionCookie()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/webkit/CookieManagerClassic;->signalCookieOperationsStart()V

    .line 143
    new-instance v0, Landroid/webkit/CookieManagerClassic$1;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManagerClassic$1;-><init>(Landroid/webkit/CookieManagerClassic;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManagerClassic$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 2
    .parameter "accept"

    .prologue
    .line 51
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 53
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;

    move-result-object v0

    .line 54
    .local v0, bp:Landroid/sec/enterprise/BrowserPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BrowserPolicy;->getCookiesSetting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const/4 p1, 0x0

    .line 60
    .end local v0           #bp:Landroid/sec/enterprise/BrowserPolicy;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1}, Landroid/webkit/CookieManagerClassic;->nativeSetAcceptCookie(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .locals 0
    .parameter "accept"

    .prologue
    .line 185
    invoke-static {p1}, Landroid/webkit/CookieManagerClassic;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 186
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/CookieManagerClassic;->setCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method setCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "url"
    .parameter "value"
    .parameter "privateBrowsing"

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Landroid/webkit/CookieManagerClassic;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method waitForCookieOperationsToComplete()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :goto_0
    :try_start_0
    iget v0, p0, Landroid/webkit/CookieManagerClassic;->mPendingCookieOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0

    .line 127
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
