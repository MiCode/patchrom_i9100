.class Lcom/android/server/pm/ShutdownDialog$2;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownDialog;->prepareSoundThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog$2;->this$0:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 315
    const-string v0, "ShutdownDialog"

    const-string v1, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$2;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$700(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Releasing sAnimationSound end lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$2;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$700(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 320
    :cond_0
    return-void
.end method
