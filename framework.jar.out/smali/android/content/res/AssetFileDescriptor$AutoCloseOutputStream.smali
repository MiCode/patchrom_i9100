.class public Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseOutputStream"
.end annotation


# instance fields
.field private mRemaining:J


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 263
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 264
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 267
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 298
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 299
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    .line 301
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    goto :goto_0

    .line 305
    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 284
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 285
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_0
    array-length v0, p1

    .line 287
    .local v0, count:I
    int-to-long v1, v0

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    long-to-int v0, v1

    .line 288
    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    .line 289
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    goto :goto_0

    .line 293
    .end local v0           #count:I
    :cond_2
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 271
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 272
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    int-to-long v0, p3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    long-to-int p3, v0

    .line 274
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    .line 275
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    goto :goto_0

    .line 279
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    goto :goto_0
.end method
