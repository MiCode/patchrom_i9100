.class public Lcom/android/server/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mReboot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "fake"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "ShutdownActivity"

    const-string v3, "Fake Shutdown"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    .line 46
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    .line 47
    const-string v2, "ShutdownActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): confirm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0, v5}, Lcom/android/server/ShutdownActivity;->setRequestedOrientation(I)V

    .line 56
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 57
    .local v0, h:Landroid/os/Handler;
    new-instance v2, Lcom/android/server/ShutdownActivity$1;

    invoke-direct {v2, p0}, Lcom/android/server/ShutdownActivity$1;-><init>(Lcom/android/server/ShutdownActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 53
    .end local v0           #h:Landroid/os/Handler;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/ShutdownActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 71
    const-string v0, "ShutdownActivity"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
