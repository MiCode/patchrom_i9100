.class public Lcom/android/settings/CryptDecryptConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptDecryptConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptConfirm;
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
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f04002a

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptDecryptConfirm$Blank;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptConfirm$Blank;->finish()V

    .line 50
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptDecryptConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 51
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x777

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/CryptDecryptConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/CryptDecryptConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptDecryptConfirm$Blank$1;-><init>(Lcom/android/settings/CryptDecryptConfirm$Blank;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method
