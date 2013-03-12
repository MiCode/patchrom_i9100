.class Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "FaceVoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FaceVoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 820
    return-void
.end method

.method public exposeFallback()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 840
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 849
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 850
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 829
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 811
    return-void
.end method
