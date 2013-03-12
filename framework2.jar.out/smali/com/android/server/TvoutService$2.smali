.class Lcom/android/server/TvoutService$2;
.super Landroid/os/Handler;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v1}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "TvoutService_Java"

    const-string v2, " VIVEK_AUDIO_CHECK1 Calling TvoutGetAudioChannel !!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v1}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    move-result v0

    .line 127
    .local v0, audioValue:I
    const-string v1, "TvoutService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " VIVEK_AUDIO_CHECK1 TvoutGetAudioChannel audioValue is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0           #audioValue:I
    :cond_0
    return-void
.end method
