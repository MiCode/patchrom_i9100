.class Landroid/server/BluetoothEventLoop$3;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothEventLoop;->onGattDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;

.field final synthetic val$charPaths:[Ljava/lang/String;

.field final synthetic val$servicePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$3;->this$0:Landroid/server/BluetoothEventLoop;

    iput-object p2, p0, Landroid/server/BluetoothEventLoop$3;->val$servicePath:Ljava/lang/String;

    iput-object p3, p0, Landroid/server/BluetoothEventLoop$3;->val$charPaths:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    const/4 v1, 0x0

    .local v1, no_of_500milliseconds:I
    move v2, v1

    .line 314
    .end local v1           #no_of_500milliseconds:I
    .local v2, no_of_500milliseconds:I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$3;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothEventLoop$3;->val$servicePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->isGattCharDiscoveryInProgress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    const-string v3, "BluetoothEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting for 500ms more and no_of_500milliseconds::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    add-int/lit8 v1, v2, 0x1

    .end local v2           #no_of_500milliseconds:I
    .restart local v1       #no_of_500milliseconds:I
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    .end local v1           #no_of_500milliseconds:I
    .restart local v2       #no_of_500milliseconds:I
    goto :goto_0

    .line 318
    :cond_0
    :try_start_2
    const-string v3, "BluetoothEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onGattDiscoverCharResult with service path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/server/BluetoothEventLoop$3;->val$servicePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$3;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothEventLoop$3;->val$servicePath:Ljava/lang/String;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop$3;->val$charPaths:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/server/BluetoothService;->onGattDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    .end local v2           #no_of_500milliseconds:I
    :goto_1
    return-void

    .line 320
    .restart local v2       #no_of_500milliseconds:I
    :catch_0
    move-exception v0

    move v1, v2

    .end local v2           #no_of_500milliseconds:I
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #no_of_500milliseconds:I
    :goto_2
    const-string v3, "BluetoothEventLoop"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method
