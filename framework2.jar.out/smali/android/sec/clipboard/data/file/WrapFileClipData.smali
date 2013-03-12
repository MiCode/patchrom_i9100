.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mClip:Landroid/sec/clipboard/data/ClipboardData;

.field private mIsProtected:Z

.field private mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .parameter "clip"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 30
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 33
    return-void
.end method

.method private loadData()Landroid/sec/clipboard/data/ClipboardData;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method


# virtual methods
.method public getClipData()Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public load()Z
    .locals 5

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, result:Z
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 62
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    iget-boolean v4, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mIsProtected:Z

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 67
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 68
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 69
    .local v0, bitmap:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 80
    .end local v0           #bitmap:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v2           #tempFile:Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setClipData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 44
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 52
    return-void
.end method

.method public setProtectState(Z)V
    .locals 0
    .parameter "isProtected"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mIsProtected:Z

    return-void
.end method
