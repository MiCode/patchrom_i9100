.class Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/server/spell/SpellManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Landroid/server/spell/SpellManagerService$BootCompletedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    iget-object v0, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->this$0:Landroid/server/spell/SpellManagerService;

    #getter for: Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/spell/SpellManagerService;->access$100(Landroid/server/spell/SpellManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object v0, p0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;->this$0:Landroid/server/spell/SpellManagerService;

    #calls: Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;
    invoke-static {v0}, Landroid/server/spell/SpellManagerService;->access$200(Landroid/server/spell/SpellManagerService;)Landroid/server/spell/SpellScrollScanner;

    .line 98
    return-void
.end method
