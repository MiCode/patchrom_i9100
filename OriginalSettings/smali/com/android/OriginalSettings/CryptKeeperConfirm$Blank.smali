.class public Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f040026

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;->finish()V

    .line 55
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 56
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x177

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 67
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/OriginalSettings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
