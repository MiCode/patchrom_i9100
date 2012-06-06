.class public final Lcom/android/OriginalSettings/CredentialStorage;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/CredentialStorage$1;,
        Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;,
        Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;
    }
.end annotation


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 91
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I

    .line 348
    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/CredentialStorage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/CredentialStorage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 179
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 180
    .local v0, quality:I
    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 313
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Lcom/android/OriginalSettings/BaseActivity;)V

    const/4 v3, 0x1

    const v4, 0x7f0b03d9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0b03da

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 317
    .local v0, launched:Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 139
    :pswitch_1
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->installIfAvailable()V

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 7

    .prologue
    .line 187
    iget-object v4, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 189
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 190
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 192
    .local v3, value:[B
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    const-string v4, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:[B
    :cond_1
    :goto_0
    return-void

    .line 197
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/CredentialStorage;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 327
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 328
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 329
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 340
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    new-instance v2, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
