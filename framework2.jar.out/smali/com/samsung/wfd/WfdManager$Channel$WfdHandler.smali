.class Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;
.super Landroid/os/Handler;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdManager$Channel;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;->this$0:Lcom/samsung/wfd/WfdManager$Channel;

    .line 417
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 418
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;->this$0:Lcom/samsung/wfd/WfdManager$Channel;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, listener:Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 431
    const-string v1, "WfdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;->this$0:Lcom/samsung/wfd/WfdManager$Channel;

    #getter for: Lcom/samsung/wfd/WfdManager$Channel;->mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;
    invoke-static {v1}, Lcom/samsung/wfd/WfdManager$Channel;->access$000(Lcom/samsung/wfd/WfdManager$Channel;)Lcom/samsung/wfd/WfdManager$ChannelListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;->this$0:Lcom/samsung/wfd/WfdManager$Channel;

    #getter for: Lcom/samsung/wfd/WfdManager$Channel;->mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;
    invoke-static {v1}, Lcom/samsung/wfd/WfdManager$Channel;->access$000(Lcom/samsung/wfd/WfdManager$Channel;)Lcom/samsung/wfd/WfdManager$ChannelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/wfd/WfdManager$ChannelListener;->onChannelDisconnected()V

    .line 427
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;->this$0:Lcom/samsung/wfd/WfdManager$Channel;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdManager$Channel;->mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdManager$Channel;->access$002(Lcom/samsung/wfd/WfdManager$Channel;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$ChannelListener;

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x11004
        :pswitch_0
    .end packed-switch
.end method
