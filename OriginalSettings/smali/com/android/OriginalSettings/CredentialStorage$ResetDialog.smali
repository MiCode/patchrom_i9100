.class Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;
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
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 3
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b05bb

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

    .line 217
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 222
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    .line 227
    iput-boolean v3, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 228
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method
