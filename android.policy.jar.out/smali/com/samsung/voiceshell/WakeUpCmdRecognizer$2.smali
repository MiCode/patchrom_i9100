.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x3

    const/4 v9, 0x4

    const/4 v8, -0x1

    .line 191
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 194
    const/4 v1, 0x0

    .line 197
    .local v1, iResult:I
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v4, v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v5, "/data/data/com.vlingo.midas/"

    iget-object v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget v6, v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    .line 199
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeEnroll()I

    .line 201
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v5, 0x65

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_6

    .line 205
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ProcessEnroll()I

    move-result v1

    .line 207
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ProcessEnroll.result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-ne v1, v9, :cond_3

    .line 211
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v5, 0x66

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 213
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v4, v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v5, "/data/data/com.vlingo.midas/"

    iget-object v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v6, v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v4, v5, v6}, Lcom/samsung/voiceshell/VoiceEngine;->consistencyCheckEnroll(Ljava/lang/String;S)I

    move-result v2

    .line 215
    .local v2, ii:I
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "consistencyCheckEnroll.result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-ne v2, v9, :cond_0

    .line 219
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v4, v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v5, "/data/data/com.vlingo.midas/"

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/voiceshell/VoiceEngine;->setModelStatus(Ljava/lang/String;IS)I

    .line 220
    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v5, v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 225
    :cond_0
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 231
    :cond_1
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 235
    const/4 v0, -0x1

    .line 238
    :cond_2
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 241
    .end local v2           #ii:I
    :cond_3
    if-ne v1, v8, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 243
    :cond_4
    const/4 v4, -0x2

    if-ne v1, v4, :cond_5

    add-int/lit8 v0, v0, -0x1

    .line 245
    :cond_5
    if-ne v1, v10, :cond_8

    .line 258
    :cond_6
    :goto_2
    if-ne v1, v10, :cond_a

    .line 260
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v4, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 270
    .end local v0           #i:I
    .end local v1           #iResult:I
    :catch_0
    move-exception v3

    .line 271
    .local v3, t:Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exeption error in Enroll : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_7
    return-void

    .line 247
    .restart local v0       #i:I
    .restart local v1       #iResult:I
    :cond_8
    const/4 v4, -0x4

    if-ne v1, v4, :cond_9

    .line 249
    :try_start_1
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v5, 0x68

    iget-object v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v6, v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    const/4 v7, 0x0

    aget-short v6, v6, v7

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_2

    .line 253
    :cond_9
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v5, 0x65

    add-int/lit8 v6, v0, 0x1

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 255
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 263
    :cond_a
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 265
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v4, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    goto/16 :goto_0

    .line 267
    .end local v0           #i:I
    .end local v1           #iResult:I
    :cond_b
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
