.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "infoFile"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 58
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 59
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 60
    return-void
.end method


# virtual methods
.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .parameter "index"
    .parameter "element"

    .prologue
    .line 89
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "add data..file system"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 92
    .local v0, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 95
    const/4 v1, 0x1

    .line 97
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 2
    .parameter "element"

    .prologue
    .line 80
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 81
    .local v0, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 83
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 116
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    return-void
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "index"

    .prologue
    .line 124
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 2
    .parameter "index"

    .prologue
    .line 101
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 102
    .local v0, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 103
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    return-object v1
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .parameter "clip"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 2
    .parameter "index"
    .parameter "element"

    .prologue
    .line 64
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 65
    .local v0, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 67
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 72
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 73
    .restart local v0       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
