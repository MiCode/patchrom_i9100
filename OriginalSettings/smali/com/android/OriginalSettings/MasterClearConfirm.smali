.class public Lcom/android/OriginalSettings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/OriginalSettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/MasterClearConfirm$1;-><init>(Lcom/android/OriginalSettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    const v0, 0x7f040057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    :cond_0
    return-void
.end method
