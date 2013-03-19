.class public Lcom/android/settings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mIsSignedIn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"
    .parameter "isSignedIn"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 51
    iput-boolean p5, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsSignedIn:Z

    .line 52
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 55
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    const v1, 0x7f0b0010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, loginIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 64
    iget-boolean v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsSignedIn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 65
    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
