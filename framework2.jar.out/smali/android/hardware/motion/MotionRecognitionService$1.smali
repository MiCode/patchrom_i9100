.class Landroid/hardware/motion/MotionRecognitionService$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v3, v1, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 139
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "MotionRecognitionService"

    const-string v2, " Cancel reactive alert mode "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService;->disableAccINT()V

    .line 145
    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v4, v1, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 149
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->finalizeIfPossible()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$100(Landroid/hardware/motion/MotionRecognitionService;)V

    goto :goto_0

    .line 150
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    const-string v1, "MotionRecognitionService"

    const-string v2, "  mReceiver.onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v3, v1, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 153
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v3, v1, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    goto :goto_0

    .line 156
    :cond_4
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    :cond_5
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    goto :goto_0

    .line 160
    :cond_6
    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    const-string v1, "isEnable"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    .local v0, isEnable:Z
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mReceiver.onReceive : ACTION_MOTIONS_SETTINGS_CHANGED - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v0, :cond_7

    .line 164
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    .line 166
    :cond_7
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    .line 167
    .end local v0           #isEnable:Z
    :cond_8
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 168
    const-string v1, "MotionRecognitionService"

    const-string v2, "  mReceiver.onReceive : ACTION_USER_PRESENT  :: UNLOCK SCREEN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    :cond_9
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "MotionRecognitionService"

    const-string v2, "  mReceiver.onReceive :VOLUME_CHANGED "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput v3, v1, Landroid/hardware/motion/MotionRecognitionService;->mKeyInput:I

    .line 173
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mKeyInput:I

    #calls: Landroid/hardware/motion/MotionRecognitionService;->native_volume_changed(I)V
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;I)V

    goto/16 :goto_0
.end method
