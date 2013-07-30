.class public Lcom/android/sec_settings/accounts/AuthenticatorHelper;
.super Ljava/lang/Object;
.source "AuthenticatorHelper.java"


# instance fields
.field private mAccTypeIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mEnabledAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public containsAccountType(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 1
    .parameter "accountType"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 71
    :goto_0
    return-object v3

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 61
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 71
    goto :goto_0

    .line 65
    :catch_0
    move-exception v3

    goto :goto_1

    .line 64
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getEnabledAccountTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 84
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 92
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AuthenticatorHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 89
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "AuthenticatorHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasAccountPreferences(Ljava/lang/String;)Z
    .locals 2
    .parameter "accountType"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 130
    .local v0, desc:Landroid/accounts/AuthenticatorDescription;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 134
    .end local v0           #desc:Landroid/accounts/AuthenticatorDescription;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 6
    .parameter "context"
    .parameter "accounts"

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p2

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v4, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 112
    move-object v1, p2

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 113
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    return-void
.end method

.method public updateAuthDescriptions(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 100
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/sec_settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method
