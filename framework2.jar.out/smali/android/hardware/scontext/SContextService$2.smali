.class Landroid/hardware/scontext/SContextService$2;
.super Landroid/content/BroadcastReceiver;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x0

    #calls: Landroid/hardware/scontext/SContextService;->setLEDNotification(Z)V
    invoke-static {v0, v1}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;Z)V

    .line 459
    :cond_0
    return-void
.end method
