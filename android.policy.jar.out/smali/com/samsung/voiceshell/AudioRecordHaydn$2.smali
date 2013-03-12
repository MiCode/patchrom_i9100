.class Lcom/samsung/voiceshell/AudioRecordHaydn$2;
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
    .line 151
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rms_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    #getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnRmsForWave(I)V

    .line 160
    :cond_0
    return-void
.end method
