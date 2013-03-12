.class Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 75
    const-string v0, "UnlockTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->access$102(Z)Z

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->doSpeak()V

    .line 79
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 83
    const-string v0, "UnlockTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->destroy()V

    .line 85
    return-void
.end method
