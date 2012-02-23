.class Lcom/android/internal/telephony/gsm/GsmConnection$PauseTimer;
.super Landroid/os/CountDownTimer;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PauseTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmConnection;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$PauseTimer;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 151
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 152
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$PauseTimer;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    const-string v1, "PauseTimer is EXPIRED!!! start to send processNextPostDialChar "

    #calls: Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$200(Lcom/android/internal/telephony/gsm/GsmConnection;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$PauseTimer;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    #calls: Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 156
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 159
    return-void
.end method
