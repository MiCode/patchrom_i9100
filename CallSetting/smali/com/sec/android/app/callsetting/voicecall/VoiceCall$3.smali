.class Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;
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
    .line 301
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 305
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 306
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v1, 0x64

    .line 307
    .local v1, status:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##OSK## "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mGetCallWaitingComplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handleGetCWMessage(Landroid/os/AsyncResult;)I
    invoke-static {v2, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$200(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Landroid/os/AsyncResult;)I

    move-result v1

    .line 322
    const-string v2, "mGetCallWaitingComplete: CW query done, all call features queried."

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$300(Ljava/lang/String;)V

    .line 324
    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    sget-object v3, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V
    invoke-static {v2, v3, v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$400(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    sget-object v3, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$100(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
