.class Lcom/android/sec_settings/tts/TextToSpeechSettings$3;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/tts/TextToSpeechSettings;->displayDataAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/tts/TextToSpeechSettings;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/sec_settings/tts/TextToSpeechSettings;

    iput-object p2, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings$3;->val$key:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/sec_settings/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings$3;->val$key:Ljava/lang/String;

    #calls: Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->access$000(Lcom/android/sec_settings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    .line 428
    return-void
.end method
