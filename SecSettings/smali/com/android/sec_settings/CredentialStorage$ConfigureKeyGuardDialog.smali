.class Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/android/sec_settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/CredentialStorage;)V
    .locals 3
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/sec_settings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090750

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

    .line 357
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 358
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/CredentialStorage;Lcom/android/sec_settings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/sec_settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 362
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 363
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 366
    iget-boolean v1, p0, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/sec_settings/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/sec_settings/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 375
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/sec_settings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/sec_settings/CredentialStorage;->finish()V

    goto :goto_0
.end method
