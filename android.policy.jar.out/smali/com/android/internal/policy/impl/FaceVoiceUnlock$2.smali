.class Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 728
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "iservice"

    .prologue
    .line 734
    const-string v0, "FULLockscreen"

    const-string v1, "Connected to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    invoke-static {p2}, Lcom/android/internal/policy/IFaceLockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IFaceLockInterface;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$302(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 737
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 744
    const-string v0, "FULLockscreen"

    const-string v1, "Unexpected disconnect from Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 746
    return-void
.end method
