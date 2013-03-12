.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    packed-switch p1, :pswitch_data_0

    .line 801
    :pswitch_0
    return-void

    .line 790
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
