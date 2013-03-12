.class Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextToSpeechWrapper"
.end annotation


# instance fields
.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, pkgName:Ljava/lang/String;
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".**webview**"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 524
    return-void
.end method


# virtual methods
.method public isSpeaking()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 547
    return-void
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 1
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 535
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    return v0
.end method
