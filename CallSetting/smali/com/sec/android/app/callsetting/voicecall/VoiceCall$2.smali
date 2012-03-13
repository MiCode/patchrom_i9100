.class Lcom/sec/android/app/callsetting/voicecall/VoiceCall$2;
.super Ljava/lang/Object;
.source "VoiceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->onCreate(Landroid/os/Bundle;)V
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
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$2;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$2;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->requestCWSetCommand(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$000(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$2;->this$0:Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    sget-object v1, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->access$100(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V

    .line 144
    return-void
.end method
