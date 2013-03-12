.class Lcom/samsung/voiceshell/AudioRecordHaydn$3;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 182
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 185
    const/4 v6, 0x0

    .line 186
    .local v6, iResult:I
    const/4 v9, 0x0

    .line 189
    .local v9, vResult:I
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 190
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/VoiceEngine;->getMode()I

    move-result v0

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->ProcessShortArray([SI)I

    move-result v9

    .line 205
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBuffer vResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$902(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 222
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->computeEnergyFrame([SII)I

    move-result v7

    .line 224
    .local v7, rms:I
    const-wide v0, 0x3ff3333333333333L

    int-to-float v2, v7

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x400dc28f5c28f5c3L

    sub-double/2addr v0, v2

    double-to-int v7, v0

    .line 226
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v0

    if-le v7, v0, :cond_6

    .line 227
    const-wide v0, 0x3feccccccccccccdL

    int-to-float v2, v7

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL

    iget-object v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v7, v0

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v0, v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 233
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v0

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0, v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmsSendHandlerMessage(I)V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    .line 240
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verified Command Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-ne v9, v10, :cond_7

    .line 245
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$202(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 280
    .end local v6           #iResult:I
    .end local v7           #rms:I
    .end local v9           #vResult:I
    :catch_0
    move-exception v8

    .line 281
    .local v8, t:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exeption error in Enroll: %s"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_4
    return-void

    .line 198
    .restart local v6       #iResult:I
    .restart local v9       #vResult:I
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    const-string v3, "/data/data/com.vlingo.midas/"

    iget-object v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    iget-object v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/voiceshell/VoiceEngine;->processBuffer([SILjava/lang/String;[S[S)I

    move-result v6

    .line 199
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBuffer iResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 229
    .restart local v7       #rms:I
    :cond_6
    const-wide/high16 v0, 0x3fd0

    int-to-float v2, v7

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe8

    iget-object v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v7, v0

    goto/16 :goto_2

    .line 250
    :cond_7
    if-ne v6, v10, :cond_9

    .line 252
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 254
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setAdaptation(I)I

    .line 256
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v0, v6, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 259
    :cond_8
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$202(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 261
    :cond_9
    const/4 v0, -0x3

    if-ne v6, v0, :cond_b

    .line 263
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v0, v6, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 268
    :cond_a
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$202(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 270
    :cond_b
    const/16 v0, -0xc

    if-ne v6, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v0, v6, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    goto/16 :goto_0

    .line 277
    .end local v6           #iResult:I
    .end local v7           #rms:I
    .end local v9           #vResult:I
    :cond_c
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
