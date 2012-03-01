.class Lcom/android/phone/PhoneApp$AutoAnswerCallThread;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnswerCallThread"
.end annotation


# instance fields
.field conn:Lcom/android/internal/telephony/Connection;

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter "conn"

    .prologue
    .line 2277
    iput-object p1, p0, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2278
    iput-object p2, p0, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;->conn:Lcom/android/internal/telephony/Connection;

    .line 2279
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;->conn:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;->conn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2282
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- AutoAnswerCallThread : auto answer call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2292
    :cond_1
    return-void
.end method
