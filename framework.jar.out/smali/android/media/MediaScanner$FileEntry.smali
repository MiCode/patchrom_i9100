.class Landroid/media/MediaScanner$FileEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation


# instance fields
.field mFormat:I

.field mLastModified:J

.field mLastModifiedChanged:Z

.field mPath:Ljava/lang/String;

.field mRowId:J


# direct methods
.method constructor <init>(JLjava/lang/String;JI)V
    .locals 1
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"
    .parameter "format"

    .prologue
    .line 400
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-wide p1, p0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 402
    iput-object p3, p0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 403
    iput-wide p4, p0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 404
    iput p6, p0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 406
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRowId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
