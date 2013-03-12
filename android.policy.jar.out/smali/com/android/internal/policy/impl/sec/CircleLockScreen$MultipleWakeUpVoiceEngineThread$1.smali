.class Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;
.super Landroid/os/Handler;
.source "CircleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 160
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 271
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sent MSG cannot be handled here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Create WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    new-instance v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v4, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 165
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Create WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->getEnableWakeUp()Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$202(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 169
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$200(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "initialize WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I

    .line 182
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "initialize WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 194
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I

    .line 195
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "startVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 208
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "terminateVerify WakeUpCmdRecognizer finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 210
    :catch_3
    move-exception v0

    .line 211
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 220
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 221
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 225
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 228
    :catch_4
    move-exception v0

    .line 229
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$502(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->removeAllMsgs()V

    .line 236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 237
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$602(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;

    .line 238
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    goto/16 :goto_0

    .line 241
    :pswitch_6
    const/4 v2, 0x0

    .line 242
    .local v2, tmpIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->choiceMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_4

    .line 245
    const/high16 v5, 0x1020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_3

    .line 247
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSecure()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z

    move-result v1

    .line 250
    .local v1, isSecureLock:Z
    const-string v5, "isSecure"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_5

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    .end local v1           #isSecureLock:Z
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 259
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$600(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #calls: Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->dismissLockScreen()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$800(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V

    goto/16 :goto_0

    .restart local v1       #isSecureLock:Z
    :cond_5
    move v3, v4

    .line 251
    goto :goto_1

    .line 256
    .end local v1           #isSecureLock:Z
    :catch_5
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dismissKeyguard remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 268
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #tmpIntent:Landroid/content/Intent;
    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
