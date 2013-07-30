.class public Lcom/android/sec_settings/ContextualPageHelp;
.super Landroid/app/Fragment;
.source "ContextualPageHelp.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private launchbtnplay:Landroid/widget/ImageView;

.field private launchimg:Landroid/widget/ImageView;

.field private mAni1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni2:Landroid/graphics/drawable/AnimationDrawable;

.field private recommendbtnplay:Landroid/widget/ImageView;

.field private recommendimg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 30
    const-string v0, "ContextualPageHelp"

    iput-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/ContextualPageHelp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/sec_settings/ContextualPageHelp;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/sec_settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/sec_settings/ContextualPageHelp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/ContextualPageHelp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/sec_settings/ContextualPageHelp;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/sec_settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/sec_settings/ContextualPageHelp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/sec_settings/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090dc2

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/ContextualPageHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090dc3

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/ContextualPageHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090dc4

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/ContextualPageHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;

    const v2, 0x7f02023e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/sec_settings/ContextualPageHelp$1;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/ContextualPageHelp$1;-><init>(Lcom/android/sec_settings/ContextualPageHelp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;

    .line 69
    iget-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;

    const v2, 0x7f0202fc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v1, p0, Lcom/android/sec_settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/sec_settings/ContextualPageHelp$2;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/ContextualPageHelp$2;-><init>(Lcom/android/sec_settings/ContextualPageHelp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v0
.end method
