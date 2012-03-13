.class Lcom/sec/android/app/callsetting/voicecall/VoiceCall$4;
.super Landroid/os/Handler;
.source "VoiceCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/voicecall/VoiceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$4;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSetOptionComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$4;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handleSetCWMessage()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$500(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
