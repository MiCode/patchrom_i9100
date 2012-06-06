.class public Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleAccount"
.end annotation


# instance fields
.field private authContext:Landroid/content/Context;

.field private mGoogleAdd:Landroid/widget/ImageView;

.field private mGoogleDescription:Landroid/accounts/AuthenticatorDescription;

.field private mGoogleSummary:Landroid/widget/TextView;

.field private mGoogleTitle:Landroid/widget/TextView;

.field private returnvalue_ga:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    iget v0, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->returnvalue_ga:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;)Landroid/accounts/AuthenticatorDescription;
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleDescription:Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 223
    .local v0, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 224
    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    aget-object v5, v0, v2

    iput-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleDescription:Landroid/accounts/AuthenticatorDescription;

    .line 231
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->authContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    const v5, 0x7f040007

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 237
    .local v4, view:Landroid/view/View;
    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 238
    .local v3, mGoogleIcon:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->authContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleDescription:Landroid/accounts/AuthenticatorDescription;

    iget v6, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleTitle:Landroid/widget/TextView;

    .line 240
    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleSummary:Landroid/widget/TextView;

    .line 241
    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleAdd:Landroid/widget/ImageView;

    .line 242
    iget-object v5, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleAdd:Landroid/widget/ImageView;

    const v6, 0x7f0200da

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    new-instance v5, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount$1;-><init>(Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-object v4

    .line 223
    .end local v3           #mGoogleIcon:Landroid/widget/ImageView;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RemoteControls"

    const-string v6, "No Package name for account type com.google"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 262
    .local v1, manager:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 263
    .local v0, googleAccnts:[Landroid/accounts/Account;
    array-length v2, v0

    iput v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->returnvalue_ga:I

    .line 264
    iget v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->returnvalue_ga:I

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleTitle:Landroid/widget/TextView;

    aget-object v3, v0, v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->authContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleDescription:Landroid/accounts/AuthenticatorDescription;

    iget v4, v4, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleAdd:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleTitle:Landroid/widget/TextView;

    const v3, 0x7f0b0606

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleSummary:Landroid/widget/TextView;

    const v3, 0x7f0b0720

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;->mGoogleAdd:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
