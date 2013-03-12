.class Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdNotSupportedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "Wi-Fi Display is not supported"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1362
    const/4 v0, 0x0

    return v0
.end method
