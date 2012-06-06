.class public Lcom/android/OriginalSettings/OwnerInfoSettings;
.super Landroid/app/Fragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 46
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, info:Ljava/lang/String;
    const-string v3, "lock_screen_owner_info_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f08010b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    .line 50
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f08010c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 51
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v6, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 53
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 54
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/OriginalSettings/OwnerInfoSettings$1;

    invoke-direct {v4, p0, v2}, Lcom/android/OriginalSettings/OwnerInfoSettings$1;-><init>(Lcom/android/OriginalSettings/OwnerInfoSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void

    :cond_0
    move v3, v5

    .line 52
    goto :goto_0

    :cond_1
    move v4, v5

    .line 53
    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 39
    const v0, 0x7f04005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->saveToDb()V

    .line 67
    return-void
.end method

.method saveToDb()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    .local v1, res:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, info:Ljava/lang/String;
    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    return-void
.end method
