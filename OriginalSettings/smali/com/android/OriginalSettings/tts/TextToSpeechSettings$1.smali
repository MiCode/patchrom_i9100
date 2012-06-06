.class Lcom/android/OriginalSettings/tts/TextToSpeechSettings$1;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/OriginalSettings/tts/TextToSpeechSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/OriginalSettings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->onInitEngine(I)V

    .line 109
    return-void
.end method
