.class Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;
.super Ljava/lang/Object;
.source "ScreenCaptureRemoteService.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ci:I

.field private i:I

.field private final pi:I

.field private s:I

.field final synthetic this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;


# direct methods
.method constructor <init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I
    invoke-static {v0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$100(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I

    move-result v0

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->ci:I

    .line 320
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I
    invoke-static {v0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$200(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I

    move-result v0

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->pi:I

    .line 321
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I
    invoke-static {v0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$300(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I

    move-result v0

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->s:I

    .line 322
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->ci:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->i:I

    return-void
.end method

.method private checkForModification()V
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->ci:I

    iget-object v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I
    invoke-static {v1}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$100(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 346
    :cond_0
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->pi:I

    iget-object v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I
    invoke-static {v1}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$200(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 347
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->checkForModification()V

    .line 326
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->checkForModification()V

    .line 331
    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->s:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 333
    :cond_0
    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->s:I

    .line 334
    iget-object v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$400(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->i:I

    aget-object v0, v1, v2

    .line 335
    .local v0, r:Ljava/lang/Object;
    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->this$1:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I
    invoke-static {v2}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->access$500(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I

    move-result v2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;->i:I

    .line 337
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
