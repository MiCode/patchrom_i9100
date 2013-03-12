.class Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;
.super Landroid/os/Handler;
.source "AudioTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recognition_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    #getter for: Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    invoke-static {v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->access$000(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    #getter for: Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    invoke-static {v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->access$000(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;->onResults([Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method
