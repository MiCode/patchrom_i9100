.class public Lcom/android/OriginalSettings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mProviderName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p4, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    .line 43
    const v0, 0x7f04007c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
