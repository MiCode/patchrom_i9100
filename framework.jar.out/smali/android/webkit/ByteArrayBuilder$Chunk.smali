.class public Landroid/webkit/ByteArrayBuilder$Chunk;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ByteArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


# instance fields
.field public mArray:[B

.field public mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 142
    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 149
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$100()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
