.class Lcom/samsung/wfd/WfdService$2;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdService;->setWfdEnabled(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$2;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$2;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove group fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$2;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, " remove group success"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$2;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService;->access$3602(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1035
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$2;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v0

    const v1, 0x2206f

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1036
    return-void
.end method
