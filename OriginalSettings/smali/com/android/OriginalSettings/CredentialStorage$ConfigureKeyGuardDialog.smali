.class Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 3
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b05c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 292
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 293
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 296
    iget-boolean v1, p0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 305
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method
