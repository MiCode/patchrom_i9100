.class Lcom/samsung/voiceshell/AudioRecordHaydn$1;
.super Landroid/os/Handler;
.source "AudioRecordHaydn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/voiceshell/AudioRecordHaydn;
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
    .line 125
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$1;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "verify_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, iResult:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "verify_command"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 131
    .local v0, cResult:S
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$1;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$1;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    .line 135
    :cond_0
    return-void
.end method
