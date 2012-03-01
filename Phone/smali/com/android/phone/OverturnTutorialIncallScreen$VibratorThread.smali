.class Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;
.super Ljava/lang/Thread;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OverturnTutorialIncallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;Lcom/android/phone/OverturnTutorialIncallScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    :goto_0
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 250
    const-wide/16 v0, 0xdac

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method
