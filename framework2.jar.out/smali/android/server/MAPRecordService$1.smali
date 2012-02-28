.class Landroid/server/MAPRecordService$1;
.super Landroid/content/BroadcastReceiver;
.source "MAPRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/MAPRecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/MAPRecordService;


# direct methods
.method constructor <init>(Landroid/server/MAPRecordService;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/server/MAPRecordService$1;->this$0:Landroid/server/MAPRecordService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.MAP_ADDRECORD"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    const-string v6, "Adding MAP record"

    #calls: Landroid/server/MAPRecordService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Landroid/server/MAPRecordService;->access$000(Ljava/lang/String;)V

    .line 69
    const-string v6, "android.intent.extra.MAP_EXTRA_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, serviceName:Ljava/lang/String;
    const-string v6, "android.intent.extra.MAP_EXTRA_MASID"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 71
    .local v3, masid:I
    const-string v6, "android.intent.extra.MAP_EXTRA_TYPES"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 72
    .local v5, types:I
    const-string v6, "android.intent.extra.MAP_EXTRA_CHANNEL"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, channel:I
    iget-object v6, p0, Landroid/server/MAPRecordService$1;->this$0:Landroid/server/MAPRecordService;

    #calls: Landroid/server/MAPRecordService;->addServiceRecord(Ljava/lang/String;III)I
    invoke-static {v6, v4, v3, v5, v2}, Landroid/server/MAPRecordService;->access$200(Landroid/server/MAPRecordService;Ljava/lang/String;III)I

    move-result v6

    invoke-static {v6}, Landroid/server/MAPRecordService;->access$102(I)I

    .line 88
    .end local v2           #channel:I
    .end local v3           #masid:I
    .end local v4           #serviceName:Ljava/lang/String;
    .end local v5           #types:I
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, btState:I
    const/16 v6, 0xd

    if-ne v1, v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRecordHandle is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/server/MAPRecordService;->access$100()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/server/MAPRecordService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Landroid/server/MAPRecordService;->access$000(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Landroid/server/MAPRecordService;->access$100()I

    move-result v6

    if-lez v6, :cond_0

    .line 83
    iget-object v6, p0, Landroid/server/MAPRecordService$1;->this$0:Landroid/server/MAPRecordService;

    invoke-static {}, Landroid/server/MAPRecordService;->access$100()I

    move-result v7

    #calls: Landroid/server/MAPRecordService;->removeServiceRecord(I)V
    invoke-static {v6, v7}, Landroid/server/MAPRecordService;->access$300(Landroid/server/MAPRecordService;I)V

    .line 84
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/server/MAPRecordService;->access$102(I)I

    goto :goto_0
.end method
