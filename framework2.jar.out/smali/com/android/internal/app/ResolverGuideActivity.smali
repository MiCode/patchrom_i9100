.class public Lcom/android/internal/app/ResolverGuideActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverGuideActivity.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverGuideActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, originalIntent:Landroid/content/Intent;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    sget-boolean v2, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMyIntent() : originalIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_2
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 42
    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x800001

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    sget-boolean v2, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMyIntent() : myIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onButtonClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 100
    sget-boolean v2, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onButtonClick() v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 102
    .local v0, id:I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->dismiss()V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    .line 50
    const v1, 0x103031e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverGuideActivity;->setTheme(I)V

    .line 54
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-boolean v1, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ResolverGuideActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverGuideActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 57
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104075e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 61
    new-instance v1, Lcom/android/internal/app/ResolverGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverGuideActivity$1;-><init>(Lcom/android/internal/app/ResolverGuideActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->setupAlert()V

    .line 74
    return-void

    .line 52
    .end local v0           #ap:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_1
    const v1, 0x103031d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverGuideActivity;->setTheme(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 79
    sget-boolean v0, Lcom/android/internal/app/ResolverGuideActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ResolverGuideActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->finish()V

    .line 97
    :cond_0
    return-void
.end method
