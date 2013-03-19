.class public Lcom/android/settings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 47
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 55
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, actionSwitch:Landroid/widget/Switch;
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 62
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 66
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 67
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 68
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 73
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f090211

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 77
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5, v0}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 82
    const v4, 0x7f0400dc

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 84
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snotebook"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, i:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 86
    const v4, 0x7f0b0275

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090217

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 89
    :cond_0
    const v4, 0x7f0b0276

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 90
    .local v2, imgView:Landroid/widget/ImageView;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    const/high16 v4, 0x7f05

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 94
    .local v0, frameAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 96
    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 113
    return-void
.end method
