.class final Landroid/webkit/GeolocationPermissionsClassic;
.super Landroid/webkit/GeolocationPermissions;
.source "GeolocationPermissionsClassic.java"


# static fields
.field static final ALLOW:I = 0x3

.field private static final ALLOWED:Ljava/lang/String; = "allowed"

.field private static final CALLBACK:Ljava/lang/String; = "callback"

.field static final CLEAR:I = 0x2

.field static final CLEAR_ALL:I = 0x4

.field static final GET_ALLOWED:I = 0x1

.field static final GET_ORIGINS:I = 0x0

.field private static final ORIGIN:Ljava/lang/String; = "origin"

.field private static final ORIGINS:Ljava/lang/String; = "origins"

.field static final RETURN_ALLOWED:I = 0x1

.field static final RETURN_ORIGINS:I

.field private static sInstance:Landroid/webkit/GeolocationPermissionsClassic;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQueuedMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/webkit/GeolocationPermissions;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/GeolocationPermissionsClassic;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/GeolocationPermissionsClassic;->postUIMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/webkit/GeolocationPermissionsClassic;->nativeGetAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/webkit/GeolocationPermissionsClassic;->nativeClear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/webkit/GeolocationPermissionsClassic;->nativeAllow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->nativeClearAll()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/GeolocationPermissionsClassic;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/webkit/GeolocationPermissionsClassic;->sInstance:Landroid/webkit/GeolocationPermissionsClassic;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/webkit/GeolocationPermissionsClassic;

    invoke-direct {v0}, Landroid/webkit/GeolocationPermissionsClassic;-><init>()V

    sput-object v0, Landroid/webkit/GeolocationPermissionsClassic;->sInstance:Landroid/webkit/GeolocationPermissionsClassic;

    .line 59
    :cond_0
    sget-object v0, Landroid/webkit/GeolocationPermissionsClassic;->sInstance:Landroid/webkit/GeolocationPermissionsClassic;

    return-object v0
.end method

.method private static native nativeAllow(Ljava/lang/String;)V
.end method

.method private static native nativeClear(Ljava/lang/String;)V
.end method

.method private static native nativeClearAll()V
.end method

.method private static native nativeGetAllowed(Ljava/lang/String;)Z
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUIMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationPermissionsClassic;->postMessage(Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationPermissionsClassic;->postMessage(Landroid/os/Message;)V

    .line 209
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationPermissionsClassic;->postMessage(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public declared-synchronized createHandler()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Landroid/webkit/GeolocationPermissionsClassic$2;

    invoke-direct {v0, p0}, Landroid/webkit/GeolocationPermissionsClassic$2;-><init>(Landroid/webkit/GeolocationPermissionsClassic;)V

    iput-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mHandler:Landroid/os/Handler;

    .line 134
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 135
    :goto_0
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v1, p0, Landroid/webkit/GeolocationPermissionsClassic;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mQueuedMessages:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public createUIHandler()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/webkit/GeolocationPermissionsClassic$1;

    invoke-direct {v0, p0}, Landroid/webkit/GeolocationPermissionsClassic$1;-><init>(Landroid/webkit/GeolocationPermissionsClassic;)V

    iput-object v0, p0, Landroid/webkit/GeolocationPermissionsClassic;->mUIHandler:Landroid/os/Handler;

    .line 89
    :cond_0
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 5
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 184
    if-nez p2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 187
    :cond_0
    if-nez p1, :cond_1

    .line 188
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_1
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    invoke-static {p1}, Landroid/webkit/GeolocationPermissionsClassic;->nativeGetAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 193
    .local v0, allowed:Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    .end local v0           #allowed:Z
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v1, values:Ljava/util/Map;
    const-string/jumbo v2, "origin"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "callback"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v2, 0x1

    invoke-static {v4, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/GeolocationPermissionsClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    .line 173
    const-string v1, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    .line 175
    .local v0, origins:Ljava/util/Set;
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 180
    .end local v0           #origins:Ljava/util/Set;
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/GeolocationPermissionsClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
