.class Lcom/android/phone/OtaStartupReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaStartupReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaStartupReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaStartupReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaspChanged(I)V
    .locals 3
    .parameter "otaspMode"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #setter for: Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I
    invoke-static {v0, p1}, Lcom/android/phone/OtaStartupReceiver;->access$002(Lcom/android/phone/OtaStartupReceiver;I)I

    .line 54
    const-string v0, "OtaStartupReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaspChanged: mOtaspMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I
    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->access$000(Lcom/android/phone/OtaStartupReceiver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
