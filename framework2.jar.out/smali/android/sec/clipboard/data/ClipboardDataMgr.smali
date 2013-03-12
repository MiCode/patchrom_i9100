.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 92
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 96
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/clipboard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, rootPath:Ljava/io/File;
    new-instance v1, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v2, Ljava/io/File;

    const-string v3, "clips.info"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 107
    return-void
.end method


# virtual methods
.method public addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 9
    .parameter "data"

    .prologue
    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, Result:Z
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v4

    .line 164
    .local v4, iSize:I
    const/4 v5, -0x1

    .line 166
    .local v5, index:I
    :try_start_0
    iget v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v4, v6, :cond_4

    .line 170
    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 171
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6, v3}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 172
    .local v1, deleteData:Landroid/sec/clipboard/data/ClipboardData;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addData] deleteData.GetProtectState() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    move v5, v3

    .line 179
    .end local v1           #deleteData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    if-ltz v5, :cond_2

    .line 181
    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 182
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 203
    .end local v3           #i:I
    :cond_2
    :goto_1
    return v0

    .line 170
    .restart local v1       #deleteData:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 193
    .end local v1           #deleteData:Landroid/sec/clipboard/data/ClipboardData;
    .end local v3           #i:I
    :cond_4
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v2

    .line 199
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    const-string v6, "ClipboardServiceEx"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .parameter "index"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "The index has been exceeded."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeData(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 216
    const/4 v0, 0x1

    .line 220
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "index"
    .parameter "clipData"

    .prologue
    .line 250
    const/4 v0, 0x1

    .line 255
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return v0

    .line 256
    :catch_0
    move-exception v1

    .line 258
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
