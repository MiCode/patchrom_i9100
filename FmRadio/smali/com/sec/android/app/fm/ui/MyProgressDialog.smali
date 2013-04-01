.class public Lcom/sec/android/app/fm/ui/MyProgressDialog;
.super Landroid/app/Activity;
.source "MyProgressDialog.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/ui/MyProgressDialog;

.field public static isShowing:Z


# instance fields
.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->_instance:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->_instance:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->_instance:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->finish()V

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AF Progress bar cancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MyProgressDialog : oncreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sput-boolean v3, Lcom/sec/android/app/fm/ui/MyProgressDialog;->isShowing:Z

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sput-object p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->_instance:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    .line 28
    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->requestWindowFeature(I)Z

    .line 29
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->dialog:Landroid/app/ProgressDialog;

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->dialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/fm/ui/MyProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/MyProgressDialog$1;-><init>(Lcom/sec/android/app/fm/ui/MyProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->dialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;-><init>(Lcom/sec/android/app/fm/ui/MyProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF Progress bar started :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/fm/ui/MyProgressDialog;->isShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MyProgressDialog: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->isShowing:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->_instance:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    :cond_0
    return-void
.end method
