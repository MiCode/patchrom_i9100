.class Landroid/app/BarBeamService$1;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 181
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1

    .line 182
    const-string v2, "BarBeamService"

    const-string v3, " call onBeamingStoppped "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    const/4 v3, 0x0

    #calls: Landroid/app/BarBeamService;->setLEDNotification(Z)V
    invoke-static {v2, v3}, Landroid/app/BarBeamService;->access$100(Landroid/app/BarBeamService;Z)V

    .line 184
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v3, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 185
    :try_start_0
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v2, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamService$Listener;

    .line 186
    .local v1, l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v1}, Landroid/app/BarBeamService$Listener;->onBeamingStoppped()V

    goto :goto_0

    .line 189
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Landroid/app/BarBeamService$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 188
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v2, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 189
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
