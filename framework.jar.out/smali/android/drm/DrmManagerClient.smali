.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"


# instance fields
.field private final isLogEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:I

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private mReleased:Z

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->isLogEnabled:Z

    .line 266
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 267
    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 268
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 271
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v0

    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 272
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method static synthetic access$000(Landroid/drm/DrmManagerClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "uri"

    .prologue
    .line 873
    const/4 v8, 0x0

    .line 874
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 875
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 876
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 907
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 880
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 883
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 884
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 885
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 887
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 889
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 890
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :catch_0
    move-exception v7

    .line 896
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 899
    :cond_5
    throw v0

    .line 893
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 894
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 899
    if-eqz v6, :cond_1

    .line 900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 904
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventThreads()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 954
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 955
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 957
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 958
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 959
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 961
    :cond_0
    return-void
.end method

.method private createListeners()V
    .locals 2

    .prologue
    .line 964
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 965
    return-void
.end method

.method private getErrorType(ILandroid/drm/DrmInfoStatus;)I
    .locals 4
    .parameter "infoType"
    .parameter "infoStatus"

    .prologue
    .line 817
    const/4 v0, -0x1

    .line 819
    .local v0, error:I
    sparse-switch p1, :sswitch_data_0

    .line 844
    :goto_0
    return v0

    .line 829
    :sswitch_0
    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/wvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 834
    :cond_0
    const-string v1, "DrmManagerClient"

    const-string v2, "getErrorType return TYPE_PROCESS_DRM_INFO_FAILED becauseof widevine or STATUS_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v0, 0x7d6

    goto :goto_0

    .line 839
    :cond_1
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorType infoStatus.statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget v0, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    goto :goto_0

    .line 819
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private getEventType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 795
    const/4 v0, -0x1

    .line 797
    .local v0, eventType:I
    sparse-switch p1, :sswitch_data_0

    .line 811
    :goto_0
    return v0

    .line 808
    :sswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 797
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .parameter "thisReference"
    .parameter "uniqueId"
    .parameter "infoType"
    .parameter "message"

    .prologue
    .line 197
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 199
    .local v0, instance:Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 202
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 545
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 567
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 568
    const/16 v1, -0x7d0

    .line 570
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 512
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 661
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 693
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 694
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 677
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path or action is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .parameter "convertId"

    .prologue
    .line 791
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .parameter "convertId"
    .parameter "inputData"

    .prologue
    .line 773
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public deInitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$InfoHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 283
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 285
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 287
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 289
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-nez v0, :cond_0

    .line 293
    const-string v0, "DrmManagerClient"

    const-string v1, "You should have called release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 296
    :cond_0
    return-void
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 373
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 374
    .local v3, supportInfos:[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, descriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 377
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 381
    .local v1, drmEngines:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 426
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given usage or path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 604
    :cond_2
    const-string v1, ""

    .line 606
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 611
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 607
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 584
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"

    .prologue
    .line 441
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"

    .prologue
    .line 410
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 636
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 622
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "engineFilePath"

    .prologue
    .line 481
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 486
    return-void
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 753
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .parameter "drmInfo"

    .prologue
    .line 525
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    :cond_1
    const/16 v1, -0x7d0

    .line 529
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 533
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "DrmManagerClient"

    const-string v1, "You have already called release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 311
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 313
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 315
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 317
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 319
    :cond_2
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 320
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 321
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 322
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 323
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 324
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    goto :goto_0
.end method

.method public removeAllRights()I
    .locals 4

    .prologue
    .line 734
    const/16 v1, -0x7d0

    .line 735
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 739
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 721
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 707
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "drmRights"
    .parameter "rightsPath"
    .parameter "contentPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 470
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 361
    if-eqz p1, :cond_0

    .line 362
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .parameter "infoListener"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
