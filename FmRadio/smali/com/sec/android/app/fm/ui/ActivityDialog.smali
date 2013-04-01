.class public Lcom/sec/android/app/fm/ui/ActivityDialog;
.super Landroid/app/Activity;
.source "ActivityDialog.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/ActivityDialog;->requestWindowFeature(I)Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/ActivityDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog;->message:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/ActivityDialog;->showDialog(I)V

    .line 38
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/ActivityDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0020

    new-instance v2, Lcom/sec/android/app/fm/ui/ActivityDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/ui/ActivityDialog$2;-><init>(Lcom/sec/android/app/fm/ui/ActivityDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/ui/ActivityDialog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/ActivityDialog$1;-><init>(Lcom/sec/android/app/fm/ui/ActivityDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog;->mDialog:Landroid/app/AlertDialog;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/fm/ui/ActivityDialog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/ActivityDialog$3;-><init>(Lcom/sec/android/app/fm/ui/ActivityDialog;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method
